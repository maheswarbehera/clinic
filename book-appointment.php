<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Methods, Access-Control-Allow-Headers, Authorization, X-Requested-With');

$data = json_decode(file_get_contents("php://input"),true);

$name = $data['name'];
$email = $data['email'];
$phone = $data['phone'];
$slot = $data['slot'];
$date_picker = $data['date_picker'];
$date = date('Y/m/d', strtotime($date_picker));

include 'config.php';

$sql = "INSERT INTO book_appointment (`name`, `email`, `phone` ,`slot`,`date`) VALUES ('$name','$email','$phone','$slot','$date')";

if (mysqli_query($conn, $sql)) {
  echo json_encode(['Message' => 'Book Appointment Successfully!', 'status' => true]);
} else {
  echo json_encode(['Message' => 'Book Appointment Failed!', 'status' => false]);
}
?>