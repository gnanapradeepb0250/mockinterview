<?php
// fetch_hr_questions.php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *'); // Allow cross-origin requests for local testing (restrict in production)

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mock_interview";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    $response = [
        "success" => false,
        "message" => "Connection failed: " . $conn->connect_error,
        "questions" => [],
        "total" => 0
    ];
    echo json_encode($response);
    exit;
}

// Get pagination parameters with defaults
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$limit = isset($_GET['limit']) ? (int)$_GET['limit'] : 5; // Default to 5 questions per page
$offset = ($page - 1) * $limit;

// Sanitize inputs to prevent SQL injection (already handled by prepared statements)
if ($page < 1 || $limit < 1) {
    $response = [
        "success" => false,
        "message" => "Invalid pagination parameters",
        "questions" => [],
        "total" => 0
    ];
    echo json_encode($response);
    exit;
}

// Fetch total count of questions for pagination
$totalStmt = $conn->prepare("SELECT COUNT(*) as total FROM hr_round_questions");
$totalStmt->execute();
$totalResult = $totalStmt->get_result();
$total = $totalResult->fetch_assoc()['total'];
$totalStmt->close();

if ($total === 0) {
    $response = [
        "success" => true,
        "message" => "No questions found",
        "questions" => [],
        "total" => 0
    ];
    echo json_encode($response);
    exit;
}

// Fetch paginated HR questions with prepared statement for security
$sql = "SELECT id, question, answer FROM hr_round_questions LIMIT ? OFFSET ?";
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

// Return JSON response
echo json_encode($response, JSON_PRETTY_PRINT);

$stmt->close();
$conn->close();
?>