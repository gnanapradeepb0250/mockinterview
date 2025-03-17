<?php
if (!isset($_POST['user_id'])) {
    echo json_encode(["success" => false, "message" => "User ID is missing."]);
    exit;
}

$user_id = intval($_POST['user_id']);
$command = "python3 ../evaluate.py $user_id 2>&1"; // Use `python3` if needed
$output = shell_exec($command);

echo json_encode(["success" => true, "message" => "Evaluation complete.", "output" => $output]);
?>
