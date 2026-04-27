<?php

$newPassword = "123456789";
$hashed = password_hash($newPassword, PASSWORD_BCRYPT);

echo $hashed;