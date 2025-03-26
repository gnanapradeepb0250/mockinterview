<!-- dashboard.php -->
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
    <title>Dashboard</title>
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
            margin-bottom: 15px;
        }

        p {
            margin-bottom: 20px;
        }

        .btn-container {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-top: 20px;
        }

        .btn {
            flex: 1;
            padding: 12px 20px;
            background: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            transition: background 0.3s;
            min-width: 120px;
        }

        .btn:hover {
            background: #0056b3;
        }

        .btn.logout {
            background: #dc3545;
        }

        .btn.logout:hover {
            background: #b02a37;
        }

        .test-history {
            margin-top: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            background: #fff;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background: #007BFF;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background: #f8f9fa;
        }

        @media (max-width: 768px) {
            body {
                padding: 15px;
            }

            .btn-container {
                flex-direction: column;
            }

            .btn {
                width: 100%;
            }

            h2 {
                font-size: 1.5em;
            }

            h3 {
                font-size: 1.2em;
            }

            table {
                font-size: 0.9em;
            }

            th, td {
                padding: 8px;
            }
        }

        @media (max-width: 480px) {
            th, td {
                padding: 6px;
                font-size: 0.85em;
            }

            .btn {
                padding: 10px;
            }

            p {
                font-size: 0.9em;
            }
        }
    </style>
</head>
<body>
    <h2>Welcome, <span id="user-name">User</span>!</h2>
    <p>Use the options below to take a test, view your solutions, or log out.</p>

    <div class="btn-container">
        <a href="mcq.php" class="btn">Take a Test</a>
        <a href="solutions.php" class="btn">View Solutions</a>
        <a href="logout.php" class="btn logout">Logout</a>
    </div>

    <h3 class="test-history">Test History</h3>
    <div id="test-history-container"></div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $.ajax({
                url: 'api/dashboard.php',
                method: 'GET',
                success: function(response) {
                    console.log('Dashboard response:', response);
                    let data;
                    try {
                        data = JSON.parse(response);
                    } catch (e) {
                        $('#test-history-container').html('<p>Error: Invalid response from server.</p>');
                        return;
                    }

                    if (data.error) {
                        $('#test-history-container').html(`<p>Error: ${data.error}</p>`);
                        return;
                    }

                    // Update user name
                    $('#user-name').text(data.first_name);

                    // Display test history
                    if (data.test_history && data.test_history.length > 0) {
                        let html = `
                            <table>
                                <tr>
                                    <th>Date</th>
                                    <th>Score</th>
                                    <th>Percentage</th>
                                </tr>
                        `;
                        data.test_history.forEach(test => {
                            html += `
                                <tr>
                                    <td>${test.test_date}</td>
                                    <td>${test.total_score} / ${test.total_questions}</td>
                                    <td>${test.percentage}%</td>
                                </tr>
                            `;
                        });
                        html += '</table>';
                        $('#test-history-container').html(html);
                    } else {
                        $('#test-history-container').html('<p>No test history available. Start by taking a test.</p>');
                    }
                },
                error: function(xhr, status, error) {
                    console.error('Fetch dashboard AJAX error:', status, error);
                    $('#test-history-container').html('<p>Failed to load test history. Please try again.</p>');
                }
            });
        });
    </script>
</body>
</html>