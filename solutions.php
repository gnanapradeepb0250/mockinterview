<!-- solutions.php -->
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
    <title>Test Solutions</title>

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
            line-height: 1.6;
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

        h2, h3 {
            color: #333;
            margin-bottom: 20px;
        }

        .question {
            margin: 20px 0;
            padding: 15px;
            background: #f9f9f9;
            border-radius: 5px;
            border: 1px solid #eee;
        }

        .correct {
            color: #28a745;
            font-weight: bold;
        }

        .incorrect {
            color: #dc3545;
            font-weight: bold;
        }

        p {
            margin: 10px 0;
        }

        #summary {
            margin-top: 30px;
            padding: 15px;
            background: #f1f3f5;
            border-radius: 5px;
        }

        a.back-to-dashboard {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }

        a.back-to-dashboard:hover {
            background: #0056b3;
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
                padding: 15px;
            }

            .question {
                padding: 10px;
            }

            h2 {
                font-size: 1.5em;
            }

            h3 {
                font-size: 1.2em;
            }

            p {
                font-size: 0.95em;
            }

            a.back-to-dashboard {
                width: 100%;
                text-align: center;
            }
        }

        @media (max-width: 480px) {
            .question {
                margin: 15px 0;
                padding: 8px;
            }

            p {
                font-size: 0.9em;
            }

            .correct, .incorrect {
                display: block;
                margin-top: 5px;
            }

            a.back-to-dashboard {
                padding: 8px 15px;
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
                        <a class="button is-primary btn-custom" href="mcq.php"><strong>Take a Test</strong></a>
                        <a class="button is-light btn-custom" href="homes.php">go home</a>
                        <a class="button is-light btn-custom" href="support.php">Need Support</a>
                        <a class="button is-light btn-custom" href="review.php">Feedback</a>
                        <a class="button is-light btn-custom" href="logout.php">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <!-- Solutions Content -->
    <h2>Test Solutions</h2>
    <div id="solutions-container"></div>
    <div id="summary"></div>
    <p><a href="dashboard.php" class="back-to-dashboard">Go to Dashboard</a></p>

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

        // Solutions Fetch
        $(document).ready(function() {
            $.ajax({
                url: 'api/fetch_solution.php',
                method: 'GET',
                success: function(response) {
                    console.log('Solutions response:', response);
                    let data;
                    try {
                        data = JSON.parse(response);
                    } catch (e) {
                        $('#solutions-container').html('<p>Error: Invalid response from server.</p>');
                        return;
                    }

                    if (data.error) {
                        $('#solutions-container').html(`<p>Error: ${data.error}</p>`);
                        return;
                    }

                    if (!data.answers || data.answers.length === 0) {
                        $('#solutions-container').html('<p>No test data found. Please take a test first.</p>');
                        return;
                    }

                    let html = '';
                    data.answers.forEach(answer => {
                        html += `
                            <div class="question">
                                <p><strong>Question:</strong> ${answer.question}</p>
                                <p><strong>Your Answer:</strong> 
                                    ${answer.options[answer.user_answer]} 
                                    <span class="${answer.score ? 'correct' : 'incorrect'}">
                                        (${answer.score ? 'Correct' : 'Incorrect'})
                                    </span>
                                </p>
                                <p><strong>Correct Answer:</strong> ${answer.options[answer.correct_answer]}</p>
                                <p><strong>Category:</strong> ${answer.category}</p>
                                <p><strong>Skill:</strong> ${answer.skill}</p>
                            </div>
                        `;
                    });

                    $('#solutions-container').html(html);
                    $('#summary').html(`
                        <h3>Summary</h3>
                        <p><strong>Total Score:</strong> ${data.total_score} / ${data.total_questions}</p>
                    `);
                },
                error: function(xhr, status, error) {
                    console.error('Fetch solutions AJAX error:', status, error);
                    $('#solutions-container').html('<p>Failed to load test results. Please try again.</p>');
                }
            });
        });
    </script>
</body>
</html>