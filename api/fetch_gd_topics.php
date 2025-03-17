<?php
header('Content-Type: application/json');
$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "mock_interview";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die(json_encode(["error" => "Database connection failed."]));
}

// Get topic from request
$topic = isset($_GET['topic']) ? $_GET['topic'] : 'Artificial Intelligence';
$topic = $conn->real_escape_string($topic);

// Fetch dialogues
$sql = "SELECT participant_name, dialogue FROM gd_topics WHERE topic = '$topic' ORDER BY id ASC";
$result = $conn->query($sql);

$dialogues = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $dialogues[] = $row;
    }
}

echo json_encode($dialogues);
$conn->close();
?>
