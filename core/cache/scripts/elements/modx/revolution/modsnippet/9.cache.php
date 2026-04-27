<?php  return 'include (\'config.php\');
include (\'classes/EmailSender.php\');

$errors = [];
$name = $email = $phone = $message = "";
$recaptcha_response = "";

if ($_SERVER[\'REQUEST_METHOD\'] === \'POST\' && isset($_POST[\'submit\'])) {

    $name = test_input($_POST[\'name\']);
    $email = test_input($_POST[\'email\']);
    $phone = test_input($_POST[\'phone\']);
    $message = test_input($_POST[\'message\']);
    $recaptcha_response = filter_input(INPUT_POST, \'recaptchaResponse\');

    if (!verifyRecaptcha($recaptcha_response)) {
        echo "error";
        exit;
    }

    if (empty($name) || strlen($name) < 3) $errors[\'name\'] = "Invalid name";
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) $errors[\'email\'] = "Invalid email";
    if (empty($phone)) $errors[\'phone\'] = "Invalid phone";
    if (empty($message)) $errors[\'message\'] = "Message is required";

    if (!empty($errors)) {
        echo "error";
        exit;
    }

    $emailSender = new EmailSender();

    $emailTo = \'navodyadivyanjali2@gmail.com\';
    $emailSubject = \'Contact Form Message\';
    $emailContent = "
        <table>
            <tr><td><b>Name</b></td><td> : $name</td></tr>
            <tr><td><b>Email</b></td><td> : $email</td></tr>
            <tr><td><b>Contact Number</b></td><td> : $phone</td></tr>
            <tr><td><b>Message</b></td><td> : $message</td></tr>
        </table>";

    $result = $emailSender->sendEmail($emailTo, $emailSubject, $emailContent);

    if ($result === true) {
        echo "success";
        exit;
    } else {
        echo "error";
        exit;
    }
}
return;
';