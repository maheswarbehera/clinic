<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Methods, Access-Control-Allow-Headers, Authorization, X-Requested-With');

$data = json_decode(file_get_contents("php://input"),true);

$name = $data['name'];
$email = $data['email'];
$phone = $data['phone'];
$subject = $data['subject'];
$message = $data['message'];

include 'config.php';

$sql = "INSERT INTO contact_us (`name`, `email`, `phone` ,`subject` , `message`) VALUES ('$name','$email','$phone','$subject','$message')";

if (mysqli_query($conn, $sql)) {
  echo json_encode(['Message' => 'Message Send Successfully!', 'status' => true]);
} else {
  echo json_encode(['Message' => 'Message Failed Send!', 'status' => false]);
}
?>