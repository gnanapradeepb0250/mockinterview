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

$user_id = $_SESSION['user_id'];
$query = "SELECT cs.language, q.question, cs.user_code, cs.user_output 
          FROM code_submissions cs 
          LEFT JOIN c_questions q ON cs.question_id = q.id AND cs.language = 'c'
          LEFT JOIN cpp_questions q ON cs.question_id = q.id AND cs.language = 'cpp'
          LEFT JOIN python_questions q ON cs.question_id = q.id AND cs.language = 'python'
          WHERE cs.user_id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("s", $user_id);
$stmt->execute();
$result = $stmt->get_result();

$submissions = [];
while ($row = $result->fetch_assoc()) {
    $submissions[] = $row;
}

$stmt->close();
$conn->close();

if (empty($submissions)) {
    echo json_encode(['error' => 'No submissions found.']);
} else {
    echo json_encode($submissions);
}
?>