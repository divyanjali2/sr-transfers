<?php

error_reporting(E_ALL);
ini_set('display_errors', 0);
ini_set('log_errors', 1);
ini_set('error_log', __DIR__ . '/error.log');

header('Content-Type: application/json');
ob_start();

include_once __DIR__ . '/../../config.php';
include_once __DIR__ . '/../../classes/EmailSender.php';
include_once __DIR__ . '/db_connect.php';

try {
    $data = json_decode(file_get_contents("php://input"), true);
    if (!$data) {
        throw new Exception("Invalid input: JSON data missing or malformed.");
    }

    $addonsArray = array_map(fn($a) => $a['addon_name'].' x'.$a['quantity'].' ($'.$a['total'].')', $data['addons'] ?? []);
    $addonsString = implode(", ", $addonsArray);

    $stmt = $conn->prepare("
        INSERT INTO bookings 
        (
            vehicle_id, vehicle_category, customer_name, email, phone,
            flight_number, number_of_passengers, number_of_luggage,
            pickup_location, dropoff_location, return_pickup_location, return_dropoff_location,
            travel_datetime, return_datetime,
            price_per_km, first_trip_distance, first_trip_charge,
            second_trip_distance, second_trip_charge, total_price, addons
        )
        VALUES 
        (
            :vehicle_id, :vehicle_category, :customer_name, :email, :phone,
            :flight_number, :number_of_passengers, :number_of_luggage,
            :pickup, :dropoff, :return_pickup, :return_dropoff,
            :travel_datetime, :return_datetime,
            :price_per_km, :first_trip_distance, :first_trip_charge,
            :second_trip_distance, :second_trip_charge, :total_price, :addons
        )
    ");

    $stmt->execute([
        ':vehicle_id'       => $data['vehicle_id'] ?? null,
        ':vehicle_category' => $data['vehicle_category'] ?? null,
        ':customer_name'    => $data['customer_name'] ?? null,
        ':email'            => $data['email'] ?? null,
        ':phone'            => $data['phone'] ?? null,
        ':flight_number'    => $data['flight_number'] ?? null,
        ':number_of_passengers' => $data['number_of_passengers'] ?? null,
        ':number_of_luggage'    => $data['number_of_luggage'] ?? null,
        ':pickup'           => $data['pickup_location'] ?? null,
        ':dropoff'          => $data['dropoff_location'] ?? null,
        ':return_pickup'    => $data['return_pickup_location'] ?? null,
        ':return_dropoff'   => $data['return_dropoff_location'] ?? null,
        ':travel_datetime'  => $data['travel_datetime'] ?? null,
        ':return_datetime'  => $data['return_datetime'] ?? null,  
        ':price_per_km'     => $data['price_per_km'] ?? 0,
        ':first_trip_distance' => $data['first_trip_distance'] ?? 0,
        ':first_trip_charge'       => $data['first_trip_charge'] ?? 0,
        ':second_trip_distance' => $data['second_trip_distance'] ?? 0,
        ':second_trip_charge'     => $data['second_trip_charge'] ?? 0,
        ':total_price'      => $data['total_price'] ?? 0,
        ':addons'           => $addonsString
    ]);

    $lastId = $conn->lastInsertId();
    $year = date('Y');
    $month = date('m');
    $bookingNumber = sprintf("SR/RENT-%s/%s/%04d", $year, $month, $lastId);

    $invoiceFileName = sprintf("%04d.pdf", $lastId);
    $scheme = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https' : 'http';
    $host = $_SERVER['HTTP_HOST'];

    // Adjust this if your project folder changes
    $projectBase = rtrim(dirname(dirname(dirname($_SERVER['SCRIPT_NAME']))), '/\\');

    $baseUrl = $scheme . '://' . $host . $projectBase . '/';
    $invoicePath = $baseUrl . 'invoices/' . $invoiceFileName;

    $update = $conn->prepare("
        UPDATE bookings 
        SET booking_number = :booking_number, invoice_file = :invoice_file 
        WHERE id = :id
    ");
    $update->execute([
        ':booking_number' => $bookingNumber,
        ':invoice_file' => $invoicePath,
        ':id' => $lastId
    ]);

    // SEND EMAIL NOTIFICATION
    $emailSender = new EmailSender();

    $adminEmail = "navodyadivyanjali2@gmail.com"; 

    $emailContentAdmin = "
        <h2>New Booking Received</h2>
        <p><b>Booking Number:</b> $bookingNumber</p>
        <p><b>Name:</b> {$data['customer_name']}</p>
        <p><b>Email:</b> {$data['email']}</p>
        <p><b>Phone:</b> {$data['phone']}</p>
        <p><b>Pickup:</b> {$data['pickup_location']}</p>
        <p><b>Dropoff:</b> {$data['dropoff_location']}</p>
        <p><b>Travel Date & Time:</b> {$data['travel_datetime']}</p>
        <p><b>Total Price:</b> $ {$data['total_price']}</p>
        <p>Invoice link: <a href='{$invoicePath}'>$invoicePath</a></p>
    ";

    try {
        ob_start(); 
        error_log("Sending booking notification email to admin: $adminEmail");
        $emailSender->sendEmail($adminEmail, "New Booking Received - $bookingNumber", $emailContentAdmin);

        ob_end_clean(); 
    } catch (Exception $e) {
        error_log("PHPMailer Error: " . $e->getMessage());
    }

    echo json_encode([
        'success' => true,
        'message' => 'Booking saved successfully',
        'booking_number' => $bookingNumber,
        'invoice_file' => $invoicePath
    ]);
    exit;

} catch (PDOException $e) {
    error_log("PDO Exception: " . $e->getMessage());
    echo json_encode(['success' => false, 'message' => 'Database error occurred.']);
    exit;
} catch (Exception $e) {
    error_log("General Exception: " . $e->getMessage());
    echo json_encode(['success' => false, 'message' => 'An unexpected error occurred.']);
    exit;
}