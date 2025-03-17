<?php include("navbar.php")?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verbal Reasoning Questions</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #f6d365 0%, #fda085 100%);
            color: #333;
            margin: 0;
            padding: clamp(15px, 3vw, 20px);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            max-width: 800px;
            margin: clamp(15px, 3vh, 20px) auto;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            padding: clamp(15px, 3vw, 20px);
            transition: all 0.3s ease;
        }
        h1 {
            text-align: center;
            color: #444;
            font-size: clamp(24px, 5vw, 32px);
            margin-bottom: clamp(15px, 2vw, 20px);
        }
        .question {
            background: #f4f4f9;
            padding: clamp(10px, 2vw, 15px);
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin-bottom: clamp(15px, 2vw, 20px);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .question:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15);
        }
        .question p {
            font-weight: bold;
            color: #555;
            font-size: clamp(14px, 3vw, 16px);
            margin-bottom: clamp(5px, 1vw, 10px);
        }
        .answer {
            background: #e8f5e9;
            border-left: 4px solid #66bb6a;
            padding: clamp(8px, 2vw, 10px);
            border-radius: 6px;
            margin-top: clamp(5px, 1vw, 10px);
            font-size: clamp(12px, 3vw, 14px);
            transition: background 0.3s ease;
        }
        .answer:hover {
            background: #dcedc8;
        }
        #loading {
            text-align: center;
            font-size: clamp(16px, 4vw, 18px);
            color: #555;
            margin-top: clamp(15px, 2vw, 20px);
            font-weight: 500;
        }
        #error {
            text-align: center;
            font-size: clamp(16px, 4vw, 18px);
            color: #d32f2f;
            margin-top: clamp(15px, 2vw, 20px);
            font-weight: 500;
            background: rgba(255, 235, 238, 0.9);
            padding: clamp(8px, 2vw, 10px);
            border-radius: 6px;
        }
        @media (max-width: 768px) {
            .container {
                max-width: 95%;
                padding: 15px;
            }
            .question {
                padding: 12px;
            }
        }
        @media (max-width: 480px) {
            .container {
                padding: 10px;
            }
            .question {
                padding: 10px;
            }
            h1 {
                font-size: 22px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Verbal Reasoning Questions</h1>
        <div id="loading">Loading questions...</div>
        <div id="questions"></div>
        <div id="error" style="display: none;">Failed to load questions. Please try again.</div>
    </div>

    <script>
        $(document).ready(function () {
            $.ajax({
                url: "api/get verbal_reasoning.php", // API URL
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