<?php
include 'db.php';

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
    "python" => "python_questions",
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

// DEBUG: Check if `skills` parameter is received
if (!isset($_GET['skills']) || empty($_GET['skills'])) {
    echo json_encode(['error' => 'No skills provided']);
    exit;
}

// Convert skills input to lowercase and trim spaces
$skillsArray = array_map('strtolower', array_map('trim', explode(',', $_GET['skills'])));

// Filter only valid skills
$filteredSkills = array_intersect_key($allowedSkills, array_flip($skillsArray));

if (empty($filteredSkills)) {
    echo json_encode(['error' => 'Invalid skill selection']);
    exit;
}

$queries = [];
$params = [];
$types = '';

foreach ($filteredSkills as $skill => $table) {
    $queries[] = "(SELECT id, question, ? AS skills FROM `$table` ORDER BY RAND() LIMIT 3)";
    $params[] = $skill;
    $types .= 's';
}

$finalQuery = implode(" UNION ALL ", $queries);
$stmt = $conn->prepare($finalQuery);
$stmt->bind_param($types, ...$params);
$stmt->execute();
$result = $stmt->get_result();

$questions = [];
while ($row = $result->fetch_assoc()) {
    $questions[] = $row;
}

header('Content-Type: application/json');
echo json_encode($questions);
?>
