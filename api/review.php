<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

header('Content-Type: application/json');
include('db.php');

session_start();

if (!isset($_SESSION['user_id'])) {
    http_response_code(401);
    echo json_encode(['success' => false, 'message' => 'Please login to submit a review']);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['success' => false, 'message' => 'Method not allowed']);
    exit;
}

$data = json_decode(file_get_contents('php://input'), true);
if (!$data || !isset($data['rating'])) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'Rating is required']);
    exit;
}

$user_id = $_SESSION['user_id'];
$rating = filter_var($data['rating'], FILTER_VALIDATE_INT, [
    'options' => ['min_range' => 1, 'max_range' => 5]
]);
$review = filter_var($data['review'] ?? '', FILTER_SANITIZE_STRING);

if ($rating === false) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'Rating must be between 1 and 5']);
    exit;
}

// Check for recent review (rate limiting)
$stmt = $conn->prepare("SELECT COUNT(*) FROM reviews WHERE user_id = ? AND created_at > DATE_SUB(NOW(), INTERVAL 24 HOUR)");
$stmt->bind_param("i", $user_id);
$stmt->execute();
$count = $stmt->get_result()->fetch_row()[0];
$stmt->close();

if ($count > 0) {
    http_response_code(429);
    echo json_encode(['success' => false, 'message' => 'You can only submit one review per day']);
    exit;
}

try {
    $stmt = $conn->prepare("INSERT INTO reviews (user_id, rating, review_text, created_at) VALUES (?, ?, ?, NOW())");
    if (!$stmt) {
        throw new Exception("Prepare failed: " . $conn->error);
    }

    $stmt->bind_param("iis", $user_id, $rating, $review);
    $success = $stmt->execute();

    echo json_encode([
        'success' => $success,
        'message' => $success ? 'Review submitted successfully' : 'Failed to submit review'
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