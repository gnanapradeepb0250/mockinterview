<!-- solutions.php -->
<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Test Solutions</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            line-height: 1.6;
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

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }

        a:hover {
            background: #0056b3;
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

            a {
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

            a {
                padding: 8px 15px;
            }
        }
    </style>
</head>
<body>
    <h2>Test Solutions</h2>
    <div id="solutions-container"></div>
    <div id="summary"></div>
    <p><a href="dashboard.php">Go to Dashboard</a></p>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
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