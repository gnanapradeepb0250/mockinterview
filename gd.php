<?php include("navbar.php")?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Group Discussion - AI & Semiconductors</title>
    <style>
        body {
    font-family: 'Arial', sans-serif;
    background: url('images/gd.jpg') no-repeat center center fixed;
    background-size: cover;
    color: #333;
    margin: 0;
    padding: 20px;
}

        .container {
            max-width: 800px;
            margin: auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #444;
        }
        .topic-selector {
            text-align: center;
            margin-bottom: 20px;
        }
        select {
            padding: 10px;
            font-size: 16px;
        }
        .chat-box {
            display: flex;
            flex-direction: column;
            gap: 10px;
            max-height: 400px;
            overflow-y: auto;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background: #f9f9f9;
        }
        .message {
            padding: 10px;
            border-radius: 10px;
            max-width: 75%;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .user1 { background-color: #f8bbd0; align-self: flex-start; }
        .user2 { background-color: #c5e1a5; align-self: flex-end; }
        .user3 { background-color: #b3e5fc; align-self: flex-start; }
        .user4 { background-color: #ffd54f; align-self: flex-end; }
        .participant {
            font-weight: bold;
            margin-bottom: 5px;
        }
        @media (max-width: 600px) {
            .container {
                padding: 15px;
            }
            .message {
                font-size: 14px;
            }
        }
        .dialogue-box {
    background: rgba(255, 255, 255, 0.2); /* More transparency */
    backdrop-filter: blur(5px); /* Adds a subtle blur effect */
    padding: 10px;
    border-radius: 8px;
    margin: 10px 0;
    border: 1px solid rgba(255, 255, 255, 0.4); /* Slight border to keep readability */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Soft shadow */
    font-weight: bold;
}
.rahul { background: rgba(255, 99, 132, 0.3); }
.neha { background: rgba(144, 238, 144, 0.3); }
.amit { background: rgba(135, 206, 250, 0.3); }
.sanya { background: rgba(255, 206, 86, 0.3); }
.vikram { background: rgba(255, 182, 193, 0.3); }

    </style>
</head>
<body>
    <div class="container">
        <h1>Group Discussion Topics</h1>
        <div class="topic-selector">
            <label for="topic">Choose a topic: </label>
            <select id="topic">
                <option value="Artificial Intelligence">Artificial Intelligence</option>
                <option value="Semiconductors in AI">Semiconductors in AI</option>
            </select>
        </div>
        <div class="chat-box" id="discussion"></div>
    </div>

    <script>
        function fetchDiscussion() {
            const topic = document.getElementById("topic").value;
            fetch(`api/fetch_gd_topics.php?topic=${topic}`)
                .then(response => response.json())
                .then(data => {
                    const chatBox = document.getElementById("discussion");
                    chatBox.innerHTML = "";
                    let colors = ["user1", "user2", "user3", "user4"];
                    data.forEach((item, index) => {
                        const msgDiv = document.createElement("div");
                        msgDiv.classList.add("message", colors[index % colors.length]);
                        msgDiv.innerHTML = `<div class="participant">${item.participant_name}:</div> ${item.dialogue}`;
                        chatBox.appendChild(msgDiv);
                    });
                    chatBox.scrollTop = chatBox.scrollHeight;  // Auto-scroll to latest message
                })
                .catch(error => console.error("Error fetching topics:", error));
        }

        document.getElementById("topic").addEventListener("change", fetchDiscussion);
        document.addEventListener("DOMContentLoaded", fetchDiscussion);
    </script>
</body>
</html>
