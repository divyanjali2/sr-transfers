<?php
include_once 'db_connect.php';

$uploadDir = __DIR__ . '/../../invoices/'; 
if (!is_dir($uploadDir)) mkdir($uploadDir, 0777, true);

    if (isset($_FILES['invoice']) && isset($_POST['booking_number'])) {
        $bookingNumber = $_POST['booking_number'];
        $fileName = basename($_FILES['invoice']['name']);
        $targetFile = $uploadDir . $fileName;

        if (move_uploaded_file($_FILES['invoice']['tmp_name'], $targetFile)) {

            $scheme = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https' : 'http';
            $host = $_SERVER['HTTP_HOST'];
            $projectBase = rtrim(dirname(dirname(dirname($_SERVER['SCRIPT_NAME']))), '/\\');

            $baseUrl = $scheme . '://' . $host . $projectBase;
            $fullPath = $baseUrl . '/invoices/' . $fileName;

            $stmt = $conn->prepare("UPDATE bookings SET invoice_file = :file WHERE booking_number = :num");
            $stmt->execute([
                ':file' => $fullPath,
                ':num' => $bookingNumber
            ]);

            echo json_encode(['success' => true, 'message' => 'Invoice saved successfully.']);
        } else {
            echo json_encode(['success' => false, 'message' => 'Failed to upload file.']);
        }
    }
?>