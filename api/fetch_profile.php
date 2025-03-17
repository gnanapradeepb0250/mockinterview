<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

header('Content-Type: application/json'); // Set JSON response header
include('db.php'); // Assumes MySQLi connection in $conn

// Security headers
header("X-Content-Type-Options: nosniff");
header("X-Frame-Options: DENY");
header("X-XSS-Protection: 1; mode=block");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Check for required fields and CSRF token if implemented
    if (!isset($_POST['email']) || !isset($_POST['password'])) {
        http_response_code(400);
        echo json_encode([
            "success" => false, 
            "message" => "Email and password are required."
        ]);
        exit;
    }

    // Sanitize and validate input
    $email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        http_response_code(400);
        echo json_encode([
            "success" => false, 
            "message" => "Invalid email format."
        ]);
        exit;
    }
    
    $password = trim($_POST['password']);
    if (empty($password)) {
        http_response_code(400);
        echo json_encode([
            "success" => false, 
            "message" => "Password cannot be empty."
        ]);
        exit;
    }

    try {
        // Prepare the SQL query with more user data for immediate use
        $sql = "SELECT id, password, first_name, last_name, email, mobile, location, profile_pic 
                FROM users 
                WHERE email = ?";
        $stmt = $conn->prepare($sql);

        if (!$stmt) {
            throw new Exception("Failed to prepare statement: " . $conn->error);
        }

        $stmt->bind_param("s", $email);
        $stmt->execute();
        $result = $stmt->get_result();
        $user = $result->fetch_assoc();

        // Verify user and password
        if ($user) {
            // Note: This assumes plain text password storage (not secure)
            // Recommended: Use password_hash() and password_verify()
            if ($password === $user['password']) {
                session_start();
                session_regenerate_id(true); // Prevent session fixation
                
                // Store minimal necessary session data
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['user_email'] = $user['email'];
                
                // Remove password from response data
                unset($user['password']);
                
                echo json_encode([
                    "success" => true,
                    "message" => "Login successful!",
                    "user" => $user
                ]);
            } else {
                http_response_code(401);
                echo json_encode([
                    "success" => false,
                    "message" => "Incorrect password."
                ]);
            }
        } else {
            http_response_code(404);
            echo json_encode([
                "success" => false,
                "message" => "Email not found."
            ]);
        }

        $stmt->close();
    } catch (Exception $e) {
        http_response_code(500);
        echo json_encode([
            "success" => false,
            "message" => "Server error occurred.",
            "error" => $e->getMessage()
        ]);
    }
} else {
    http_response_code(405);
    echo json_encode([
        "success" => false,
        "message" => "Method not allowed. Please use POST."
    ]);
}

$conn->close();