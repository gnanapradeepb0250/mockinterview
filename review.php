<!-- review.php -->
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
    <title>Submit Feedback - Prep Ace</title>

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
            background: url('images/review.bg.jpg') no-repeat center center fixed;
            background-size: cover;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            padding: 20px;
        }

        #navigation {
            background-color: rgba(0, 0, 0, 0.7);
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

        .review-container {
            max-width: 400px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.2);
            margin: 20px auto;
            position: relative;
            top: 50%;
            transform: translateY(-50%);
            position: relative;
            top: 200px;
        }

        .stars-container {
            display: flex;
            gap: 8px;
            margin: 20px 0;
            justify-content: center;
        }

        .stars-container i {
            font-size: 2rem;
            cursor: pointer;
            color: lightgray;
            transition: all 0.3s ease;
        }

        .stars-container i:hover,
        .stars-container i.active,
        .stars-container i.selected {
            color: #ffcc00;
        }

        .textarea {
            width: 100%;
            height: 100px;
            border-radius: 8px;
            padding: 10px;
            font-size: 14px;
            resize: none;
            margin-top: 10px;
        }

        .button.is-submit {
            background: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            font-size: 16px;
            margin-top: 20px;
        }

        .button.is-submit:hover {
            background: #218838;
        }

        .button.is-submit:disabled {
            background: #ccc;
            cursor: not-allowed;
        }

        .notification {
            margin-top: 15px;
            display: none;
        }

        /* Responsive Adjustments */
        @media screen and (max-width: 1000px) {
            .navbar-menu {
                background-color: rgba(0, 0, 0, 0.7);
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            }
        }

        @media (max-width: 768px) {
            .review-container {
                position: static;
                width: 90%;
                margin: 20px auto;
                transform: none;
                padding: 20px;
            }

            .stars-container {
                gap: 5px;
            }
        }

        @media (max-width: 480px) {
            .stars-container i {
                font-size: 1.5rem;
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

    <!-- Review Form -->
    <div class="review-container">
        <h2 class="title is-4">We Value Your Opinion</h2>
        <p>How would you rate your overall experience?</p>

        <div class="stars-container">
            <i class="fa fa-star" data-value="1"></i>
            <i class="fa fa-star" data-value="2"></i>
            <i class="fa fa-star" data-value="3"></i>
            <i class="fa fa-star" data-value="4"></i>
            <i class="fa fa-star" data-value="5"></i>
        </div>

        <textarea class="textarea" placeholder="good" maxlength="500"></textarea>
        <button class="button is-submit" id="submitReview">Submit</button>
        <div class="notification" id="feedbackMessage"></div>
    </div>

    <!-- Scripts -->
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

        // Review Functionality
        const stars = document.querySelectorAll('.stars-container i');
        const reviewText = document.querySelector('.textarea');
        const submitBtn = document.getElementById('submitReview');
        const feedbackMessage = document.getElementById('feedbackMessage');
        let rating = 0;

        stars.forEach(star => {
            star.addEventListener('mouseover', function() {
                const value = parseInt(this.getAttribute('data-value'));
                resetStars();
                for (let i = 0; i < value; i++) {
                    stars[i].classList.add('active');
                }
            });

            star.addEventListener('click', function() {
                rating = parseInt(this.getAttribute('data-value'));
                resetStars();
                for (let i = 0; i < rating; i++) {
                    stars[i].classList.add('selected');
                }
            });

            star.addEventListener('mouseleave', function() {
                resetStars();
                for (let i = 0; i < rating; i++) {
                    stars[i].classList.add('selected');
                }
            });
        });

        function resetStars() {
            stars.forEach(s => {
                s.classList.remove('active', 'selected');
            });
        }

        submitBtn.addEventListener('click', async function() {
            if (rating === 0) {
                showFeedback('Please select a rating.', 'is-danger');
                return;
            }

            submitBtn.disabled = true;
            const review = reviewText.value.trim();

            try {
                const response = await fetch('api/review.php', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ rating, review })
                });

                const data = await response.json();

                if (data.success) {
                    showFeedback('Review submitted successfully', 'is-success');
                    setTimeout(() => {
                        resetForm();
                        window.location.href = 'homes.php'; // Redirect to homes.php
                    }, 2000);
                } else {
                    showFeedback(data.message || 'An error occurred. Please try again.', 'is-danger');
                    submitBtn.disabled = false;
                }
            } catch (error) {
                showFeedback('An error occurred. Please try again.', 'is-danger');
                submitBtn.disabled = false;
                console.error('Submit error:', error);
            }
        });

        function showFeedback(message, type) {
            feedbackMessage.textContent = message;
            feedbackMessage.className = `notification ${type}`;
            feedbackMessage.style.display = 'block';
            setTimeout(() => {
                feedbackMessage.style.display = 'none';
            }, 3000);
        }

        function resetForm() {
            rating = 0;
            resetStars();
            reviewText.value = '';
            submitBtn.disabled = false;
        }
    </script>
</body>
</html>