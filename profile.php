<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        .profile-container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .profile-field {
            margin: 10px 0;
        }
        .profile-field label {
            font-weight: bold;
            display: inline-block;
            width: 120px;
        }
        .loading {
            text-align: center;
            display: none;
        }
        .error {
            color: red;
            text-align: center;
            display: none;
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <h2>User Profile</h2>
        <div class="loading">Loading...</div>
        <div class="error"></div>
        <div class="profile-field">
            <label>First Name:</label>
            <span id="first_name"></span>
        </div>
        <div class="profile-field">
            <label>Last Name:</label>
            <span id="last_name"></span>
        </div>
        <div class="profile-field">
            <label>Email:</label>
            <span id="email"></span>
        </div>
        <div class="profile-field">
            <label>Phone:</label>
            <span id="phone"></span>
        </div>
        <div class="profile-field">
            <label>Address:</label>
            <span id="address"></span>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            loadUserProfile();
        });

        function loadUserProfile() {
            const loading = document.querySelector('.loading');
            const error = document.querySelector('.error');
            
            loading.style.display = 'block';
            error.style.display = 'none';
            const xhr = new XMLHttpRequest();
            xhr.open('POST', 'get_profile.php', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onload = function() {
                loading.style.display = 'none';
                if (xhr.status === 200) {
                    try {
                        const response = JSON.parse(xhr.responseText);
                        if (response.success) {
                            document.getElementById('first_name').textContent = response.data.first_name;
                            document.getElementById('last_name').textContent = response.data.last_name;
                            document.getElementById('email').textContent = response.data.email;
                            document.getElementById('phone').textContent = response.data.phone;
                            document.getElementById('address').textContent = response.data.address;
                        } else {
                            error.textContent = response.message;
                            error.style.display = 'block';
                        }
                    } catch (e) {
                        error.textContent = 'Error processing response';
                        error.style.display = 'block';
                    }
                } else {
                    error.textContent = 'Server error occurred';
                    error.style.display = 'block';
                }
            };
            xhr.onerror = function() {
                loading.style.display = 'none';
                error.textContent = 'Network error occurred';
                error.style.display = 'block';
            };
            const userId = 1; 
            xhr.send('user_id=' + encodeURIComponent(userId));
        }
    </script>
</body>
</html>