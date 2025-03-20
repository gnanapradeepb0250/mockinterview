<?php
session_start();
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *"); // Adjust as needed for security

// Database Connection
$conn = new mysqli("localhost", "root", "1234", "mock_interview");

if ($conn->connect_error) {
    echo json_encode(["success" => false, "error" => "Database connection failed: " . $conn->connect_error]);
    exit;
}

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    echo json_encode(["success" => false, "error" => "User not logged in"]);
    exit;
}

$user_id = $_SESSION['user_id'];
$action = isset($_GET['action']) ? $_GET['action'] : '';

if ($action === 'get_profile') {
    // Fetch user details including profile picture
    $stmt = $conn->prepare("
        SELECT first_name, last_name, email, mobile, location, created_at, profile_pic 
        FROM users 
        WHERE id = ?
    ");
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
} else {
    echo json_encode(["success" => false, "error" => "Invalid action"]);
}

$conn->close();
?>