<?php
header('Content-Type: application/json');

// Clear any previous output to ensure clean JSON
ob_clean();

// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "mock_interview";

// Create a new MySQLi connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check if the connection failed
if ($conn->connect_error) {
    echo json_encode(['error' => 'Connection failed: ' . $conn->connect_error]);
    exit;
}

// Get query parameters with defaults
$language = $_GET['language'] ?? 'c'; // Default to 'c' if not provided

// Determine which table to query based on language
$table = strtolower($language) . '_questions';
if ($language === 'python') {
    $table = 'python_questions'; // Adjust if Python table name differs
}

// Check if the table exists
$tableCheck = $conn->query("SHOW TABLES LIKE '$table'");
if ($tableCheck->num_rows === 0) {
    echo json_encode(['error' => "Table $table not found."]);
    $conn->close();
    exit;
}

// Query the appropriate table for id and question only (no limit)
$query = "SELECT id, question FROM $table";
$result = $conn->query($query);

$questions = [];
if ($result) {
    while ($row = $result->fetch_assoc()) {
        $questions[] = $row;
    }
    $conn->close();
} else {
    $conn->close();
    echo json_encode(['error' => 'Query failed: ' . $conn->error]);
    exit;
}

if (empty($questions)) {
    echo json_encode(['error' => 'No questions found for the selected language.']);
} else {
    echo json_encode($questions);
}
?>