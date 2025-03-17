<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Solutions</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    <script src="https://kit.fontawesome.com/e690f7b4b8.js" crossorigin="anonymous"></script>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: linear-gradient(to top, #d5dee7 0%, rgb(226, 227, 232) 0%, #c9ffbf 100%);
            color: #333;
            min-height: 100vh;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .question {
            margin-bottom: 20px;
            padding: 15px;
            background: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background: linear-gradient(45deg, #2196f3, #42a5f5);
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            color: white;
        }
    </style>
</head>
<body>

<nav class="navbar" role="navigation" id="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" id="logo" href="#">
            <img src="https://blogger.googleusercontent.com/img/a/AVvXsEh3s2VDt9KzuBkTx0TFEUGd-iwjLJZClnluJxfxhH9mSL4omC07LngF9C364wUmRYJ3OqAd4B7ilkxTD9stKatZYIeYTdvaZSKEAoy9VDQLSYb7nti-IkFBJZn1GV7uCGck5ENmXngwjsVTIk5nausIa0CRN6Mt3aYvgY_x3n6ru-dCScMXUeh1U8xH" width="100" height="80">
        </a>
    </div>
    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-end">
            <div id="sign" class="navbar-item">
                <div class="buttons">
                    <a id="sign-up" class="button is-primary" href="homes.php"><strong>Home</strong></a>
                    <a class="button is-light" href="view_answers.php">See Answers</a>
                    <a class="button is-light" href="logout.php">logout </a>
                </div>
            </div>
        </div>
    </div>
</nav>

<div class="container">
    <h1 class="title">Test Solutions</h1>
    <div id="solutions">
        <p>Loading solutions...</p>
    </div>
</div>

<script>
    $(document).ready(function() {
        $.ajax({
            url: "api/fetch_solution.php",
            method: "GET",
            dataType: "json",
            success: function(response) {
                console.log(response);
                if (response.error) {
                    $("#solutions").html(`<p>${response.error}</p>`);
                    return;
                }
                let html = "";
                if (response.length > 0) {
                    response.forEach(answer => {
                        html += `
                            <div class="question">
                                <div><strong>Feedback:</strong> ${answer.feedback}</div>
                                <div class="tag ${answer.result === 'Pass' ? 'is-success' : 'is-danger'}">
                                    <strong>Result:</strong> ${answer.result}
                                </div>
                            </div>
                        `;
                    });
                } else {
                    html = "<p>No answers found.</p>";
                }
                $("#solutions").html(html);
            },
            error: function(xhr, status, error) {
                console.log("AJAX Error: " + error);
                $("#solutions").html("<p>Failed to load answers.</p>");
            }
        });
    });
</script>
</body>
</html>
