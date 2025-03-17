<?php
// Start the session at the very top of the file
session_start();

// If session isn't set, create a temporary user ID
if (!isset($_SESSION['user_id'])) {
    $_SESSION['user_id'] = 'guest_' . md5($_SERVER['REMOTE_ADDR'] . time()); // Use IP + timestamp as a unique ID
}

$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "mock_interview";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die('<p class="text-danger">Connection failed: ' . $conn->connect_error . '</p>');
}

$language = $_GET['language'] ?? 'c';
$table = strtolower($language) . '_questions';

// Fetch all questions for the selected language
$questionQuery = "SELECT id, question FROM $table";
$questionResult = $conn->query($questionQuery);
$questions = [];
while ($row = $questionResult->fetch_assoc()) {
    $questions[$row['id']] = $row['question'];
}

// Fetch all submissions for the current user and selected language
$user_id = $_SESSION['user_id'];
$submissionQuery = "SELECT question_id, user_code, user_output FROM code_submissions WHERE user_id = ? AND language = ?";
$stmt = $conn->prepare($submissionQuery);
$stmt->bind_param("ss", $user_id, $language);
$stmt->execute();
$submissionResult = $stmt->get_result();
$submissions = [];
while ($row = $submissionResult->fetch_assoc()) {
    $submissions[$row['question_id']] = $row;
}

$stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Code Answers - Code Ace</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            min-height: 100vh;
            padding: 20px;
            font-family: Arial, sans-serif;
        }
        .answers-container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 1rem 2rem; /* Reduced padding for smaller screens */
            max-width: 1200px;
            margin: 0 auto;
            transition: padding 0.3s ease; /* Smooth transition for padding changes */
        }
        .table-responsive {
            margin-top: 1rem;
        }
        .table {
            font-size: 1rem; /* Default font size for readability */
        }
        .table th, .table td {
            white-space: nowrap; /* Prevent text wrapping in headers and cells */
            overflow: hidden;
            text-overflow: ellipsis; /* Show ellipsis for overflowed text */
            max-width: 200px; /* Limit width for better responsiveness */
        }
        .btn-back {
            margin-bottom: 1rem;
        }
        /* Responsive adjustments */
        @media (max-width: 992px) { /* Medium screens (tablets) */
            .answers-container {
                padding: 1rem; /* Reduced padding for tablets */
                max-width: 90%; /* Slightly narrower for better fit */
            }
            .table {
                font-size: 0.9rem; /* Slightly smaller font for medium screens */
            }
            .table th, .table td {
                max-width: 150px; /* Narrower cells for tablets */
            }
        }
        @media (max-width: 768px) { /* Small screens (phones) */
            .answers-container {
                padding: 0.5rem; /* Minimal padding for phones */
                max-width: 100%; /* Full width on phones */
                margin: 0 10px; /* Small margin on sides */
            }
            .table {
                font-size: 0.8rem; /* Smaller font for phones */
            }
            .table th, .table td {
                max-width: 120px; /* Even narrower cells for phones */
            }
            .table-responsive {
                margin-top: 0.5rem; /* Reduced margin for phones */
            }
            .btn-back {
                margin-bottom: 0.5rem; /* Reduced margin for phones */
                width: 100%; /* Full width button on phones */
            }
            /* Stack table cells vertically on small screens */
            .table-responsive table {
                display: block;
                overflow-x: auto;
            }
            .table-responsive th,
            .table-responsive td {
                display: block;
                text-align: left;
                padding: 0.5rem;
            }
            .table-responsive th {
                background-color: #f8f9fa; /* Light background for headers */
                font-weight: bold;
            }
            .table-responsive tr {
                display: flex;
                flex-direction: column;
                margin-bottom: 0.5rem;
                border-bottom: 1px solid #dee2e6; /* Separator line */
            }
        }
        @media (max-width: 576px) { /* Extra small screens (very small phones) */
            .answers-container {
                padding: 0.3rem; /* Minimal padding for very small screens */
                margin: 0 5px; /* Smaller margin on sides */
            }
            .table {
                font-size: 0.7rem; /* Even smaller font for very small screens */
            }
            .table th, .table td {
                max-width: 100px; /* Narrowest cells for very small phones */
            }
        }
    </style>
</head>
<body>
    <?php include("navbar.php")?>
    <div class="answers-container">
        <h3 class="mb-3">Code Answers </h3>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Question</th>
                        <th>Code</th>
                        <th>Output</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    foreach ($questions as $id => $question) {
                        $submission = $submissions[$id] ?? null;
                        $code = $submission ? htmlspecialchars($submission['user_code']) : 'No submission';
                        $output = $submission ? htmlspecialchars($submission['user_output'] ?? 'No output') : 'No output';
                        echo "<tr><td>{$question}</td><td>{$code}</td><td>{$output}</td></tr>";
                    }
                    ?>
                </tbody>
            </table>
            <a href="compile.php" class="btn btn-primary btn-back">Back to Compiler</a>
        </div>

        <?php if (empty($questions)) { ?>
            <p class="text-danger">No questions found for the selected language.</p>
        <?php } ?>
    </div>
</body>
</html>