<?php 
session_start();
$skill = isset($_GET["skills"]) ? $_GET["skills"] : ''; 

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Skill Test</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #f0f2f5;
            margin: 0;
            /* Disable text selection */
            -webkit-user-select: none;  /* Chrome, Safari, Opera */
            -moz-user-select: none;     /* Firefox */
            -ms-user-select: none;      /* IE/Edge */
            user-select: none;          /* Standard syntax */
        }
        .container {
            max-width: 1070px;
            margin: 20px auto;
            background: #e6e1e1;
            padding: 30px;
            border-radius: 10px;
            background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .question {
            margin-bottom: 20px;
        }
        .question p {
            font-weight: bold;
        }
        .question textarea {
            width: 100%;
            height: 100px;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        button {
            width: 100%;
            padding: 12px;
            background: #007bff;
            color: #fff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background: #0056b3;
        }

        /* Pyramid Loader Styles */
        .backdrop {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(49, 49, 49, 0.95);
            justify-content: center;
            align-items: center;
            z-index: 9999;
        }
        
        .loader-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .pyramid-loader {
            position: relative;
            width: 300px;
            height: 300px;
            display: block;
            transform-style: preserve-3d;
            transform: rotateX(-20deg);
        }
        
        .wrapper {
            position: relative;
            width: 100%;
            height: 100%;
            transform-style: preserve-3d;
            animation: spin 4s linear infinite;
        }
        
        .pyramid-loader .wrapper .side {
            width: 70px;
            height: 70px;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            transform-origin: center top;
            clip-path: polygon(50% 0%, 0% 100%, 100% 100%);
        }
        .pyramid-loader .wrapper .side1 {
            background: conic-gradient(#2BDEAC, #F028FD, #D8CCE6, #2F2585);
            transform: rotateZ(-30deg) rotateY(90deg);
        }
        .pyramid-loader .wrapper .side2 {
            transform: rotateZ(30deg) rotateY(90deg);
            background: conic-gradient(#2F2585, #D8CCE6, #F028FD, #2BDEAC);
        }
        .pyramid-loader .wrapper .side3 {
            transform: rotateX(30deg);
            background: conic-gradient(#2F2585, #D8CCE6, #F028FD, #2BDEAC);
        }
        .pyramid-loader .wrapper .side4 {
            transform: rotateX(-30deg);
            background: conic-gradient(#2BDEAC, #F028FD, #D8CCE6, #2F2585);
        }
        .pyramid-loader .wrapper .shadow {
            width: 60px;
            height: 60px;
            background: #8B5AD5;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            transform: rotateX(90deg) translateZ(-40px);
            filter: blur(12px);
        }
        
        .loading-text {
            color: #ffffff;
            font-size: 24px;
            margin-top: 20px;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        @keyframes spin {
            100% {
                transform: rotateY(360deg);
            }
        }
    </style>
</head>
<body 
   
>
<?php
include 'navbar.php';
?>
    <div class="container">
        <h2>Skill Test</h2>
        <form id="testForm">
            <input type="hidden" id="user_id" value="<?php echo htmlspecialchars($_SESSION['user_id']); ?>">
            <div id="questions"></div>
            <button type="button" id="submitBtn" onclick="submitAnswers()">Submit Answers</button>
        </form>
    </div>

    <!-- Pyramid Loading Animation -->
    <div class="backdrop" id="loadingOverlay">
        <div class="loader-container">
            <div class="pyramid-loader">
                <div class="wrapper">
                    <span class="side side1"></span>
                    <span class="side side2"></span>
                    <span class="side side3"></span>
                    <span class="side side4"></span>
                    <span class="shadow"></span>
                </div>  
            </div>
            <div class="loading-text">Hang on tight, almost there!</div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    // Disable copy-paste functionality
    document.addEventListener('copy', function(e) {
        e.preventDefault();
        return false;
    });

    document.addEventListener('paste', function(e) {
        e.preventDefault();
        return false;
    });

    document.addEventListener('cut', function(e) {
        e.preventDefault();
        return false;
    });

    // Disable keyboard shortcuts (Ctrl+C, Ctrl+V, Ctrl+X)
    document.addEventListener('keydown', function(e) {
        if (e.ctrlKey && (e.key === 'c' || e.key === 'v' || e.key === 'x')) {
            e.preventDefault();
            return false;
        }
    });

    $(document).ready(function() {
        const skill = "<?php echo htmlspecialchars($skill); ?>";

        if (skill) {
            $("#loadingOverlay").fadeIn(200); // Show loading while fetching questions
            $.ajax({
                url: 'api/fetch_questions.php',
                type: 'GET',
                data: { skills: skill },
                dataType: 'json',
                success: function(data) {
                    $("#loadingOverlay").fadeOut(200);
                    if (data.error) {
                        console.error("Error:", data.error);
                        alert('Failed to load questions: ' + data.error);
                        return;
                    }
                    
                    const questionContainer = $('#questions');
                    questionContainer.empty();
                    $.each(data, function(index, item) {
                        questionContainer.append(`
                            <div class="question">
                                <p>Q${index + 1}: ${item.question}</p>
                                <textarea name="answer[]" data-id="${item.id}" data-skill="${item.skills}" placeholder="Your answer..."></textarea>
                            </div>
                        `);
                    });
                },
                error: function(xhr, status, error) {
                    $("#loadingOverlay").fadeOut(200);
                    console.error('Error fetching questions:', error);
                    alert('Failed to load questions. Please try again.');
                }
            });
        } else {
            alert('No skill specified. Please select a skill to begin the test.');
        }
    });

    function submitAnswers() {
        $("#loadingOverlay").fadeIn(200);
        $("#submitBtn").prop("disabled", true).text("Submitting...");

        const user_id = $('#user_id').val();
        const formData = new FormData();
        formData.append('user_id', user_id);

        $('textarea').each(function() {
            formData.append('question_id[]', $(this).attr('data-id'));
            formData.append('skill[]', $(this).attr('data-skill'));
            formData.append('user_answer[]', $(this).val());
        });

        $.ajax({
            url: 'api/save_answers.php',
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            dataType: 'json',
            success: function(response) {
                if (response.success) {
                    evaluateAnswers(user_id);
                } else {
                    alert('Failed to submit answers: ' + response.message);
                    resetButton();
                }
            },
            error: function(xhr, status, error) {
                alert('Error submitting answers: ' + error);
                resetButton();
            }
        });
    }

    function evaluateAnswers(user_id) {
        $.ajax({
            url: 'api/evaluate_answers.php',
            type: 'POST',
            data: { user_id: user_id },
            dataType: 'json',
            success: function(response) {
                setTimeout(function() {
                    $("#loadingOverlay").fadeOut(200, function() {
                        window.location.href = 'solution.php';
                    });
                }, 1000); // Minimum 1 second display
            },
            error: function(xhr, status, error) {
                alert('Evaluation failed: ' + error);
                resetButton();
            }
        });
    }

    function resetButton() {
        $("#loadingOverlay").fadeOut(200);
        $("#submitBtn").prop("disabled", false).text("Submit Answers");
    }
    </script>
</body>
</html>