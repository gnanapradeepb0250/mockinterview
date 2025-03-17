<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> 
    <link rel="stylesheet" href="css/styles.css" />
    <title>Sign in & Sign up Form</title>
</head>
<body>
    <div class="container">
        <div class="forms-container">
            <div class="signin-signup">
                <!-- Sign In Form -->
                <form action="#" class="sign-in-form" id="loginForm">
                    <h2 class="title">Sign in</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" name="email" placeholder="Username" required />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="password" placeholder="Password" required />
                    </div>
                    <input type="submit" value="Login" class="btn solid" /> 
                    <!-- <p class="social-text">Or Sign in with social platforms</p>
                    <div class="social-media">
                        <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-google"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
                    </div> -->
                </form>

                <!-- Sign Up Form -->
                <form action="#" class="sign-up-form" id="registerForm">
                    <h2 class="title">Sign up</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" name="first_name" placeholder="firstname" required />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-envelope"></i>
                        <input type="text" name="last_name" placeholder="lastname" required />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-envelope"></i>
                        <input type="email" name="email" placeholder="Email" required />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-envelope"></i>
                        <input type="mobile" name="mobile" placeholder="mobile" required />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="password" placeholder="Password" required />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-envelope"></i>
                        <input type="location" name="location" placeholder="location" required />
                       </div>
                    <input type="submit" class="btn" value="Sign up" />
                    
                    <!-- <div class="social-media">
                        <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-google"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
                    </div>  -->
                </form>
            </div>
        </div>

        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    <h3>New here?</h3>
                    <p>Join us and explore new opportunities.</p>
                    <button class="btn transparent" id="sign-up-btn">Sign up</button>
                </div>
                <img src="https://i.ibb.co/6HXL6q1/Privacy-policy-rafiki.png" class="image" alt="" />
            </div>
            <div class="panel right-panel">
                <div class="content">
                    <h3>One of us?</h3>
                    <p>Welcome back! Log in to continue.</p>
                    <button class="btn transparent" id="sign-in-btn">Sign in</button>
                </div>
                <img src="https://i.ibb.co/nP8H853/Mobile-login-rafiki.png" class="image" alt="" />
            </div>
        </div>
    </div>

    <script>
        // Toggle between Sign In and Sign Up
        const sign_in_btn = document.querySelector("#sign-in-btn");
        const sign_up_btn = document.querySelector("#sign-up-btn");
        const container = document.querySelector(".container");

        sign_up_btn.addEventListener("click", () => {
            container.classList.add("sign-up-mode");
        });

        sign_in_btn.addEventListener("click", () => {
            container.classList.remove("sign-up-mode");
        });

        $('#registerForm').on('submit', function (e) {
    e.preventDefault();
    const registerData = new FormData(this);

    $.ajax({
        url: 'api/register.php',
        type: 'POST',
        data: registerData,
        contentType: false,
        processData: false,
        success: function (response) {
            try {
                response = JSON.parse(response);
                if (response.success) {
                    alert(response.message);
                    window.location.href = 'login.php';
                } else {
                    alert(response.message);
                }
            } catch (error) {
                alert('Registration failed. Try again.');
            }
        },
        error: function () {
            alert('Server error. Try again.');
        }
    });
});

// Login Form Submission
$('#loginForm').on('submit', function (e) {
    e.preventDefault();
    const loginData = new FormData(this);

    $.ajax({
        url: 'api/login.php',
        type: 'POST',
        data: loginData,
        contentType: false,
        processData: false,
        success: function (response) {
            try {
                response = JSON.parse(response);
                if (response.success) {
                    alert(response.message);
                    window.location.href = 'homes.php';
                } else {
                    alert(response.message);
                }
            } catch (error) {
                alert('Invalid response. Try again.');
            }
        },
        error: function () {
            alert('Server error. Try again.');
        }
    });
});
    </script>
</body>
</html>
