<?php
$host = 'localhost';
$user = 'root';
$password = 'password';
$database = 'UniversalPaperclips';

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM GameState WHERE id = 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo json_encode($result->fetch_assoc());
} else {
    echo json_encode(["message" => "No game data found"]);
}

$conn->close();
?>
