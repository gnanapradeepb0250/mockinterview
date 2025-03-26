<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile - Mock Interview</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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

            a {
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
        <a href="dashboard.php">Back to Dashboard</a>
    </div>

    <script>
        // Fetch user profile data when the page loads
        document.addEventListener('DOMContentLoaded', function () {
            fetch('/mockinterview/profile.php?action=get_profile')
                .then(response => {
                    console.log('Fetch response status:', response.status, response.statusText);
                    if (!response.ok) {
                        return response.text().then(text => {
                            throw new Error(`Network response was not ok: ${response.status} ${response.statusText} - ${text}`);
                        });
                    }
                    return response.json();
                })
                .then(data => {
                    console.log('Fetch response data:', data);
                    if (data.success) {
                        const user = data.user;

                        // Update user details
                        document.getElementById('first-name').textContent = user.first_name || 'N/A';
                        document.getElementById('last-name').textContent = user.last_name || 'N/A';
                        document.getElementById('email').textContent = user.email || 'N/A';
                        document.getElementById('mobile').textContent = user.mobile || 'N/A';
                        document.getElementById('location').textContent = user.location || 'N/A';
                        document.getElementById('created-at').textContent = user.created_at || 'N/A';
                    } else {
                        console.error('Fetch error response:', data.error);
                        alert('Error: ' + data.error);
                        document.querySelectorAll('.field span').forEach(span => {
                            span.textContent = 'Error loading data';
                        });
                    }
                })
                .catch(error => {
                    console.error('Error fetching profile:', error.message);
                    alert('Failed to load profile data: ' + error.message);
                    document.querySelectorAll('.field span').forEach(span => {
                        span.textContent = 'Error loading data';
                    });
                });
        });
    </script>
</body>
</html>