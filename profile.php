<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #e0c3fc, #8ec5fc);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 20px;
        }

        .profile-container {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            text-align: center;
        }

        .field {
            margin: 15px 0;
            text-align: left;
        }

        .field label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        .field span {
            display: block;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background: #f9f9f9;
            word-break: break-word;
        }

        .error-message {
            color: red;
            margin-top: 15px;
            display: none;
        }

        .retry-btn {
            display: none;
            margin-top: 15px;
            padding: 10px 20px;
            background: #dc3545;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .retry-btn:hover {
            background: #b02a37;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }

        a:hover {
            background: #0056b3;
        }

        @media (max-width: 768px) {
            body {
                padding: 15px;
            }

            .profile-container {
                padding: 20px;
                max-width: 100%;
            }

            a, .retry-btn {
                width: 100%;
                text-align: center;
            }
        }

        @media (max-width: 480px) {
            .profile-container {
                padding: 15px;
            }

            .field {
                margin: 10px 0;
            }

            .field span {
                padding: 8px;
                font-size: 0.9em;
            }
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <h2>User Profile</h2>
        <div class="field">
            <label>First Name:</label>
            <span id="first-name">Loading...</span>
        </div>
        <div class="field">
            <label>Last Name:</label>
            <span id="last-name">Loading...</span>
        </div>
        <div class="field">
            <label>Email:</label>
            <span id="email">Loading...</span>
        </div>
        <div class="field">
            <label>Mobile:</label>
            <span id="mobile">Loading...</span>
        </div>
        <div class="field">
            <label>Location:</label>
            <span id="location">Loading...</span>
        </div>
        <div class="field">
            <label>Joined On:</label>
            <span id="created-at">Loading...</span>
        </div>

        <p id="error-message" class="error-message"></p>
        <button id="retry-btn" class="retry-btn" onclick="fetchUserProfile()">Retry</button>

        <a href="dashboard.php">Back to Dashboard</a>
    </div>

    <script>
        async function fetchUserProfile() {
            const errorMsg = document.getElementById('error-message');
            const retryBtn = document.getElementById('retry-btn');
            errorMsg.style.display = 'none';
            retryBtn.style.display = 'none';

            try {
                const response = await fetch('/repo/mockinterview/profile.php?action=get_profile');

                if (!response.ok) {
                    throw new Error(`HTTP Error: ${response.status} - ${response.statusText}`);
                }

                const data = await response.json();

                if (data.success) {
                    const user = data.user;
                    document.getElementById('first-name').textContent = user.first_name || 'N/A';
                    document.getElementById('last-name').textContent = user.last_name || 'N/A';
                    document.getElementById('email').textContent = user.email || 'N/A';
                    document.getElementById('mobile').textContent = user.mobile || 'N/A';
                    document.getElementById('location').textContent = user.location || 'N/A';
                    document.getElementById('created-at').textContent = user.created_at || 'N/A';
                } else {
                    showError(data.error || 'Failed to load user data');
                }
            } catch (error) {
                showError(error.message);
            }
        }

        function showError(message) {
            console.error('Profile Fetch Error:', message);
            document.getElementById('error-message').textContent = `Error: ${message}`;
            document.getElementById('error-message').style.display = 'block';
            document.getElementById('retry-btn').style.display = 'inline-block';

            document.querySelectorAll('.field span').forEach(span => {
                span.textContent = 'Error loading data';
            });
        }

        document.addEventListener('DOMContentLoaded', fetchUserProfile);
    </script>
</body>
</html>
