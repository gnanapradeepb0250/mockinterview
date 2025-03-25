<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #e0c3fc, #8ec5fc);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .profile-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        .profile-pic {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 20px;
            object-fit: cover;
        }
        .profile-pic-placeholder {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background: #ccc;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0 auto 20px;
            font-size: 14px;
            color: white;
        }
        .field {
            margin: 10px 0;
            text-align: left;
        }
        .field label {
            font-weight: bold;
        }
        .field span {
            display: block;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <div id="profile-pic-container">
            <div class="profile-pic-placeholder">Profile Picture</div>
        </div>
        <div class="field">
            <label>First Name:</label>
            <span id="first-name"></span>
        </div>
        <div class="field">
            <label>Last Name:</label>
            <span id="last-name"></span>
        </div>
        <div class="field">
            <label>Email:</label>
            <span id="email"></span>
        </div>
    </div>

    <script>
        // Fetch user profile data when the page loads
        document.addEventListener('DOMContentLoaded', function () {
            fetch('profile.php?action=get_profile')
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    return response.json();
                })
                .then(data => {
                    if (data.success) {
                        const user = data.user;

                        // Update profile picture
                        const profilePicContainer = document.getElementById('profile-pic-container');
                        if (user.profile_pic) {
                            const img = document.createElement('img');
                            img.src = user.profile_pic;
                            img.className = 'profile-pic';
                            profilePicContainer.innerHTML = '';
                            profilePicContainer.appendChild(img);
                        } else {
                            profilePicContainer.innerHTML = '<div class="profile-pic-placeholder">No Picture</div>';
                        }

                        // Update user details
                        document.getElementById('first-name').textContent = user.first_name || 'N/A';
                        document.getElementById('last-name').textContent = user.last_name || 'N/A';
                        document.getElementById('email').textContent = user.email || 'N/A';
                    } else {
                        alert('Error: ' + data.error);
                    }
                })
                .catch(error => {
                    console.error('Error fetching profile:', error);
                    alert('Failed to load profile data.');
                });
        });
    </script>
</body>
</html>