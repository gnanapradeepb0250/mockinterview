<?php
ob_start(); // Start output buffering to prevent unwanted output

session_start();
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *"); // Adjust for security

error_log("Starting profile.php"); // Debugging log

// Check if user is logged in
if (!isset($_SESSION['user_id']) || !is_numeric($_SESSION['user_id'])) {
    error_log("User not logged in");
    ob_end_clean(); // Clear buffer
    echo json_encode(["success" => false, "error" => "User not logged in"]);
    exit;
}

// Database Connection
$conn = new mysqli("localhost", "root", "1234", "mock_interview");

if ($conn->connect_error) {
    error_log("Database error: " . $conn->connect_error);
    ob_end_clean();
    echo json_encode(["success" => false, "error" => "Database connection failed"]);
    exit;
}

// Get user profile
$user_id = (int)$_SESSION['user_id'];
$action = filter_input(INPUT_GET, 'action', FILTER_SANITIZE_STRING);

if ($action === 'get_profile') {
    $stmt = $conn->prepare("SELECT first_name, last_name, email, mobile, location, created_at FROM users WHERE id = ?");
    
    if (!$stmt) {
        error_log("SQL Error: " . $conn->error);
        ob_end_clean();
        echo json_encode(["success" => false, "error" => "Database query failed"]);
        exit;
    }

    $stmt->bind_param("i", $user_id);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        ob_end_clean();
        echo json_encode(["success" => true, "user" => $user]);
    } else {
        ob_end_clean();
        echo json_encode(["success" => false, "error" => "User not found"]);
    }

    $stmt->close();
}

$conn->close();
ob_end_flush();
?>
