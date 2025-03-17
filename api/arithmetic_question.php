<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "mock_interview";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die(json_encode(["success" => false, "message" => "Connection failed: " . $conn->connect_error, "questions" => [], "total" => 0]));
}

// Get pagination parameters with defaults
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$limit = isset($_GET['limit']) ? (int)$_GET['limit'] : 5;
$offset = ($page - 1) * $limit;

// Sanitize inputs
if ($page < 1 || $limit < 1) {
    echo json_encode(["success" => false, "message" => "Invalid pagination parameters", "questions" => [], "total" => 0]);
    exit;
}

// Fetch total count of questions for pagination
$totalStmt = $conn->prepare("SELECT COUNT(*) as total FROM arithmetic_questions"); // Adjust table name if different
$totalStmt->execute();
$totalResult = $totalStmt->get_result();
$total = $totalResult->fetch_assoc()['total'];
$totalStmt->close();

if ($total === 0) {
    echo json_encode(["success" => true, "message" => "No questions found", "questions" => [], "total" => 0]);
    exit;
}

// Fetch paginated arithmetic questions with prepared statement
$sql = "SELECT question, answer FROM arithmetic_questions LIMIT ? OFFSET ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ii", $limit, $offset);
$stmt->execute();
$result = $stmt->get_result();

$questions = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $questions[] = $row;
    }
}

$response = [
    "success" => true,
    "message" => "Questions fetched successfully",
    "questions" => $questions,
    "total" => $total
];

echo json_encode($response, JSON_PRETTY_PRINT);

$stmt->close();
$conn->close();
?>