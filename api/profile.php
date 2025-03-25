<?php
session_start();
header("Content-Type: application/json");
// Restrict CORS - adjust to your specific domain in production
header("Access-Control-Allow-Origin: http://localhost"); // Allow localhost for development

// Database Connection using environment variables (recommended approach)
try {
    $conn = new mysqli(
        $_ENV['DB_HOST'] ?? "localhost",
        $_ENV['DB_USER'] ?? "root",
        $_ENV['DB_PASS'] ?? "1234",
        $_ENV['DB_NAME'] ?? "mock_interview"
    );

    if ($conn->connect_error) {
        error_log("Database connection failed: " . $conn->connect_error);
        echo json_encode(["success" => false, "error" => "Database connection failed"]);
        exit;
    }
} catch (Exception $e) {
    error_log("Database connection error: " . $e->getMessage());
    echo json_encode(["success" => false, "error" => "Database connection failed"]);
    exit;
}

// Check if user is logged in
if (!isset($_SESSION['user_id']) || !is_numeric($_SESSION['user_id'])) {
    echo json_encode(["success" => false, "error" => "User not logged in"]);
    exit;
}

$user_id = (int)$_SESSION['user_id'];
// Sanitize and validate action parameter
$action = filter_input(INPUT_GET, 'action', FILTER_SANITIZE_STRING);
$valid_actions = ['get_profile'];

try {
    if (!in_array($action, $valid_actions)) {
        echo json_encode(["success" => false, "error" => "Invalid action"]);
        exit;
    }

    if ($action === 'get_profile') {
        // Fetch user details including profile picture
        $stmt = $conn->prepare("
            SELECT first_name, last_name, email, mobile, location, created_at, profile_pic 
            FROM users 
            WHERE id = ?
        ");
        
        if (!$stmt) {
            throw new Exception("Prepare statement failed: " . $conn->error);
        }

        $stmt->bind_param("i", $user_id);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $user = $result->fetch_assoc();
            echo json_encode([
                "success" => true,
                "user" => [
                    "first_name" => $user['first_name'],
                    "last_name" => $user['last_name'],
                    "email" => $user['email'],
                    "mobile" => $user['mobile'],
                    "location" => $user['location'],
                    "created_at" => $user['created_at'],
                    "profile_pic" => $user['profile_pic'] ? "uploads/" . $user['profile_pic'] : null
                ]
            ]);
        } else {
            echo json_encode(["success" => false, "error" => "User not found"]);
        }

        $stmt->close();
    }
} catch (Exception $e) {
    error_log("Error in profile retrieval: " . $e->getMessage());
    echo json_encode(["success" => false, "error" => "An error occurred while processing your request"]);
} finally {
    $conn->close();
}
?>