

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mock Interview Categories - Prep Ace</title>
    <!-- Meta Tags for SEO and Responsiveness -->
    <meta name="description" content="Choose your mock interview category with Prep Ace to practice Technical, HR, General Knowledge, and more skills in style.">
    <meta name="author" content="Prep Ace">
    <link rel="icon" type="image/png" href="images/favicon.png"> <!-- Add a favicon if available -->
    
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    
    <!-- Custom CSS -->
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap");

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body,
        button {
            font-family: "Poppins", sans-serif;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            background-image: linear-gradient(120deg, #84fab0 0%, #8fd3f4 100%);
        }

        /* Color-Changing Background */
        body::before {
            content: "";
            position: fixed;
            z-index: -100;
            width: 100%;
            height: 100%;
            background-color: #A8E6EA;
            background-image: 
                radial-gradient(circle farthest-side at top right, transparent, #99BFFF),
                radial-gradient(ellipse farthest-corner at 0% 100%, transparent, #FF99CC);
            animation: bg-change 10s infinite;
        }

        @keyframes bg-change {
            0%, 100% {
                filter: hue-rotate(0deg);
            }
            50% {
                filter: hue-rotate(-45deg);
            }
        }

        .main {
            position: relative;
            width: 100%;
            flex-grow: 1;
            /* background-color: rgba(248, 249, 250, 0.8); Semi-transparent overlay for readability */
        }

        .container {
            max-width: 1200px;
            width: 100%;
            margin: 0 auto;
          }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: clamp(1.5rem, 3vw, 2rem);
            font-size: clamp(1.8rem, 4vw, 2.5rem);
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: clamp(1rem, 2vw, 1.5rem);
            padding: clamp(1rem, 2vw, 2rem);
        }

        .category-card {
            position: relative;
            background: #ffffff;
            border-radius: 15px;
            padding: clamp(1.5rem, 3vw, 2rem);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            transition: all 0.4s ease;
            overflow: hidden;
            cursor: pointer;
            border: 2px solid transparent;
            text-align: center;
        }

        .category-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: #28a745; /* Green to match Prep Ace branding */
            opacity: 0;
            border-radius: 14px;
            transform: scale(0);
            transition: opacity 0.4s ease, transform 0.4s ease;
            z-index: 1;
        }

        .category-card:hover::before {
            opacity: 0.15;
            transform: scale(1.1);
        }

        .category-card:hover {
            transform: translateY(-10px) rotate(2deg) scale(1.05);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.1);
            border-color: #28a745;
        }

        .category-card:active {
            transform: translateY(-5px) rotate(0deg) scale(1.02);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        .category-card .card-body {
            position: relative;
            z-index: 2;
            transition: color 0.3s ease;
        }

        .icon {
            font-size: clamp(2.5rem, 5vw, 3.5rem);
            margin-bottom: clamp(0.8rem, 1.5vw, 1rem);
            color: #28a745;
            transition: transform 0.3s ease, color 0.3s ease;
        }

        .category-card:hover .icon {
            transform: scale(1.2) rotate(15deg);
            color: #333;
        }

        .card-title {
            font-size: clamp(1.2rem, 2.5vw, 1.5rem);
            font-weight: 700;
            color: #333;
            margin-bottom: clamp(0.5rem, 1vw, 0.8rem);
            transition: color 0.3s ease;
        }

        .category-card:hover .card-title {
            color: #28a745;
        }

        .card-text {
            font-size: clamp(0.9rem, 1.8vw, 1.1rem);
            color: #666;
            opacity: 0.7;
            transition: color 0.3s ease, opacity 0.3s ease;
        }

        .category-card:hover .card-text {
            color: #333;
            opacity: 1;
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .container {
                padding: clamp(1rem, 2vw, 1.5rem);
            }

            .category-card {
                padding: clamp(1.2rem, 2.5vw, 1.5rem);
            }

            .icon {
                font-size: clamp(2rem, 4vw, 2.5rem);
            }

            .card-title {
                font-size: clamp(1.1rem, 2vw, 1.3rem);
            }

            .card-text {
                font-size: clamp(0.8rem, 1.5vw, 0.9rem);
            }
        }

        @media (max-width: 768px) {
            .container {
                padding: clamp(0.8rem, 1.5vw, 1rem);
            }

            h2 {
                font-size: clamp(1.5rem, 3vw, 2rem);
            }

            .category-card {
                padding: clamp(1rem, 2vw, 1.2rem);
                border-radius: 12px;
            }

            .icon {
                font-size: clamp(1.8rem, 3.5vw, 2.2rem);
            }

            .card-title {
                font-size: clamp(1rem, 2vw, 1.2rem);
            }

            .card-text {
                font-size: clamp(0.7rem, 1.2vw, 0.8rem);
            }
        }

        @media (max-width: 480px) {
            .container {
                padding: clamp(0.6rem, 1vw, 0.8rem);
            }

            h2 {
                font-size: clamp(1.2rem, 2.5vw, 1.5rem);
            }

            .category-card {
                padding: clamp(0.8rem, 1.5vw, 1rem);
                border-radius: 10px;
            }

            .icon {
                font-size: clamp(1.5rem, 3vw, 1.8rem);
            }

            .card-title {
                font-size: clamp(0.9rem, 1.8vw, 1.1rem);
            }

            .card-text {
                font-size: clamp(0.6rem, 1vw, 0.7rem);
            }
        }

        /* Accessibility */
        .category-card:focus {
            outline: 2px solid #28a745;
            outline-offset: 2px;
        }
    </style>
</head>
<body>
<?php
include 'navbar.php';
?>
    <div class="main">
        <div class="container" role="main" aria-label="Mock Interview Categories">
            <h2 class="py-3">Select Your Category</h2>
            <div class="category-grid">
                <!-- Technical -->
                <div class="category-card bg-info text-white" onclick="location.href='tech.php'" role="button" tabindex="0" aria-label="Technical Category - Coding, DSA, Algorithms">
                    <div class="card-body">
                        <i class="bi bi-code-slash icon"></i>
                        <h5 class="card-title">Technical</h5>
                        <p class="card-text">Coding, DSA, Algorithms</p>
                    </div>
                </div>
                <!-- General Knowledge -->
                <div class="category-card bg-primary text-white" onclick="location.href='gk.php'" role="button" tabindex="0" aria-label="General Knowledge Category - Current Affairs, GK Questions">
                    <div class="card-body">
                        <i class="bi bi-globe icon"></i>
                        <h5 class="card-title">General Knowledge</h5>
                        <p class="card-text">Current Affairs, GK Questions</p>
                    </div>
                </div>
                <!-- HR Round -->
                <div class="category-card bg-danger text-white" onclick="location.href='hr.php'" role="button" tabindex="0" aria-label="HR Round Category - Personality, HR Questions">
                    <div class="card-body">
                        <i class="bi bi-people icon"></i>
                        <h5 class="card-title">HR Round</h5>
                        <p class="card-text">Personality, HR Questions</p>
                    </div>
                </div>
                <!-- Group Discussion -->
                <div class="category-card bg-warning text-dark" onclick="location.href='gd.php'" role="button" tabindex="0" aria-label="Group Discussion Category - Teamwork & Communication">
                    <div class="card-body">
                        <i class="bi bi-chat-dots icon"></i>
                        <h5 class="card-title">Group Discussion</h5>
                        <p class="card-text">Teamwork & Communication</p>
                    </div>
                </div>
                <!-- Logical Reasoning -->
                <div class="category-card bg-success text-white" onclick="location.href='logical.php'" role="button" tabindex="0" aria-label="Logical Reasoning Category - Puzzles, Patterns, Logical Thinking">
                    <div class="card-body">
                        <i class="bi bi-lightbulb icon"></i>
                        <h5 class="card-title">Logical Reasoning</h5>
                        <p class="card-text">Puzzles, Patterns, Logical Thinking</p>
                    </div>
                </div>
                <!-- Arithmetic Aptitude -->
                <div class="category-card bg-secondary text-white" onclick="location.href='arithmetic.php'" role="button" tabindex="0" aria-label="Arithmetic Aptitude Category - Maths, Problem Solving">
                    <div class="card-body">
                        <i class="bi bi-calculator icon"></i>
                        <h5 class="card-title">Arithmetic Aptitude</h5>
                        <p class="card-text">Maths, Problem Solving</p>
                    </div>
                </div>
                <!-- Verbal Reasoning -->
                <div class="category-card bg-dark text-white" onclick="location.href='verbal_reasoning.php'" role="button" tabindex="0" aria-label="Verbal Reasoning Category - Critical Thinking, Logical Deduction">
                    <div class="card-body">
                        <i class="bi bi-book icon"></i>
                        <h5 class="card-title">Verbal Reasoning</h5>
                        <p class="card-text">Critical Thinking, Logical Deduction</p>
                    </div>
                </div>
                <!-- Verbal Ability -->
                <div class="category-card bg-light text-dark" onclick="location.href='verbal_ability.php'" role="button" tabindex="0" aria-label="Verbal Ability Category - Grammar, Vocabulary, Comprehension">
                    <div class="card-body">
                        <i class="bi bi-chat-square-text icon"></i>
                        <h5 class="card-title">Verbal Ability</h5>
                        <p class="card-text">Grammar, Vocabulary, Comprehension</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>