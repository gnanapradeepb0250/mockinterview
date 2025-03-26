<!-- dashboard.php -->
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
    <title>Dashboard</title>

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
            margin-bottom: 15px;
        }

        p {
            margin-bottom: 20px;
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

            p {
                font-size: 0.9em;
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
                        <a class="button is-light btn-custom" href="solutions.php">View Solutions</a>
                        <a class="button is-light btn-custom" href="homes.php">Go to home</a>
                        <a class="button is-light btn-custom" href="support.php">Need Support</a>
                        <a class="button is-light btn-custom" href="review.php">Feedback</a>
                        <a class="button is-light btn-custom" href="logout.php">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <!-- Dashboard Content -->
    <h2>Welcome, <span id="user-name">User</span>!</h2>
    <p>Use the options in the navigation bar to take a test, view your solutions, or log out.</p>

    <h3 class="test-history">Test History</h3>
    <div id="test-history-container"></div>

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

        // Dashboard Data Fetch
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