<?php
session_start();
include('db.php');

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    echo json_encode(['error' => 'You must log in first.']);
    exit;
}

$user_id = $_SESSION['user_id'];

// Fetch user answers along with skill name
$sql = "SELECT question_id, user_answer, skill FROM user_answers WHERE user_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();

$answers = [];

while ($row = $result->fetch_assoc()) {
    $question_id = $row['question_id'];
    $skill = strtolower($row['skill']); 

    // Ensure skill name is valid
    $skill_table = "{$skill}_questions";

    // Prepare and execute query for fetching question & correct answer
    $sql2 = "SELECT question, answer FROM `$skill_table` WHERE id = ?";
    $stmt2 = $conn->prepare($sql2);

    if ($stmt2) {
        $stmt2->bind_param("i", $question_id);
        $stmt2->execute();
        $result2 = $stmt2->get_result();
        
        if ($row2 = $result2->fetch_assoc()) {
            $answers[] = [
                'question' => $row2['question'],
                'user_answer' => $row['user_answer'],
                'correct_answer' => $row2['answer']
            ];
        }
        $stmt2->close();
    }
}

$stmt->close();
$conn->close();

// Return JSON response
header('Content-Type: application/json');
echo json_encode($answers);
?>
