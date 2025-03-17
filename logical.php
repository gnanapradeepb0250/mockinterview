<?php include("navbar.php")?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>General Knowledge Questions</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #f6d365 0%, #fda085 100%);
            color: #333;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #444;
        }
        .question {
            background: #f4f4f9;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .question p {
            font-weight: bold;
            color: #555;
        }
        .answer {
            background: #e8f5e9;
            border-left: 4px solid #66bb6a;
            padding: 10px;
            border-radius: 6px;
            margin-top: 10px;
        }
        #loading {
            text-align: center;
            font-size: 18px;
            color: #555;
            margin-top: 20px;
        }
        #error {
            text-align: center;
            font-size: 18px;
            color: red;
            margin-top: 20px;
        }
        @media (max-width: 600px) {
            .container {
                padding: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>logical Questions</h1>
        <div id="loading">Loading questions...</div>
        <div id="questions"></div>
        <div id="error" style="display: none;">Failed to load questions. Please try again.</div>
    </div>

    <script>
        $(document).ready(function () {
            $.ajax({
                url: "api/logical_question.php", // API URL
                type: "GET",
                dataType: "json",
                success: function (response) {
                    $("#loading").hide(); // Hide loading message

                    if (response.success) {
                        const questions = response.questions;
                        const questionContainer = $("#questions");

                        questions.forEach((item, index) => {
                            const questionDiv = `
                                <div class="question">
                                    <p>Q${index + 1}: ${item.question}</p>
                                    <div class="answer">
                                        <strong>Answer:</strong> ${item.answer}
                                    </div>
                                </div>
                            `;
                            questionContainer.append(questionDiv);
                        });
                    } else {
                        $("#error").show().text("No questions found.");
                    }
                },
                error: function () {
                    $("#loading").hide();
                    $("#error").show();
                }
            });
        });
    </script>
</body>
</html>
