<?php
// api/fetch_solutions.php
session_start();
if (!isset($_SESSION['user_id'])) {
    die(json_encode(['error' => 'User not logged in']));
}

$conn = mysqli_connect("localhost", "root", "1234", "mock_interview");

if (!$conn) {
    die(json_encode(['error' => 'Connection failed: ' . mysqli_connect_error()]));
}

$user_id = $_SESSION['user_id'];

// Fetch the most recent test attempt for this user
$query = "SELECT ua.*, sq.question, sq.options 
          FROM user_answer ua 
          JOIN skills_questions sq ON ua.question_id = sq.id 
          WHERE ua.user_id = $user_id 
          AND ua.test_date = (
              SELECT MAX(test_date) 
              FROM user_answer
              WHERE user_id = $user_id
          )";
$result = mysqli_query($conn, $query);

if (!$result) {
    die(json_encode(['error' => 'Query failed: ' . mysqli_error($conn)]));
}

$answers = [];
$total_score = 0;
$total_questions = 0;

while ($row = mysqli_fetch_assoc($result)) {
    $options = json_decode($row['options'], true);
    $total_score += $row['score'];
    $total_questions++;
    
    $answers[] = [
        'question' => $row['question'],
        'user_answer' => $row['user_answer'],
        'correct_answer' => $row['correct_answer'],
        'options' => $options,
        'score' => $row['score'],
        'category' => $row['category'],
        'skill' => $row['skill']
    ];
}

$response = [
    'answers' => $answers,
    'total_score' => $total_score,
    'total_questions' => $total_questions
];

echo json_encode($response);
mysqli_close($conn);
?>