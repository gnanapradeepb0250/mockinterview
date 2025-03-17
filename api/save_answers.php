<?php
session_start();
header("Content-Type: application/json");

$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "mock_interview";

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    echo json_encode(["success" => false, "message" => "User not logged in."]);
    exit;
}

$user_id = $_SESSION['user_id'];

// Connect to database
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    echo json_encode(["success" => false, "message" => "Database connection failed."]);
    exit;
}

// Insert answers into user_answers table
$success = true;
$question_ids = $_POST['question_id'];
$skills = $_POST['skill'];
$user_answers = $_POST['user_answer'];

for ($i = 0; $i < count($question_ids); $i++) {
    $question_id = $conn->real_escape_string($question_ids[$i]);
    $skill = $conn->real_escape_string($skills[$i]);
    $user_answer = $conn->real_escape_string($user_answers[$i]);

    $query = "INSERT INTO user_answers (user_id, question_id, skill, user_answer) 
              VALUES ('$user_id', '$question_id', '$skill', '$user_answer')";
    
    if (!$conn->query($query)) {
        $success = false;
    }
}

$conn->close();

if ($success) {
    // Trigger Python evaluation script
    $pythonPath = "C:\\xampp\\htdocs\\mockinterview\\evaluate.py";  // Update path if needed
    $command = "python \"$pythonPath\" $user_id";
    $output = shell_exec($command);

    echo json_encode(["success" => true, "message" => "Answers submitted and evaluated successfully!", "output" => $output]);
} else {
    echo json_encode(["success" => false, "message" => "Failed to save answers."]);
}
?>
