<?php  return '// Only run on POST
if ($_SERVER[\'REQUEST_METHOD\'] !== \'POST\') {
    return \'\';
}

header(\'Content-Type: application/json; charset=utf-8\');

try {
    // ✅ include your DB connection
    include_once MODX_BASE_PATH . \'assets/includes/db_connect.php\';

    // Validate inputs
    $name = trim($_POST[\'name\'] ?? \'\');
    $email = trim($_POST[\'email\'] ?? \'\');
    $phone = trim($_POST[\'phone\'] ?? \'\');
    $subject = trim($_POST[\'subject\'] ?? \'\');
    $message = trim($_POST[\'message\'] ?? \'\');

    if ($name === \'\' || $email === \'\' || $phone === \'\' || $subject === \'\' || $message === \'\') {
        echo json_encode([
            \'ok\' => false,
            \'error\' => \'All fields are required.\'
        ]);
        exit;
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo json_encode([
            \'ok\' => false,
            \'error\' => \'Invalid email address.\'
        ]);
        exit;
    }

    // ✅ Insert into DB
    $stmt = $conn->prepare("
        INSERT INTO contact_messages
        (name, email, phone, subject, message)
        VALUES
        (:name, :email, :phone, :subject, :message)
    ");

    $stmt->execute([
        \':name\' => $name,
        \':email\' => $email,
        \':phone\' => $phone,
        \':subject\' => $subject,
        \':message\' => $message
    ]);

    echo json_encode([
        \'ok\' => true,
        \'message\' => \'Message saved successfully.\'
    ]);
    exit;

} catch (Exception $e) {

    error_log(\'Contact form error: \' . $e->getMessage());

    echo json_encode([
        \'ok\' => false,
        \'error\' => \'Database error occurred.\'
    ]);
    exit;
}
return;
';