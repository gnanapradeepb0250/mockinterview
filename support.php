<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Support - Prep Ace</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f5f5f5;
            font-family: 'Arial', sans-serif;
            min-height: 100vh;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }
        .navbar {
            background-color: rgba(0, 0, 0, 0.7);
            padding: clamp(10px, 2vw, 15px);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }
        .navbar-brand {
            font-size: clamp(20px, 5vw, 26px);
            font-weight: bold;
            color: white;
            transition: color 0.3s ease;
        }
        .navbar-brand:hover {
            color: #ddd;
        }
        .logo {
            width: clamp(40px, 10vw, 50px);
            margin-right: clamp(5px, 1vw, 10px);
            transition: transform 0.3s ease;
        }
        .logo:hover {
            transform: scale(1.1);
        }
        .navbar-nav .nav-link {
            color: white;
            font-size: clamp(14px, 3vw, 16px);
            margin: 0 clamp(5px, 1vw, 10px);
            transition: color 0.3s ease;
        }
        .navbar-nav .nav-link:hover {
            color: #ccc;
        }
        .container {
            max-width: 600px;
            background: white;
            padding: clamp(20px, 3vw, 30px);
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            margin: clamp(80px, 10vh, 100px) auto clamp(20px, 3vh, 30px);
            transition: all 0.3s ease;
        }
        h3 {
            color: #333;
            font-size: clamp(24px, 5vw, 32px);
            margin-bottom: clamp(20px, 3vw, 25px);
            text-align: center;
            font-weight: 700;
        }
        .form-label {
            font-weight: 600;
            color: #444;
            font-size: clamp(16px, 3vw, 18px);
        }
        .form-control {
            border-radius: 10px;
            padding: clamp(10px, 2vw, 12px);
            font-size: clamp(16px, 3vw, 18px);
            border: 2px solid #e9ecef;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        .form-control:focus {
            border-color: #17a2b8;
            box-shadow: 0 0 10px rgba(23, 162, 184, 0.3);
            outline: none;
        }
        textarea.form-control {
            resize: vertical;
            min-height: 120px;
        }
        .submit-btn {
            background: linear-gradient(45deg, #17a2b8, #40c4ff);
            color: white;
            padding: clamp(12px, 2vw, 15px);
            border: none;
            border-radius: 10px;
            font-size: clamp(16px, 3vw, 18px);
            font-weight: bold;
            width: 100%;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .submit-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 15px rgba(23, 162, 184, 0.4);
        }
        .submit-btn:disabled {
            background: #ccc;
            cursor: not-allowed;
            transform: none;
            box-shadow: none;
        }
        hr {
            border-top: 2px solid #eee;
            margin: clamp(15px, 2vw, 20px) 0;
        }
        .success-message {
            display: none;
            color: #28a745;
            text-align: center;
            font-size: clamp(16px, 3vw, 18px);
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

        @media (max-width: 768px) {
            .container {
                max-width: 90%;
                margin: 80px auto 20px;
            }
            .navbar {
                padding: 10px;
            }
            .navbar-nav {
                margin-top: 10px;
                justify-content: center;
            }
            .navbar-nav .nav-link {
                margin: 5px 0;
            }
        }
        @media (max-width: 480px) {
            .container {
                padding: 15px;
                margin: 60px auto 15px;
            }
            .navbar-brand {
                font-size: clamp(18px, 5vw, 22px);
            }
            .logo {
                width: clamp(30px, 8vw, 40px);
            }
            .navbar-nav .nav-link {
                font-size: clamp(14px, 3vw, 16px);
            }
            .submit-btn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
<?php include("navbar.php")?>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <div class="d-flex align-items-center">
                <img src="images/logo.png" class="logo img-thumbnail" alt="Prep Ace Logo" aria-label="Prep Ace Logo">
                <a class="navbar-brand" href="home.php">Prep Ace</a>
            </div>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="home.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="profile.php">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="feedback.php">Feedback</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="support.php">Support</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="api/logout.php">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <h3 class="text-center">Prep Ace Support</h3>
        <hr>
        <form id="supportForm">
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" class="form-control" id="name" name="name" required aria-required="true">
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required aria-required="true">
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">Phone Number:</label>
                <input type="tel" class="form-control" id="phone" name="phone" required aria-required="true" pattern="[0-9]{10}">
            </div>
            <div class="mb-3">
                <label for="message" class="form-label">Message:</label>
                <textarea class="form-control" id="message" name="message" rows="4" required aria-required="true"></textarea>
            </div>
            <button type="submit" class="btn submit-btn w-100" id="submitBtn">Submit</button>
            <div class="success-message" id="successMessage">Thank you! Your support request has been submitted successfully.</div>
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

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function() {
            // Form submission handling
            $('#supportForm').on('submit', function(e) {
                e.preventDefault();
                
                // Validate form
                if (!validateForm()) {
                    return;
                }

                // Show loading overlay
                $('#loadingOverlay').fadeIn(200);
                $('#submitBtn').prop('disabled', true).text('Submitting...');

                // Simulate form submission (replace with actual AJAX call)
                setTimeout(() => {
                    // Hide loading overlay and show success message
                    $('#loadingOverlay').fadeOut(200);
                    $('#supportForm').hide();
                    $('#successMessage').fadeIn(500);
                    $('#submitBtn').prop('disabled', false).text('Submit');
                }, 2000); // Simulate 2-second server response
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