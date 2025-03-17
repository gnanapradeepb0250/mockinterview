<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prep Ace - Mock Interview Portal</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- FontAwesome for Icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: white;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .navbar {
            background-image: linear-gradient(to top, #88d3ce 0%, #6e45e2 100%);
            padding: clamp(10px, 2vw, 15px) clamp(20px, 4vw, 30px);
        }
        .navbar .container {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .navbar-brand {
            display: flex;
            align-items: center;
            font-size: clamp(20px, 5vw, 26px);
            font-weight: bold;
            color: #000;
            transition: color 0.3s ease;
        }
        .navbar-brand:hover {
            color: #333;
        }
        .logo {
            width: clamp(40px, 10vw, 50px);
            height: auto;
            margin-right: clamp(8px, 2vw, 10px);
            transition: transform 0.3s ease;
        }
        .logo:hover {
            transform: scale(1.1);
        }
        .btn-signin {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 25px;
            padding: clamp(6px, 1.5vw, 8px) clamp(15px, 3vw, 20px);
            font-size: clamp(12px, 3vw, 14px);
            font-weight: bold;
            transition: all 0.3s ease;
            box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
        }
        .btn-signin:hover {
            background-color: #0056b3;
            transform: scale(1.05);
            box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.3);
        }
        .container-custom {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-grow: 1;
            padding: 0 clamp(20px, 5vw, 10%);
            max-width: 1400px;
            margin: 0 auto;
        }
        .text-section {
            max-width: 50%;
        }
        .text-section h1 {
            font-size: clamp(40px, 10vw, 100px);
            font-weight: bold;
            line-height: 1.0;
            color: #00aaff;
            margin-bottom: clamp(10px, 2vw, 15px);
        }
        .text-section p {
            font-size: clamp(14px, 3vw, 16px);
            color: #555;
            margin-top: clamp(8px, 1.5vw, 10px);
            line-height: 1.5;
        }
        .btn-start {
            background: linear-gradient(to right, #ffcc00, #0088ff);
            border: none;
            padding: clamp(10px, 2vw, 12px) clamp(20px, 4vw, 24px);
            font-size: clamp(16px, 4vw, 18px);
            color: white;
            border-radius: 50px;
            transition: all 0.3s ease-in-out;
            text-decoration: none;
            display: inline-block;
            margin-top: clamp(15px, 3vw, 20px);
            box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
        }
        .btn-start:hover {
            opacity: 0.9;
            transform: scale(1.05);
            box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.3);
        }
        .image-section img {
            max-width: 100%;
            height: auto;
            transition: transform 0.3s ease;
        }
        .image-section img:hover {
            transform: scale(1.02);
        }
        @media (max-width: 992px) {
            .container-custom {
                flex-direction: column;
                padding: clamp(15px, 4vw, 20px);
                text-align: center;
            }
            .text-section {
                max-width: 80%;
            }
            .text-section h1 {
                font-size: clamp(36px, 8vw, 70px);
            }
            .image-section img {
                max-width: clamp(250px, 60vw, 350px);
                margin-top: clamp(15px, 3vw, 20px);
            }
        }
        @media (max-width: 768px) {
            .text-section {
                max-width: 100%;
            }
            .text-section h1 {
                font-size: clamp(30px, 7vw, 60px);
            }
            .btn-start {
                padding: clamp(8px, 1.8vw, 10px) clamp(18px, 3.5vw, 20px);
            }
        }
        @media (max-width: 480px) {
            .navbar {
                padding: clamp(8px, 2vw, 10px) clamp(15px, 3vw, 20px);
            }
            .container-custom {
                padding: clamp(10px, 3vw, 15px);
            }
            .text-section h1 {
                font-size: clamp(24px, 6vw, 40px);
            }
            .text-section p {
                font-size: clamp(12px, 2.5vw, 14px);
            }
            .btn-start {
                width: 100%;
                padding: clamp(8px, 1.5vw, 10px) clamp(15px, 3vw, 18px);
                font-size: clamp(14px, 3.5vw, 16px);
            }
            .image-section img {
                max-width: clamp(200px, 50vw, 300px);
            }
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <div class="d-flex align-items-center">
                <img src="images/logo.png" class="logo img-thumbnail" alt="Logo">
                <a class="navbar-brand" href="#">Prep Ace</a>
            </div>
            <!-- Sign In Button -->
            <button class="btn btn-signin" id="signInButton">Sign In</button>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container-custom">
        <!-- Left: Text Content -->
        <div class="text-section">
            <h1>Prepare, <br> Perform, <br> Perfect!</h1>
            <p>Our Mock Interview Portal is an innovative platform designed to help students prepare for the competitive job market. 
                It provides a seamless way for students to enhance their skills, boost confidence, and get ready for real-world interviews
                through tailored mock exams and interviews.</p>
            <a href="login.php" class="btn btn-start">Get Started →</a>
        </div>
        <!-- Right: Image -->
        <div class="image-section">
            <img src="images/welcome.png" alt="Mock Interview Portal">
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        document.getElementById("signInButton").addEventListener("click", function () {
            window.location.href = "login.php"; // Redirect to login page
        });
    </script>
</body>
</html>