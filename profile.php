<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>3D Profile Page</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        .profile-container {
            max-width: 800px;
            margin: 40px auto;
            perspective: 1000px;
        }

        .profile-card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
            padding: 30px;
            transform-style: preserve-3d;
            transition: transform 0.3s ease;
            display: none; /* Hidden until data loads */
        }

        .profile-card:hover {
            transform: rotateY(5deg) rotateX(5deg);
        }

        #profile-pic {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            display: block;
            margin: 0 auto 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        #user-name {
            text-align: center;
            font-size: 2rem;
            color: #333;
            margin-bottom: 20px;
        }

        #profile-form {
            display: grid;
            gap: 15px;
        }

        label {
            color: #666;
            font-size: 0.9rem;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            background: #f9f9f9;
        }

        .error {
            text-align: center;
            color: #ff0000;
            padding: 20px;
            display: none;
        }

        @media (max-width: 768px) {
            .profile-container {
                margin: 20px;
            }

            .profile-card {
                padding: 20px;
            }

            #user-name {
                font-size: 1.5rem;
            }

            #profile-pic {
                width: 120px;
                height: 120px;
            }
        }

        @media (max-width: 480px) {
            #profile-pic {
                width: 100px;
                height: 100px;
            }

            input {
                padding: 8px;
            }
        }
    </style>
</head>
<body onload="loadProfile()">
    <div class="profile-container">
        <div class="profile-card" id="profileCard">
            <img id="profile-pic" src="default-avatar.png" alt="Profile Picture">
            <h2 id="user-name">Loading...</h2>
            <form id="profile-form">
                <label>First Name:</label>
                <input type="text" id="first_name" readonly>
                
                <label>Last Name:</label>
                <input type="text" id="last_name" readonly>
                
                <label>Email:</label>
                <input type="email" id="email" readonly>
                
                <label>Mobile:</label>
                <input type="text" id="mobile" readonly>
                
                <label>Location:</label>
                <input type="text" id="location" readonly>
                
                <label>Member Since:</label>
                <input type="text" id="created_at" readonly>
            </form>
        </div>
        <div class="error" id="errorMessage"></div>
    </div>

    <script>
        function loadProfile() {
            const profileCard = $("#profileCard");
            const errorMessage = $("#errorMessage");

            $.ajax({
                url: "api/profile.php",
                type: "GET",
                data: { action: "get_profile" },
                dataType: "json",
                success: function(data) {
                    console.log("Received data:", data);

                    if (!data || !data.success || !data.user) {
                        profileCard.hide();
                        errorMessage.show().text(data?.error || "Failed to load profile");
                        window.location.href = "login.php"; // Redirect to login if not authenticated
                        return;
                    }

                    let user = data.user;
                    profileCard.show();
                    errorMessage.hide();

                    $("#user-name").text(`${user.first_name} ${user.last_name}`);
                    $("#first_name").val(user.first_name || "N/A");
                    $("#last_name").val(user.last_name || "N/A");
                    $("#email").val(user.email || "N/A");
                    $("#mobile").val(user.mobile || "N/A");
                    $("#location").val(user.location || "N/A");
                    $("#created_at").val(user.created_at ? 
                        new Date(user.created_at).toLocaleDateString('en-US', {
                            month: 'long', day: 'numeric', year: 'numeric'
                        }) : "N/A"
                    );

                    if (user.profile_pic) {
                        $("#profile-pic").attr("src", user.profile_pic);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("Error:", status, error);
                    profileCard.hide();
                    errorMessage.show().text("Error loading profile");
                }
            });
        }
    </script>
</body>
</html>