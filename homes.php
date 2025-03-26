<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prep Ace - Home</title>
    <!-- Bulma CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    <!-- FontAwesome for Icons -->
    <script src="https://kit.fontawesome.com/e690f7b4b8.js" crossorigin="anonymous"></script>
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
        }

        /* Color-Changing Background */
        body::before {
            content: "";
            position: fixed;
            z-index: -100;
            width: 100%;
            height: 100%;
            background-color: #A8E6EA; /* Lighter cyan base (#14C2CC -> #A8E6EA) */
            background-image: 
                radial-gradient(circle farthest-side at top right, transparent, #99BFFF), /* Lighter blue (#0D64FF -> #99BFFF) */
                radial-gradient(ellipse farthest-corner at 0% 100%, transparent, #FF99CC); /* Lighter pink (#FF00A0 -> #FF99CC) */
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

        /* Navbar Custom Styles */
        #navigation {
            background-color: rgba(235, 235, 235, 0.9); /* Slightly more opaque for contrast */

        }

        #dropdown {
            margin: 3%;
            border-radius: 9px;
            background-color: rgba(235, 235, 235, 0.9);
            box-shadow: inset -6px -6px 10px 0 rgba(49, 48, 48, 0.5), inset 6px 6px 10px 0 rgba(255, 255, 255, 0.829);
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
            border-radius: 9px;
        }

        #logo:hover {
            box-shadow: none;
        }

        #sign-up:hover {
            box-shadow: inset -6px -6px 10px 0 rgba(49, 48, 48, 0.5), inset 6px 6px 10px 0 rgba(255, 255, 255, 0.829);
        }

        #sign:hover {
            box-shadow: none;
        }

        /* Main Content Styles */
        .main {
            position: relative;
            width: 100%;
            flex-grow: 1;
            /* background-color: rgba(248, 249, 250, 0.8); Semi-transparent overlay for readability */
        }

        .container-custom {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1400px;
            margin: 0 auto;
            gap: clamp(20px, 4vw, 30px);
            min-height: calc(100vh - 5rem);
        }

        .text-section {
            max-width: 50%;
            padding-right: clamp(15px, 3vw, 20px);
            opacity: 0;
            animation: fadeIn 1s ease forwards 0.3s;
        }

        @keyframes fadeIn {
            to {
                opacity: 1;
            }
        }

        .text-section h1 {
            font-size: clamp(40px, 10vw, 80px);
            font-weight: 700;
            line-height: 1.1;
            color: #00aaff;
            margin-bottom: clamp(15px, 2vw, 20px);
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
        }

        .text-section h2 {
            font-size: clamp(24px, 6vw, 32px);
            color: #333;
            font-weight: 600;
            margin: clamp(20px, 3vw, 25px) 0 clamp(10px, 1.5vw, 15px);
        }

        .text-section p {
            font-size: clamp(14px, 3vw, 16px);
            color: #666;
            line-height: 1.8;
            margin-bottom: clamp(15px, 2vw, 20px);
        }

        .btn-start {
            background: linear-gradient(to right, #ffcc00, #0088ff);
            border: none;
            padding: clamp(12px, 2.5vw, 15px) clamp(25px, 5vw, 30px);
            font-size: clamp(16px, 4vw, 18px);
            color: white;
            border-radius: 50px;
            transition: all 0.3s ease-in-out;
            text-decoration: none;
            display: inline-block;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            font-weight: 500;
        }

        .btn-start:hover {
            opacity: 0.9;
            transform: scale(1.05) translateY(-2px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.25);
        }

        .image-section {
            max-width: 45%;
            opacity: 0;
            animation: fadeIn 1s ease forwards 0.5s;
        }

        .image-section img {
            max-width: 100%;
            border-radius: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            
        }

        .image-section img:hover {
            transform: scale(1.03) translateY(-5px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
        }

        /* Responsive Design */
        @media (max-width: 992px) {
            .container-custom {
                flex-direction: column;
                padding: clamp(15px, 4vw, 20px);
                text-align: center;
            }
            .text-section {
                max-width: 90%;
                padding-right: 0;
            }
            .text-section h1 {
                font-size: clamp(36px, 8vw, 60px);
            }
            .text-section h2 {
                font-size: clamp(20px, 5vw, 28px);
            }
            .image-section {
                max-width: 70%;
                margin-bottom: clamp(20px, 4vw, 25px);
            }
        }

        @media (max-width: 768px) {
            .text-section h1 {
                font-size: clamp(30px, 7vw, 50px);
            }
            .text-section h2 {
                font-size: clamp(18px, 4vw, 24px);
            }
            .btn-start {
                padding: clamp(10px, 2vw, 12px) clamp(20px, 4vw, 25px);
            }
            .image-section {
                max-width: 80%;
            }
        }

        @media (max-width: 480px) {
            .main {
                padding-top: 4rem;
            }
            .container-custom {
                padding: clamp(10px, 3vw, 15px);
            }
            .text-section h1 {
                font-size: clamp(24px, 6vw, 40px);
            }
            .text-section h2 {
                font-size: clamp(16px, 3.5vw, 20px);
            }
            .text-section p {
                font-size: clamp(12px, 2.5vw, 14px);
            }
            .btn-start {
                width: 100%;
                padding: clamp(8px, 1.5vw, 10px) clamp(15px, 3vw, 18px);
                font-size: clamp(14px, 3.5vw, 16px);
            }
            .image-section {
                max-width: 90%;
            }
        }
    </style>
</head>
<body>
    <!-- Bulma Navbar -->
    <nav class="navbar" role="navigation" id="navigation" aria-label="main navigation">
        <div class="navbar-brand">
        <img src="images/logo.png" alt="Logo" style="width: 123px; height: 100px; position: relative; left: 36px;">
      
       </div>
        <div id="navbarBasicExample" class="navbar-menu">
           
            <div class="navbar-end">
                <div id="sign" class="navbar-item">
                    <div class="buttons">
                        <a id="sign-up" class="button is-primary" href="tech.php">
                            <strong>Start Practice!</strong>
                        </a>
                        <a id="sign-up" class="button is-primary" href="compile.php">
                            <strong>Let's compile</strong>
                        </a>
                        <!-- <a id="sign-up" class="button is-light" href="profile.php">Go to profile</a> -->
                        <a id="sign-up" class="button is-light" href="review.php">Feedback</a>

                        <a id="sign-up" class="button is-light" href="logout.php">Logout</a>
                     
                    </div>
                </div>
            </div>
        </div>
    </nav>

   <!-- Main Content -->
<div class="main">
    <div class="container-custom">
        <!-- Left: Image Section -->
        <div class="image-section">
            <img src="images/home1.png" alt="Mock Interview Portal">
        </div> 

        <!-- Right: Text Section -->
        <div class="text-section">
            <h2>Prepare, Practice, Succeed!</h2>
            <p>Welcome to <strong>Prep Ace</strong>, your go-to platform for mastering interviews and excelling in job assessments.</p>

            <h2>🔹 Job-Specific Mock Tests</h2>
            <p>Practice mock interviews and tests tailored to various job roles and industries. Get familiar with **commonly asked questions** and refine your responses.</p>

            <h2>🔹 Technical & HR Rounds</h2>
            <p>From coding challenges to HR interview questions, prepare for every stage of the hiring process with structured tests.</p>

            <h2>🔹 Instant Performance Feedback</h2>
            <p>Review your answers, track your progress, and improve your **problem-solving and communication skills** with detailed insights.</p>

           

            <p>Start preparing today and boost your confidence for your next interview!</p>
        </div>
    </div>
</div>

    <!-- Bulma Navbar Script -->
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
            $navbarBurgers.forEach(el => {
                el.addEventListener('click', () => {
                    const target = el.dataset.target;
                    const $target = document.getElementById(target);
                    el.classList.toggle('is-active');
                    $target.classList.toggle('is-active');
                });
            });
        });
    </script>
</body>
</html> 