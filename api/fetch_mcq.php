<?php
// api/fetch_mcq.php
$conn = mysqli_connect("localhost", "root", "1234", "mock_interview");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Predefined categories and skills
$categories_skills = [
    "Frontend" => ["HTML", "CSS", "JavaScript", "React", "Vue"],
    "Backend" => ["Node.js", "Java", "Python", "Spring Boot", "Django"],
    "Fullstack" => ["MongoDB", "Express.js", "React", "Node.js"],
    "DevOps / Cloud" => ["AWS", "Docker", "Kubernetes", "Terraform"],
    "QA / Automation Testing" => ["Selenium", "JUnit", "Cypress", "Appium"],
    "Data Science / AI" => ["Python", "TensorFlow", "PyTorch", "Scikit-Learn"],
    "Data Analyst" => ["SQL", "Power BI", "Tableau", "Excel"],
    "Cybersecurity" => ["Penetration Testing", "Network Security", "Ethical Hacking", "Cryptography"],
    "Machine Learning / AI" => ["Deep Learning", "NLP", "Computer Vision", "Reinforcement Learning"],
    "Blockchain Development" => ["Ethereum", "Smart Contracts", "Solidity", "Hyperledger"],
    "Game Development" => ["Unity", "Unreal Engine", "C#", "Game Physics"],
    "Mobile App Development" => ["Flutter", "React Native", "Swift", "Kotlin"],
    "Embedded Systems / IoT" => ["Arduino", "Raspberry Pi", "Embedded C", "IoT Protocols"],
    "Database Administration" => ["MySQL", "PostgreSQL", "MongoDB", "Oracle DB"],
    "Networking / System Administration" => ["Linux", "Windows Server", "Networking", "Cloud Security"],
    "Software Testing & QA" => ["Unit Testing", "Integration Testing", "Manual Testing", "Performance Testing"]
];

$action = isset($_GET['action']) ? $_GET['action'] : '';

switch ($action) {
    case 'get_categories':
        echo json_encode(array_keys($categories_skills));
        break;

    case 'get_skills':
        $category = isset($_GET['category']) ? $_GET['category'] : '';
        if (array_key_exists($category, $categories_skills)) {
            echo json_encode($categories_skills[$category]);
        } else {
            echo json_encode([]);
        }
        break;

    case 'get_questions':
        $category = mysqli_real_escape_string($conn, $_GET['category']);
        $skill = mysqli_real_escape_string($conn, $_GET['skill']);
        
        // Validate category and skill
        if (!array_key_exists($category, $categories_skills) || !in_array($skill, $categories_skills[$category])) {
            echo json_encode([]);
            break;
        }

        // Fetch up to 5 random questions
        $query = "SELECT * FROM skills_questions 
                  WHERE category = '$category' AND skill = '$skill' 
                  ORDER BY RAND() 
                  LIMIT 5";
        $result = mysqli_query($conn, $query);
        
        if (!$result) {
            error_log("Query failed: " . mysqli_error($conn));
            echo json_encode([]);
            break;
        }

        $questions = array();
        while ($row = mysqli_fetch_assoc($result)) {
            // Validate options JSON
            $options = json_decode($row['options'], true);
            if (json_last_error() !== JSON_ERROR_NONE || !isset($options['A'], $options['B'], $options['C'], $options['D'])) {
                error_log("Invalid options for question ID {$row['id']}: " . $row['options']);
                continue;
            }
            $questions[] = $row;
        }
        
        echo json_encode($questions);
        break;

    default:
        echo json_encode([]);
        break;
}

mysqli_close($conn);
?>