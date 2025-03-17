<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Review Page - Prep Ace</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('images/review.bg.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 15px;
        }

        .navbar-brand {
            font-size: clamp(20px, 5vw, 26px);
            font-weight: bold;
            color: white;
        }

        .logo {
            width: clamp(40px, 10vw, 50px);
            margin-right: 10px;
        }

        .review-container {
            flex-grow: 1;
            max-width: 400px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.2);
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            transition: all 0.3s ease;
        }

        .stars-container {
            display: flex;
            gap: 8px;
            margin: 20px 0;
            justify-content: center;
        }

        .stars-container i {
            font-size: clamp(30px, 8vw, 40px);
            cursor: pointer;
            color: lightgray;
            transition: all 0.3s ease;
        }

        .stars-container i:hover,
        .stars-container i.active,
        .stars-container i.selected {
            color: #ffcc00;
            transform: scale(1.2);
        }

        .review-text {
            width: 100%;
            height: 120px;
            border-radius: 8px;
            border: 1px solid #ccc;
            padding: 10px;
            font-size: 14px;
            resize: vertical;
            margin-top: 10px;
            transition: border-color 0.3s ease;
        }

        .review-text:focus {
            border-color: #28a745;
            outline: none;
        }

        .btn-submit {
            background: linear-gradient(45deg, #28a745, #34d058);
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            margin-top: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(40, 167, 69, 0.4);
        }

        .btn-submit:disabled {
            background: #ccc;
            cursor: not-allowed;
        }

        .feedback-message {
            margin-top: 15px;
            padding: 10px;
            border-radius: 5px;
            display: none;
        }

        .success {
            background: #d4edda;
            color: #155724;
        }

        .error {
            background: #f8d7da;
            color: #721c24;
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
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container d-flex justify-content-between align-items-center">
            <div class="d-flex align-items-center">
                <img src="images/logo.png" class="logo img-thumbnail" alt="Logo">
                <a class="navbar-brand" href="#">Prep Ace</a>
            </div>
        </div>
    </nav>

    <div class="review-container">
        <h2>We Value Your Opinion</h2>
        <p>How would you rate your overall experience?</p>

        <div class="stars-container">
            <i class="fa fa-star" data-value="1"></i>
            <i class="fa fa-star" data-value="2"></i>
            <i class="fa fa-star" data-value="3"></i>
            <i class="fa fa-star" data-value="4"></i>
            <i class="fa fa-star" data-value="5"></i>
        </div>

        <textarea class="review-text" placeholder="Tell us what you think..." maxlength="500"></textarea>
        <button class="btn btn-submit" id="submitReview">Submit</button>
        <div class="feedback-message" id="feedbackMessage"></div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const stars = document.querySelectorAll('.stars-container i');
        const reviewText = document.querySelector('.review-text');
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
                showFeedback('Please select a rating.', 'error');
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
                    showFeedback('Thank you for your review!', 'success');
                    setTimeout(() => {
                        resetForm();
                        window.location.href = 'profile.html'; // Redirect to profile
                    }, 2000);
                } else {
                    showFeedback(data.message || 'Failed to submit review.', 'error');
                    submitBtn.disabled = false;
                }
            } catch (error) {
                showFeedback('An error occurred. Please try again.', 'error');
                submitBtn.disabled = false;
                console.error('Submit error:', error);
            }
        });

        function showFeedback(message, type) {
            feedbackMessage.textContent = message;
            feedbackMessage.className = `feedback-message ${type}`;
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