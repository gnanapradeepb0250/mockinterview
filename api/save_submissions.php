<?php
header('Content-Type: application/json');

// Temporary user ID (e.g., based on session or IP for unauthenticated users)
session_start();
if (!isset($_SESSION['user_id'])) {
    $_SESSION['user_id'] = 'guest_' . md5($_SERVER['REMOTE_ADDR'] . time()); // Use IP + timestamp as a unique ID
}

$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "mock_interview";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    echo json_encode(['error' => 'Connection failed: ' . $conn->connect_error]);
    exit;
}

// Get input from $_POST (form data)
$code = $_POST['code'] ?? '';
$language = $_POST['language'] ?? 'c';
$questionId = $_POST['question_id'] ?? 1;
$output = $_POST['output'] ?? ''; // Output from evaluate_code.php

$query = "INSERT INTO user_submissions (user_id, language, question_id, user_code, user_output) VALUES (?, ?, ?, ?, ?)";
$stmt = $conn->prepare($query);

if ($stmt) {
    $user_id = $_SESSION['user_id'];
    $stmt->bind_param("sissi", $user_id, $language, $questionId, $code, $output);
    if ($stmt->execute()) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to save submission: ' . $conn->error]);
    }
    $stmt->close();
} else {
    echo json_encode(['success' => false, 'message' => 'Failed to prepare statement: ' . $conn->error]);
}

$conn->close();
?>