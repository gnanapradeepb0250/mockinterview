<?php
// Database configuration
$db_host = 'localhost';
$db_user = 'root';
$db_pass = '1234';
$db_name = 'mock_interview';

// Set headers
header('Content-Type: application/json');
header('X-Content-Type-Options: nosniff'); // Prevent MIME-type sniffing

try {
    // Create database connection
    $conn = new PDO("mysql:host=$db_host;dbname=$db_name;charset=utf8mb4", $db_user, $db_pass);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

    // Verify request method
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        http_response_code(405);
        echo json_encode([
            'success' => false,
            'message' => 'Method Not Allowed'
        ]);
        exit;
    }

    // Get user ID from POST request and validate
    $user_id = filter_input(INPUT_POST, 'user_id', FILTER_VALIDATE_INT);
    
    if ($user_id === false || $user_id === null || $user_id <= 0) {
        http_response_code(400);
        echo json_encode([
            'success' => false,
            'message' => 'Valid User ID is required'
        ]);
        exit;
    }

    // Prepare and execute query
    $stmt = $conn->prepare("SELECT first_name, last_name, email, phone, address 
                           FROM users 
                           WHERE id = :user_id 
                           LIMIT 1");
    $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
    $stmt->execute();
    
    $user = $stmt->fetch();

    if ($user) {
        // Sanitize output
        $user = array_map('htmlspecialchars', $user);
        
        echo json_encode([
            'success' => true,
            'data' => $user,
            'timestamp' => date('c')
        ], JSON_PRETTY_PRINT);
    } else {
        http_response_code(404);
        echo json_encode([
            'success' => false,
            'message' => 'User not found'
        ]);
    }

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        'success' => false,
        'message' => 'Database error occurred',
        'error' => (defined('DEBUG') && DEBUG) ? $e->getMessage() : null
    ]);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        'success' => false,
        'message' => 'An unexpected error occurred'
    ]);
} finally {
    $conn = null; // Ensure connection is closed
}
?>