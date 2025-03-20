<?php
// Start error logging (optional, remove in production if not needed)
ini_set('display_errors', 0);
ini_set('log_errors', 1);
ini_set('error_log', 'php_errors.log');

// Check database configuration file
if (!file_exists('db.php')) {
    http_response_code(500);
    die(json_encode(['error' => 'Database configuration not found']));
}

try {
    include 'db.php';
    if (!$conn) {
        throw new Exception('Database connection failed');
    }

    // Allowed skills and their corresponding table names
    $allowedSkills = [
        // Frontend
        "html" => "html_questions", 
        "css" => "css_questions", 
        "javascript" => "javascript_questions",
        "react" => "react_questions",
        "vue" => "vue_questions",

        // Backend
        "node.js" => "node_questions",
        "java" => "java_questions",
        "python" => "python_questions",
        "spring boot" => "springboot_questions",
        "django" => "django_questions",

        // Fullstack
        "mongodb" => "mongodb_questions",
        "express.js" => "express_questions",

        // DevOps / Cloud
        "aws" => "aws_questions",
        "docker" => "docker_questions",
        "kubernetes" => "kubernetes_questions",
        "terraform" => "terraform_questions",

        // QA / Automation Testing
        "selenium" => "selenium_questions",
        "junit" => "junit_questions",
        "cypress" => "cypress_questions",
        "appium" => "appium_questions",

        // Data Science / AI
        "tensorflow" => "tensorflow_questions",
        "pytorch" => "pytorch_questions",
        "scikit-learn" => "scikit_questions",

        // Data Analyst
        "sql" => "sql_questions",
        "power bi" => "powerbi_questions",
        "tableau" => "tableau_questions",
        "excel" => "excel_questions",

        // Cybersecurity
        "penetration testing" => "pentest_questions",
        "network security" => "networksecurity_questions",
        "ethical hacking" => "hacking_questions",
        "cryptography" => "cryptography_questions",

        // Machine Learning / AI
        "deep learning" => "deeplearning_questions",
        "nlp" => "nlp_questions",
        "computer vision" => "cv_questions",
        "reinforcement learning" => "reinforcement_questions",

        // Blockchain Development
        "ethereum" => "ethereum_questions",
        "smart contracts" => "smartcontracts_questions",
        "solidity" => "solidity_questions",
        "hyperledger" => "hyperledger_questions",

        // Game Development
        "unity" => "unity_questions",
        "unreal engine" => "unreal_questions",
        "c#" => "csharp_questions",
        "game physics" => "gamephysics_questions",

        // Mobile App Development
        "flutter" => "flutter_questions",
        "react native" => "reactnative_questions",
        "swift" => "swift_questions",
        "kotlin" => "kotlin_questions",

        // Embedded Systems / IoT
        "arduino" => "arduino_questions",
        "raspberry pi" => "raspberrypi_questions",
        "embedded c" => "embeddedc_questions",
        "iot protocols" => "iotprotocols_questions",

        // Database Administration
        "mysql" => "mysql_questions",
        "postgresql" => "postgresql_questions",
        "oracle db" => "oracledb_questions",

        // Networking / System Administration
        "linux" => "linux_questions",
        "windows server" => "windowsserver_questions",
        "networking" => "networking_questions",
        "cloud security" => "cloudsecurity_questions",

        // Software Testing & QA
        "unit testing" => "unittesting_questions",
        "integration testing" => "integrationtesting_questions",
        "manual testing" => "manualtesting_questions",
        "performance testing" => "performancetesting_questions"
    ];

    // Validate skills parameter
    if (!isset($_GET['skills']) || !is_string($_GET['skills']) || empty(trim($_GET['skills']))) {
        http_response_code(400);
        echo json_encode(['error' => 'Invalid skills parameter']);
        exit;
    }

    // Process skills input with maximum limit
    $maxSkills = 10; // Configurable limit
    $skillsArray = array_filter(array_map('strtolower', array_map('trim', explode(',', $_GET['skills']))));
    
    if (count($skillsArray) > $maxSkills) {
        http_response_code(400);
        echo json_encode(['error' => "Maximum $maxSkills skills allowed"]);
        exit;
    }

    if (empty($skillsArray)) {
        http_response_code(400);
        echo json_encode(['error' => 'No valid skills provided']);
        exit;
    }

    // Filter valid skills
    $filteredSkills = array_intersect_key($allowedSkills, array_flip($skillsArray));
    if (empty($filteredSkills)) {
        http_response_code(400);
        echo json_encode(['error' => 'No matching skills found']);
        exit;
    }

    // Build query
    $queries = [];
    $params = [];
    $types = '';

    foreach ($filteredSkills as $skill => $table) {
        // Verify table exists (optional, might impact performance)
        $tableCheck = $conn->query("SHOW TABLES LIKE '$table'");
        if ($tableCheck->num_rows === 0) {
            continue; // Skip if table doesn't exist
        }

        $queries[] = "(SELECT id, question, ? AS skills FROM `$table` ORDER BY RAND() LIMIT 3)";
        $params[] = $skill;
        $types .= 's';
    }

    if (empty($queries)) {
        http_response_code(500);
        echo json_encode(['error' => 'No valid question tables found']);
        exit;
    }

    // Execute query
    $finalQuery = implode(" UNION ALL ", $queries);
    $stmt = $conn->prepare($finalQuery);

    if (!$stmt) {
        throw new Exception('Query preparation failed: ' . $conn->error);
    }

    if (!$stmt->bind_param($types, ...$params)) {
        throw new Exception('Parameter binding failed: ' . $stmt->error);
    }

    if (!$stmt->execute()) {
        throw new Exception('Query execution failed: ' . $stmt->error);
    }

    $result = $stmt->get_result();
    $questions = [];
    while ($row = $result->fetch_assoc()) {
        $questions[] = $row;
    }

    // Set response headers and output
    header('Content-Type: application/json');
    http_response_code(200);
    echo json_encode([
        'status' => 'success',
        'data' => $questions,
        'count' => count($questions)
    ]);

} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        'error' => 'Internal server error',
        'message' => $e->getMessage()
    ]);
    error_log("Error in script: " . $e->getMessage());
} finally {
    // Clean up resources
    if (isset($stmt) && $stmt instanceof mysqli_stmt) {
        $stmt->close();
    }
    if (isset($conn) && $conn instanceof mysqli) {
        $conn->close();
    }
}
?>