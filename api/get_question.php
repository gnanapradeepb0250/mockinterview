<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

$conn = new mysqli('localhost', 'root', '', 'mock_interview');
if ($conn->connect_error) {
    die(json_encode(['error' => 'Database connection failed']));
}

$questionId = $_GET['question_id'];
$stmt = $conn->prepare('SELECT question, program_language FROM questions WHERE id = ?');
$stmt->bind_param('i', $questionId);
$stmt->execute();
$result = $stmt->get_result()->fetch_assoc();

echo json_encode($result ?: ['error' => 'Question not found']);
$stmt->close();
$conn->close();
?>