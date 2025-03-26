<?php
// api/store_mcq.php
session_start();
if (!isset($_SESSION['user_id'])) {
    die(json_encode(['error' => 'User not logged in']));
}

$conn = mysqli_connect("localhost", "root", "1234", "mock_interview");

if (!$conn) {
    die(json_encode(['error' => 'Connection failed: ' . mysqli_connect_error()]));
}

$user_id = $_SESSION['user_id'];
$answers = json_decode($_POST['answers'], true);
$category = mysqli_real_escape_string($conn, $_POST['category']);
$skill = mysqli_real_escape_string($conn, $_POST['skill']);

if (empty($answers)) {
    die(json_encode(['error' => 'No answers provided']));
}

$score = 0;
$total = 0;

$question_ids = implode(',', array_map('intval', array_keys($answers)));
$correct_query = "SELECT id, correct_answer FROM skills_questions WHERE id IN ($question_ids)";
$correct_result = mysqli_query($conn, $correct_query);

if (!$correct_result) {
    die(json_encode(['error' => 'Failed to fetch correct answers: ' . mysqli_error($conn)]));
}

$correct_answers = array();
while ($row = mysqli_fetch_assoc($correct_result)) {
    $correct_answers[$row['id']] = $row['correct_answer'];
}

foreach ($answers as $question_id => $user_answer) {
    $correct = isset($correct_answers[$question_id]) ? $correct_answers[$question_id] : '';
    $question_score = ($user_answer === $correct) ? 1 : 0;
    $score += $question_score;
    $total++;

    $insert_query = "INSERT INTO user_answer (user_id, question_id, user_answer, correct_answer, score, category, skill) 
                    VALUES ('$user_id', '$question_id', '$user_answer', '$correct', '$question_score', '$category', '$skill')";
    if (!mysqli_query($conn, $insert_query)) {
        die(json_encode(['error' => 'Failed to store answer: ' . mysqli_error($conn)]));
    }
}

$response = array(
    'score' => $score,
    'total' => $total
);

echo json_encode($response);
mysqli_close($conn);
?>