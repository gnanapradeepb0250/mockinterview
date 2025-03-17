<?php
session_start();
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

if (isset($_SESSION['user_id'])) {
    echo json_encode(['user_id' => $_SESSION['user_id']]);
} else {
    echo json_encode(['error' => 'Not logged in']);
}
?>