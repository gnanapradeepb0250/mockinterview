<!-- support.php -->
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
    <title>Support - Prep Ace</title>

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
            background-color: #f5f5f5;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            padding: 20px;
        }

        #navigation {
            background-color: rgba(0, 0, 0, 0.7);
            height: 77px;
            box-shadow: none;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
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

        .container {
            max-width: 600px;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            margin: 100px auto 30px;
        }

        .title.is-3 {
            color: #333;
            text-align: center;
            font-weight: 700;
        }

        .label {
            font-weight: 600;
            color: #444;
            font-size: 1.1rem;
        }

        .input, .textarea {
            border-radius: 10px;
            padding: 12px;
            font-size: 1rem;
            border: 2px solid #e9ecef;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .input:focus, .textarea:focus {
            border-color: #17a2b8;
            box-shadow: 0 0 10px rgba(23, 162, 184, 0.3);
            outline: none;
        }

        .textarea {
            resize: vertical;
            min-height: 120px;
        }

        .button.is-submit {
            background: linear-gradient(45deg, #17a2b8, #40c4ff);
            color: white;
            padding: 12px;
            border: none;
            font-size: 1.1rem;
            font-weight: bold;
            width: 100%;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .button.is-submit:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 15px rgba(23, 162, 184, 0.4);
        }

        .button.is-submit:disabled {
            background: #ccc;
            cursor: not-allowed;
            transform: none;
            box-shadow: none;
        }

        hr {
            border-top: 2px solid #eee;
            margin: 20px 0;
        }

        .success-message {
            display: none;
            color: #28a745;
            text-align: center;
            font-size: 1.1rem;
            margin-top: 15px;
            animation: fadeIn 0.5s ease-in;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Pyramid Loader Styles */
        .backdrop {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(49, 49, 49, 0.95);
            justify-content: center;
            align-items: center;
            z-index: 9999;
        }

        .loader-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .pyramid-loader {
            position: relative;
            width: 300px;
            height: 300px;
            display: block;
            transform-style: preserve-3d;
            transform: rotateX(-20deg);
        }

        .wrapper {
            position: relative;
            width: 100%;
            height: 100%;
            transform-style: preserve-3d;
            animation: spin 4s linear infinite;
        }

        .pyramid-loader .wrapper .side {
            width: 70px;
            height: 70px;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            transform-origin: center top;
            clip-path: polygon(50% 0%, 0% 100%, 100% 100%);
        }

        .pyramid-loader .wrapper .side1 {
            background: conic-gradient(#2BDEAC, #F028FD, #D8CCE6, #2F2585);
            transform: rotateZ(-30deg) rotateY(90deg);
        }

        .pyramid-loader .wrapper .side2 {
            transform: rotateZ(30deg) rotateY(90deg);
            background: conic-gradient(#2F2585, #D8CCE6, #F028FD, #2BDEAC);
        }

        .pyramid-loader .wrapper .side3 {
            transform: rotateX(30deg);
            background: conic-gradient(#2F2585, #D8CCE6, #F028FD, #2BDEAC);
        }

        .pyramid-loader .wrapper .side4 {
            transform: rotateX(-30deg);
            background: conic-gradient(#2BDEAC, #F028FD, #D8CCE6, #2F2585);
        }

        .pyramid-loader .wrapper .shadow {
            width: 60px;
            height: 60px;
            background: #8B5AD5;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            transform: rotateX(90deg) translateZ(-40px);
            filter: blur(12px);
        }

        .loading-text {
            color: #ffffff;
            font-size: 24px;
            margin-top: 20px;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        @keyframes spin {
            100% {
                transform: rotateY(360deg);
            }
        }

        /* Responsive Adjustments */
        @media screen and (max-width: 1000px) {
            .navbar-menu {
                background-color: rgba(0, 0, 0, 0.7);
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            }
        }

        @media (max-width: 768px) {
            .container {
                max-width: 90%;
                margin: 80px auto 20px;
            }
        }

        @media (max-width: 480px) {
            .container {
                padding: 15px;
                margin: 60px auto 15px;
            }

            .button.is-submit {
                width: 100%;
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
            <span class="navbar-item has-text-white is-size-4">Prep Ace</span>

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
                        <a class="button is-light btn-custom" href="support.php">Need Support</a>
                        <a class="button is-light btn-custom" href="review.php">Feedback</a>
                        <a class="button is-light btn-custom" href="logout.php">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <!-- Support Form -->
    <div class="container">
        <h3 class="title is-3">Prep Ace Support</h3>
        <hr>
        <form id="supportForm">
            <div class="field">
                <label for="name" class="label">Name:</label>
                <div class="control">
                    <input type="text" class="input" id="name" name="name" required aria-required="true">
                </div>
            </div>
            <div class="field">
                <label for="email" class="label">Email:</label>
                <div class="control">
                    <input type="email" class="input" id="email" name="email" required aria-required="true">
                </div>
            </div>
            <div class="field">
                <label for="phone" class="label">Phone Number:</label>
                <div class="control">
                    <input type="tel" class="input" id="phone" name="phone" required aria-required="true" pattern="[0-9]{10}">
                </div>
            </div>
            <div class="field">
                <label for="message" class="label">Message:</label>
                <div class="control">
                    <textarea class="textarea" id="message" name="message" required aria-required="true"></textarea>
                </div>
            </div>
            <button type="submit" class="button is-submit" id="submitBtn">Submit</button>
            <div class="success-message" id="successMessage">Support request submitted successfully!</div>
        </form>
    </div>

    <!-- Pyramid Loading Animation -->
    <div class="backdrop" id="loadingOverlay">
        <div class="loader-container">
            <div class="pyramid-loader">
                <div class="wrapper">
                    <span class="side side1"></span>
                    <span class="side side2"></span>
                    <span class="side side3"></span>
                    <span class="side side4"></span>
                    <span class="shadow"></span>
                </div>  
            </div>
            <div class="loading-text">Hang on tight, almost there!</div>
        </div>
    </div>

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

        // Form Submission Handling
        $(document).ready(function() {
            $('#supportForm').on('submit', async function(e) {
                e.preventDefault();

                // Validate form
                if (!validateForm()) {
                    return;
                }

                // Show loading overlay
                $('#loadingOverlay').fadeIn(200);
                $('#submitBtn').prop('disabled', true).text('Submitting...');

                const formData = {
                    name: $('#name').val(),
                    email: $('#email').val(),
                    phone: $('#phone').val(),
                    message: $('#message').val()
                };

                try {
                    const response = await fetch('api/support.php', {
                        method: 'POST',
                        headers: { 'Content-Type': 'application/json' },
                        body: JSON.stringify(formData)
                    });

                    const data = await response.json();

                    // Hide loading overlay
                    $('#loadingOverlay').fadeOut(200);

                    if (data.success) {
                        $('#supportForm').hide();
                        $('#successMessage').fadeIn(500);
                        setTimeout(() => {
                            window.location.href = 'homes.php'; // Redirect to homes.php
                        }, 2000);
                    } else {
                        alert(data.message || 'Failed to submit support request.');
                        $('#submitBtn').prop('disabled', false).text('Submit');
                    }
                } catch (error) {
                    $('#loadingOverlay').fadeOut(200);
                    alert('An error occurred. Please try again.');
                    $('#submitBtn').prop('disabled', false).text('Submit');
                    console.error('Submit error:', error);
                }
            });

            // Form validation
            function validateForm() {
                let isValid = true;
                const phone = $('#phone').val();
                const email = $('#email').val();

                // Email validation
                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!emailRegex.test(email)) {
                    alert('Please enter a valid email address.');
                    isValid = false;
                }

                // Phone validation (10 digits)
                const phoneRegex = /^[0-9]{10}$/;
                if (!phoneRegex.test(phone)) {
                    alert('Please enter a valid 10-digit phone number.');
                    isValid = false;
                }

                return isValid;
            }
        });
    </script>
</body>
</html>