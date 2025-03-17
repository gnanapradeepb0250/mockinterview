<?php
session_start(); // Ensure session is started

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    die("Unauthorized access!");
}

$user_id = $_SESSION['user_id'];  // Get the logged-in user ID

// Set the Python and script paths
$pythonPath = 'C:\Program Files\Python311\python.exe'; // Ensure this is correct
$scriptPath = 'C:\xampp\htdocs\mockinterview\evaluate.py'; // Adjust to your actual path

// Escape arguments to prevent security issues
$userIdArg = escapeshellarg($user_id);

// Execute Python script
$command = "\"$pythonPath\" \"$scriptPath\" $userIdArg";
$output = shell_exec($command);

echo "<pre>$output</pre>"; // Show output for debugging
?>
