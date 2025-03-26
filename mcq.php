<!-- mcq.php -->
<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MCQ Test</title>

    <!-- Bulma CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    
    <!-- FontAwesome for Icons -->
    <script src="https://kit.fontawesome.com/e690f7b4b8.js" crossorigin="anonymous"></script>

    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap");

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
        }

        body {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        #navigation {
            background-color: #fff;
            height: 77px;
            box-shadow: none;
        }

        .navbar-item:hover,
        .navbar-link:hover {
            color: rgb(17, 102, 230);
            box-shadow: 1px 1px 5px rgba(9, 28, 58, 0.452);
            border-radius: 9px;
        }

        .navbar-item {
            margin: 2%;
        }

        .navbar-link {
            border-radius: 0;
        }

        #logo:hover {
            box-shadow: none;
        }

        .btn-custom:hover {
            box-shadow: inset -6px -6px 10px 0 rgba(49, 48, 48, 0.5), 
                        inset 6px 6px 10px 0 rgba(255, 255, 255, 0.829);
        }

        .navbar-item img {
            height: 65px;
            width: 80px;
            max-height: 3.2rem;
        }

        .question { 
            margin: 20px 0; 
            padding: 15px;
            background: #f9f9f9;
            border-radius: 5px;
        }

        .options { 
            margin-left: 20px;
            padding: 10px 0;
        }

        #result { 
            display: none; 
            color: #28a745; 
            text-align: center;
            padding: 15px;
            font-size: 1.2em;
        }

        #test-container { 
            display: none; 
        }

        .selection { 
            margin: 15px 0;
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            align-items: center;
        }

        select, button {
            padding: 10px;
            font-size: 1em;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        select {
            flex: 1;
            min-width: 200px;
        }

        button {
            background: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            padding: 10px 20px;
            transition: background 0.3s;
        }

        button:hover {
            background: #0056b3;
        }

        button:disabled {
            background: #cccccc;
            cursor: not-allowed;
        }

        h2 {
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }

        .options input[type="radio"] {
            margin: 5px 0;
        }

        /* Responsive Adjustments */
        @media screen and (max-width: 1000px) {
            .navbar-menu {
                background-color: #fff;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            }
        }

        @media (max-width: 768px) {
            body {
                padding: 10px;
            }

            .selection {
                flex-direction: column;
                align-items: stretch;
            }

            select {
                width: 100%;
            }

            button {
                width: 100%;
                margin-top: 10px;
            }

            .question {
                margin: 10px 0;
                padding: 10px;
            }

            .options {
                margin-left: 10px;
            }
        }

        @media (max-width: 480px) {
            h2 {
                font-size: 1.5em;
            }

            .question p {
                font-size: 0.9em;
            }

            .options {
                font-size: 0.9em;
            }

            #result {
                font-size: 1em;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar" role="navigation" id="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-item" id="logo" href="dashboard.php">
                <img src="images/logo.png" alt="Logo">
            </a>

            <!-- Mobile Navbar Toggle -->
            <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarMenu">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>

        <!-- Navbar Menu -->
        <div id="navbarMenu" class="navbar-menu">
            <div class="navbar-end">
                <div class="navbar-item">
                    <div class="buttons">
                        <a class="button is-primary btn-custom" href="homes.php"><strong>Go to home</strong></a>
                        <a class="button is-light btn-custom" href="solutions.php">View Solutions</a>
                        <a class="button is-light btn-custom" href="dashboard.php">Dashboard</a>
                        <a class="button is-light btn-custom" href="support.php">Need Support</a>
                        <a class="button is-light btn-custom" href="logout.php">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <!-- MCQ Content -->
    <div id="selection-container">
        <h2>Select Test Parameters</h2>
        <div class="selection">
            <label for="category">Category:</label>
            <select id="category">
                <option value="">Select Category</option>
            </select>
        </div>
        <div class="selection">
            <label for="skill">Skill:</label>
            <select id="skill">
                <option value="">Select Skill</option>
            </select>
        </div>
        <button onclick="startTest()">Start Test</button>
    </div>

    <div id="test-container">
        <h2>MCQ Test</h2>
        <div id="questions"></div>
        <button id="submit-button" onclick="submitTest()">Submit Test</button>
    </div>
    <div id="result"></div>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        // Navbar Toggle
        document.addEventListener('DOMContentLoaded', () => {
            const burger = document.querySelector('.navbar-burger');
            const menu = document.querySelector('.navbar-menu');

            if (burger && menu) {
                burger.addEventListener('click', () => {
                    burger.classList.toggle('is-active');
                    menu.classList.toggle('is-active');
                });
            }
        });

        // MCQ Functionality
        let userAnswers = {};
        let userId = <?php echo json_encode($_SESSION['user_id']); ?>;

        $(document).ready(function() {
            $.ajax({
                url: 'api/fetch_mcq.php',
                method: 'GET',
                data: { action: 'get_categories' },
                success: function(response) {
                    console.log('Categories response:', response);
                    let categories = JSON.parse(response);
                    if (!Array.isArray(categories)) {
                        alert('Error: Invalid categories data');
                        return;
                    }
                    let html = '<option value="">Select Category</option>';
                    categories.forEach(cat => {
                        html += `<option value="${cat}">${cat}</option>`;
                    });
                    $('#category').html(html);
                },
                error: function(xhr, status, error) {
                    console.error('Categories AJAX error:', status, error);
                    alert('Failed to load categories');
                }
            });

            $('#category').change(function() {
                let category = $(this).val();
                if (!category) {
                    $('#skill').html('<option value="">Select Skill</option>');
                    return;
                }

                $.ajax({
                    url: 'api/fetch_mcq.php',
                    method: 'GET',
                    data: { 
                        action: 'get_skills',
                        category: category 
                    },
                    success: function(response) {
                        console.log('Skills response:', response);
                        let skills = JSON.parse(response);
                        if (!Array.isArray(skills)) {
                            alert('Error: Invalid skills data');
                            return;
                        }
                        let html = '<option value="">Select Skill</option>';
                        skills.forEach(skill => {
                            html += `<option value="${skill}">${skill}</option>`;
                        });
                        $('#skill').html(html);
                    },
                    error: function(xhr, status, error) {
                        console.error('Skills AJAX error:', status, error);
                        alert('Failed to load skills for category: ' + category);
                    }
                });
            });
        });

        function startTest() {
            let category = $('#category').val();
            let skill = $('#skill').val();
            
            if (!category || !skill) {
                alert('Please select both category and skill');
                return;
            }

            $.ajax({
                url: 'api/fetch_mcq.php',
                method: 'GET',
                data: {
                    category: category,
                    skill: skill,
                    action: 'get_questions'
                },
                success: function(response) {
                    console.log('Questions response:', response);
                    let questions = JSON.parse(response);
                    if (!Array.isArray(questions) || questions.length === 0) {
                        alert('No questions found for this category and skill');
                        return;
                    }
                    
                    let html = '';
                    questions.forEach((q, index) => {
                        let options = JSON.parse(q.options);
                        html += `
                            <div class="question">
                                <p><strong>Q${index + 1}:</strong> ${q.question}</p>
                                <div class="options">
                                    <input type="radio" name="q${q.id}" value="A"> ${options.A}<br>
                                    <input type="radio" name="q${q.id}" value="B"> ${options.B}<br>
                                    <input type="radio" name="q${q.id}" value="C"> ${options.C}<br>
                                    <input type="radio" name="q${q.id}" value="D"> ${options.D}<br>
                                </div>
                            </div>
                        `;
                    });
                    $('#questions').html(html);
                    $('#selection-container').hide();
                    $('#test-container').show();
                },
                error: function(xhr, status, error) {
                    console.error('Questions AJAX error:', status, error);
                    alert('Failed to load questions');
                }
            });
        }

        function submitTest() {
            userAnswers = {}; // Clear previous answers
            $('input[type="radio"]:checked').each(function() {
                let questionId = $(this).attr('name').replace('q', '');
                userAnswers[questionId] = $(this).val();
            });

            let totalQuestions = $('.question').length;
            let answeredQuestions = Object.keys(userAnswers).length;

            if (answeredQuestions < totalQuestions) {
                alert('Please answer all questions before submitting.');
                return;
            }

            $('#submit-button').prop('disabled', true);

            $.ajax({
                url: 'api/store_mcq.php',
                method: 'POST',
                data: {
                    user_id: typeof userId !== 'undefined' ? userId : null,
                    answers: JSON.stringify(userAnswers),
                    category: $('#category').val(),
                    skill: $('#skill').val()
                },
                success: function(response) {
                    console.log('Submit response:', response);
                    try {
                        let result = JSON.parse(response);
                        if (result.error) {
                            alert('Error: ' + result.error);
                            $('#submit-button').prop('disabled', false);
                            return;
                        }
                        $('#test-container').hide();
                        $('#result').show().html(`Test Submitted! Your Score: ${result.score}/${result.total}`);
                        setTimeout(() => {
                            window.location.href = 'solutions.php';
                        }, 2000);
                    } catch (e) {
                        console.error('Invalid JSON response:', response);
                        alert('Unexpected server response. Please try again.');
                        $('#submit-button').prop('disabled', false);
                    }
                },
                error: function(xhr, status, error) {
                    console.error('Submit AJAX error:', status, error);
                    alert('Failed to submit test: ' + error);
                    $('#submit-button').prop('disabled', false);
                }
            });
        }
    </script>
</body>
</html>