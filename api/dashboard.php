<?php
// api/fetch_dashboard.php
session_start();
if (!isset($_SESSION['user_id'])) {
    die(json_encode(['error' => 'User not logged in']));
}

// Include database connection
require_once "db.php";

$user_id = $_SESSION['user_id'];

// Initialize response array
$response = [
    'first_name' => 'User', // Default value
    'test_history' => []
];

// Fetch user information
$user_stmt = $conn->prepare("SELECT first_name FROM users WHERE id = ?");
if ($user_stmt) {
    $user_stmt->bind_param("i", $user_id);
    $user_stmt->execute();
    $user_result = $user_stmt->get_result();
    if ($user_result && $user_result->num_rows > 0) {
        $user = $user_result->fetch_assoc();
        $response['first_name'] = htmlspecialchars($user['first_name']);
    }
    $user_stmt->close();
} else {
    die(json_encode(['error' => 'Error fetching user data: ' . $conn->error]));
}

// Fetch test history
$test_stmt = $conn->prepare("SELECT test_date, SUM(score) AS total_score, COUNT(*) AS total_questions 
                             FROM user_answer WHERE user_id = ? 
                             GROUP BY test_date ORDER BY test_date DESC");
if ($test_stmt) {
    $test_stmt->bind_param("i", $user_id);
    $test_stmt->execute();
    $test_result = $test_stmt->get_result();
    
    while ($row = $test_result->fetch_assoc()) {
        $percentage = ($row['total_questions'] > 0) ? round(($row['total_score'] / $row['total_questions']) * 100, 2) : 0;
        $response['test_history'][] = [
            'test_date' => $row['test_date'],
            'total_score' => $row['total_score'],
            'total_questions' => $row['total_questions'],
            'percentage' => $percentage
        ];
    }
    $test_stmt->close();
} else {
    die(json_encode(['error' => 'Error fetching test history: ' . $conn->error]));
}

echo json_encode($response);

// Close database connection
$conn->close();
?>