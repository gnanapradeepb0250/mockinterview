<?php include("navbar.php")?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Answers</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            min-height: 100vh;
            background: linear-gradient(to bottom, #e0f7fa, #b2ebf2);
            color: #333;
            justify-content: center;
            align-items: center;
        }
        .container {
            max-width: clamp(600px, 90vw, 1000px);
            margin: clamp(15px, 3vh, 20px) auto;
            background: rgba(255, 255, 255, 0.95);
            border-radius: clamp(8px, 2vw, 12px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            padding: clamp(15px, 3vw, 20px);
            transition: all 0.3s ease;
        }
        h2 {
            text-align: center;
            font-size: clamp(20px, 5vw, 28px);
            color: #444;
            margin-bottom: clamp(15px, 2.5vw, 20px);
            font-weight: 600;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: clamp(15px, 2.5vw, 20px);
            background: #fff;
            border-radius: clamp(6px, 1.5vw, 8px);
            overflow: hidden;
        }
        th, td {
            border: 1px solid #ddd;
            padding: clamp(8px, 2vw, 10px);
            text-align: left;
            font-size: clamp(12px, 3vw, 14px);
            transition: background 0.3s ease;
        }
        th {
            background-color: #f4f4f4;
            font-weight: 600;
            color: #555;
        }
        td {
            background: #fafafa;
        }
        tr:hover td {
            background: #f0f0f0;
        }
        @media (max-width: 768px) {
            .container {
                max-width: 95%;
                padding: clamp(12px, 2.5vw, 15px);
            }
            table {
                display: block;
                overflow-x: auto;
                white-space: nowrap;
            }
            th, td {
                min-width: 150px;
            }
        }
        @media (max-width: 480px) {
            .container {
                padding: clamp(10px, 2vw, 12px);
            }
            h2 {
                font-size: clamp(18px, 4vw, 24px);
            }
            th, td {
                padding: clamp(6px, 1.5vw, 8px);
                font-size: clamp(11px, 2.5vw, 13px);
            }
        }
        @media (max-width: 360px) {
            th, td {
                min-width: 120px;
                font-size: clamp(10px, 2vw, 12px);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Answers & Correct Solutions</h2>
        <table id="answersTable">
            <tr>
                <th>Question</th>
                <th>User Answer</th>
                <th>Correct Answer</th>
            </tr>
        </table>
    </div>

    <script>
        $(document).ready(function () {
            // Fetch answers from API
            $.ajax({
                url: "api/view_answers.php", // Backend PHP file to fetch answers
                type: "GET",
                dataType: "json",
                success: function (data) {
                    if (data.length > 0) {
                        $.each(data, function (index, answer) {
                            $("#answersTable").append(`
                                <tr>
                                    <td>${answer.question}</td>
                                    <td>${answer.user_answer}</td>
                                    <td>${answer.correct_answer}</td>
                                </tr>
                            `);
                        });
                    } else {
                        $("#answersTable").append("<tr><td colspan='3'>No answers found.</td></tr>");
                    }
                },
                error: function () {
                    $("#answersTable").append("<tr><td colspan='3'>Error fetching data.</td></tr>");
                }
            });
        });
    </script>
</body>
</html>