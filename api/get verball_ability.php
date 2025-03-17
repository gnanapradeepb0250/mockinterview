<?php
header("Content-Type: application/json");

// Database configuration
$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "mock_interview"; // Change to your actual database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die(json_encode(["success" => false, "message" => "Database connection failed."]));
}

// Fetch 10 random questions
$sql = "SELECT id, question, answer FROM verbal_ability_questions ORDER BY RAND() LIMIT 10";
$result = $conn->query($sql);

$questions = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $questions[] = [
            "id" => $row["id"],
            "question" => $row["question"],
            "answer" => $row["answer"]
        ];
    }
}

// Return JSON response
echo json_encode(["success" => true, "questions" => $questions]);

$conn->close();
?>
