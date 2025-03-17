<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>3D Profile Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        body {
            background: linear-gradient(135deg, #E0F7FA, #E1BEE7);
            min-height: 100vh;
            margin: 0;
            font-family: 'Poppins', sans-serif;
            padding: 20px;
        }

        .profile-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100%;
        }

        .profile-card {
            background: rgba(255, 255, 255, 0.3);
            border-radius: 20px;
            padding: 2rem;
            width: 100%;
            max-width: 500px;
            text-align: center;
            box-shadow: 10px 10px 30px rgba(0, 0, 0, 0.15);
            backdrop-filter: blur(15px);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            position: relative;
            overflow: hidden;
        }

        .profile-pic-wrapper {
            position: relative;
            display: inline-block;
            margin-bottom: 1rem;
        }

        .profile-card img {
            width: clamp(80px, 20vw, 100px);
            height: clamp(80px, 20vw, 100px);
            border-radius: 50%;
            border: 4px solid white;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            object-fit: cover;
        }

        .info {
            text-align: left;
            margin-top: 1rem;
        }

        .info label {
            font-weight: 600;
            color: #333;
            font-size: clamp(12px, 3vw, 14px);
        }

        .info input {
            width: 100%;
            border: none;
            padding: 12px;
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.6);
            box-shadow: inset 4px 4px 8px rgba(0, 0, 0, 0.1), inset -4px -4px 8px rgba(255, 255, 255, 0.6);
            color: #333;
            font-size: clamp(14px, 4vw, 16px);
            outline: none;
            transition: 0.3s;
        }
    </style>
</head>
<body onload="loadProfile()">
    <div class="profile-container">
        <div class="profile-card">
            <div class="profile-pic-wrapper">
                <img id="profile-pic" src="default-avatar.png" alt="Profile Picture">
            </div>
            <h4 id="user-name" class="mt-3 text-dark">Your Name</h4>
            <div class="info mt-3">
                <div class="mb-3">
                    <label>First Name:</label>
                    <input type="text" id="first_name" class="form-control" disabled>
                </div>
                <div class="mb-3">
                    <label>Last Name:</label>
                    <input type="text" id="last_name" class="form-control" disabled>
                </div>
                <div class="mb-3">
                    <label>Email:</label>
                    <input type="email" id="email" class="form-control" disabled>
                </div>
                <div class="mb-3">
                    <label>Phone:</label>
                    <input type="text" id="mobile" class="form-control" disabled>
                </div>
                <div class="mb-3">
                    <label>Address:</label>
                    <input type="text" id="location" class="form-control" disabled>
                </div>
            </div>
        </div>
    </div>

    <script>
        function loadProfile() {
            let xhr = new XMLHttpRequest();
            xhr.open("GET", "api/profile.php?action=get_profile", true);
            xhr.onload = function () {
                if (xhr.status == 200) {
                    let data = JSON.parse(xhr.responseText);
                    if (!data.success) {
                        alert(data.error);
                        window.location.href = "login.php";
                        return;
                    }
                    document.getElementById("first_name").value = data.first_name || "";
                    document.getElementById("last_name").value = data.last_name || "";
                    document.getElementById("email").value = data.email || "";
                    document.getElementById("mobile").value = data.mobile || "";
                    document.getElementById("location").value = data.location || "";
                    document.getElementById("user-name").innerText = `${data.first_name} ${data.last_name}`;
                    if (data.profile_pic) {
                        document.getElementById("profile-pic").src = data.profile_pic;
                    }
                }
            };
            xhr.send();
        }
    </script>
</body>
</html>
