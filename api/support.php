<?php
// api/support.php
error_reporting(E_ALL);
ini_set('display_errors', 1);

header('Content-Type: application/json');
include('db.php'); // Ensure this file establishes $conn (mysqli connection)

session_start();

if (!isset($_SESSION['user_id'])) {
    http_response_code(401);
    echo json_encode(['success' => false, 'message' => 'Please login to submit a support request']);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['success' => false, 'message' => 'Method not allowed']);
    exit;
}

$data = json_decode(file_get_contents('php://input'), true);
if (!$data || !isset($data['name']) || !isset($data['email']) || !isset($data['phone']) || !isset($data['message'])) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'All fields are required']);
    exit;
}

$user_id = $_SESSION['user_id'];
$name = filter_var($data['name'], FILTER_SANITIZE_STRING);
$email = filter_var($data['email'], FILTER_SANITIZE_EMAIL);
$phone = filter_var($data['phone'], FILTER_SANITIZE_STRING);
$message = filter_var($data['message'], FILTER_SANITIZE_STRING);

// Validate email
if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'Invalid email address']);
    exit;
}

// Validate phone (10 digits)
if (!preg_match('/^[0-9]{10}$/', $phone)) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'Phone number must be 10 digits']);
    exit;
}

// Rate limiting: Check for recent support request (within 24 hours)
$stmt = $conn->prepare("SELECT COUNT(*) FROM support_requests WHERE user_id = ? AND created_at > DATE_SUB(NOW(), INTERVAL 24 HOUR)");
$stmt->bind_param("i", $user_id);
$stmt->execute();
$count = $stmt->get_result()->fetch_row()[0];
$stmt->close();

if ($count > 0) {
    http_response_code(429);
    echo json_encode(['success' => false, 'message' => 'You can only submit one support request per day']);
    exit;
}

try {
    $stmt = $conn->prepare("INSERT INTO support_requests (user_id, name, email, phone, message, created_at) VALUES (?, ?, ?, ?, ?, NOW())");
    if (!$stmt) {
        throw new Exception("Prepare failed: " . $conn->error);
    }

    $stmt->bind_param("issss", $user_id, $name, $email, $phone, $message);
    $success = $stmt->execute();

    echo json_encode([
        'success' => $success,
        'message' => $success ? 'Support request submitted successfully' : 'Failed to submit support request'
    ]);

    $stmt->close();
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        'success' => false,
        'message' => 'Server error: ' . $e->getMessage()
    ]);
}

$conn->close();