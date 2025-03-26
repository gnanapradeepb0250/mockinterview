<?php
session_start();
header("Content-Type: application/json");
// Restrict CORS - adjust to your specific domain in production
header("Access-Control-Allow-Origin: *"); // Allow all origins for debugging

error_log("Starting profile.php");

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
        echo json_encode(["success" => false, "error" => "Database connection failed: " . $conn->connect_error]);
        exit;
    }
    error_log("Database connection successful");
} catch (Exception $e) {
    error_log("Database connection error: " . $e->getMessage());
    echo json_encode(["success" => false, "error" => "Database connection failed: " . $e->getMessage()]);
    exit;
}

// Check if user is logged in
if (!isset($_SESSION['user_id']) || !is_numeric($_SESSION['user_id'])) {
    error_log("User not logged in, session user_id: " . (isset($_SESSION['user_id']) ? $_SESSION['user_id'] : 'not set'));
    echo json_encode(["success" => false, "error" => "User not logged in"]);
    exit;
}

$user_id = (int)$_SESSION['user_id'];
error_log("User ID: " . $user_id);

// Sanitize and validate action parameter
$action = filter_input(INPUT_GET, 'action', FILTER_SANITIZE_STRING);
$valid_actions = ['get_profile'];

try {
    if (!in_array($action, $valid_actions)) {
        error_log("Invalid action: " . $action);
        echo json_encode(["success" => false, "error" => "Invalid action"]);
        exit;
    }

    if ($action === 'get_profile') {
        error_log("Fetching profile for user ID: " . $user_id);
        // Fetch user details without profile picture
        $stmt = $conn->prepare("
            SELECT first_name, last_name, email, mobile, location, created_at 
            FROM users 
            WHERE id = ?
        ");
        
        if (!$stmt) {
            error_log("Prepare statement failed: " . $conn->error);
            throw new Exception("Prepare statement failed: " . $conn->error);
        }

        $stmt->bind_param("i", $user_id);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $user = $result->fetch_assoc();
            error_log("User found: " . json_encode($user));
            echo json_encode([
                "success" => true,
                "user" => [
                    "first_name" => $user['first_name'] ?? 'N/A',
                    "last_name" => $user['last_name'] ?? 'N/A',
                    "email" => $user['email'] ?? 'N/A',
                    "mobile" => $user['mobile'] ?? 'N/A',
                    "location" => $user['location'] ?? 'N/A',
                    "created_at" => $user['created_at'] ?? 'N/A'
                ]
            ]);
        } else {
            error_log("User not found for ID: " . $user_id);
            echo json_encode(["success" => false, "error" => "User not found"]);
        }

        $stmt->close();
    }
} catch (Exception $e) {
    error_log("Error in profile retrieval: " . $e->getMessage());
    echo json_encode(["success" => false, "error" => "An error occurred while processing your request: " . $e->getMessage()]);
} finally {
    $conn->close();
}
?>