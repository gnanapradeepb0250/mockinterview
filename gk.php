<?php include("navbar.php")?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>General Knowledge Questions - Prep Ace</title>
    <!-- Meta Tags for SEO and Responsiveness -->
    <meta name="description" content="Explore a collection of general knowledge questions and answers to enhance your learning with Prep Ace.">
    <meta name="author" content="Prep Ace">
    <link rel="icon" type="image/png" href="images/favicon.png"> <!-- Add a favicon if available -->
    
    <!-- Bootstrap CSS (via CDN for reliability) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
    <style>
        :root {
            --primary-bg: linear-gradient(120deg, #f6d365 0%, #fda085 100%);
            --card-bg: #ffffff;
            --text-color: #333;
            --shadow-color: rgba(0, 0, 0, 0.2);
            --success-color: #66bb6a;
        }

        [data-theme="dark"] {
            --primary-bg: linear-gradient(120deg, #2c3e50, #34495e);
            --card-bg: #2d2d2d;
            --text-color: #ffffff;
            --shadow-color: rgba(0, 0, 0, 0.4);
            --success-color: #4caf50;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: var(--primary-bg);
            color: var(--text-color);
            margin: 0;
            padding: 20px;
            transition: all 0.3s ease;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .container {
            max-width: 1200px;
            width: 100%;
            margin: auto;
            background: var(--card-bg);
            border-radius: 10px;
            box-shadow: 0 8px 16px var(--shadow-color);
            padding: 20px;
            flex-grow: 1;
        }

        h1 {
            text-align: center;
            color: var(--text-color);
            margin-bottom: 20px;
            font-size: 2rem;
        }

        .question {
            background: #f4f4f9;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 8px var(--shadow-color);
            margin-bottom: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .question:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px var(--shadow-color);
        }

        .question p {
            font-weight: bold;
            color: var(--text-color);
            margin-bottom: 10px;
            font-size: 1.1rem;
        }

        .answer {
            background: #e8f5e9;
            border-left: 4px solid var(--success-color);
            padding: 10px;
            border-radius: 6px;
            margin-top: 10px;
            display: none; /* Start hidden for toggle */
        }

        .answer.show {
            display: block;
        }

        .toggle-answer {
            background: none;
            border: none;
            color: var(--success-color);
            cursor: pointer;
            font-weight: bold;
            padding: 5px 10px;
            font-size: 0.9rem;
            transition: color 0.3s ease;
        }

        .toggle-answer:hover {
            color: #388e3c;
        }

        #loading, #error {
            text-align: center;
            font-size: 1.1rem;
            margin-top: 20px;
            color: var(--text-color);
        }

        #loading {
            display: block;
        }

        #error {
            display: none;
            color: #d32f2f;
        }

        .back-to-top {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: var(--success-color);
            color: #ffffff;
            border: none;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            font-size: 1rem;
            cursor: pointer;
            box-shadow: 0 4px 8px var(--shadow-color);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .back-to-top:hover {
            transform: scale(1.1);
            box-shadow: 0 6px 12px var(--shadow-color);
        }

        .back-to-top:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(102, 187, 106, 0.3);
        }

        .load-more {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background: var(--success-color);
            color: #ffffff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 1rem;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        .load-more:hover {
            background: #388e3c;
            transform: translateY(-2px);
        }

        .load-more:disabled {
            background: #cccccc;
            cursor: not-allowed;
        }

        /* Dark Mode Toggle */
        .theme-toggle {
            position: fixed;
            top: 20px;
            right: 20px;
            background: var(--card-bg);
            border: 1px solid var(--text-color);
            border-radius: 20px;
            padding: 5px;
            cursor: pointer;
            width: 40px;
            height: 20px;
            display: flex;
            align-items: center;
            transition: all 0.3s ease;
        }

        .theme-toggle span {
            width: 16px;
            height: 16px;
            background: var(--success-color);
            border-radius: 50%;
            position: absolute;
            left: 5px;
            transition: transform 0.3s ease;
        }

        .theme-toggle.active span {
            transform: translateX(20px);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 15px;
                margin: 10px;
            }

            h1 {
                font-size: 1.5rem;
            }

            .question, .answer {
                padding: 10px;
            }

            .question p {
                font-size: 1rem;
            }

            .back-to-top {
                bottom: 10px;
                right: 10px;
                width: 30px;
                height: 30px;
                font-size: 0.9rem;
            }

            .theme-toggle {
                top: 10px;
                right: 10px;
                width: 30px;
                height: 15px;
            }

            .theme-toggle span {
                width: 12px;
                height: 12px;
            }
        }

        @media (max-width: 480px) {
            .container {
                padding: 10px;
                margin: 5px;
            }

            h1 {
                font-size: 1.2rem;
            }

            .question p, .answer {
                font-size: 0.9rem;
            }

            .load-more {
                padding: 8px 16px;
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
    
    <div class="container">
        <h1>General Knowledge Questions - Prep Ace</h1>
        <button id="themeToggle" class="theme-toggle" aria-label="Toggle Dark Mode">
            <span></span>
        </button>
        <div id="loading">Loading questions...</div>
        <div id="questions"></div>
        <div id="error" style="display: none;">Failed to load questions. Please try again.</div>
        <button id="backToTop" class="back-to-top" style="display: none;">↑</button>
        <button id="loadMore" class="load-more" style="display: none;">Load More</button>
    </div>

    <!-- jQuery (via CDN with fallback) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        if (!window.jQuery) {
            document.write('<script src="js/jquery-3.6.0.min.js"><\/script>');
        }
    </script>

    <!-- Bootstrap JS (via CDN) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        // Dark Mode Toggle
        const themeToggle = document.getElementById('themeToggle');
        themeToggle.addEventListener('click', () => {
            document.body.dataset.theme = document.body.dataset.theme === 'dark' ? 'light' : 'dark';
            themeToggle.classList.toggle('active');
            // Save preference in localStorage
            localStorage.setItem('theme', document.body.dataset.theme);
        });

        // Load saved theme
        const savedTheme = localStorage.getItem('theme') || 'light';
        document.body.dataset.theme = savedTheme;
        if (savedTheme === 'dark') {
            themeToggle.classList.add('active');
        }

        // Back to Top Button
        const backToTop = document.getElementById('backToTop');
        window.addEventListener('scroll', () => {
            backToTop.style.display = window.scrollY > 300 ? 'block' : 'none';
        });

        backToTop.addEventListener('click', () => {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });

        // AJAX for Questions with Pagination
        let currentPage = 1;
        const questionsPerPage = 5;

        function fetchQuestions(page = 1) {
            $('#loading').show();
            $('#error').hide();
            $('#questions').empty();

            $.ajax({
                url: "api/fetch_gkquestions.php",
                type: "GET",
                dataType: "json",
                data: { page: page, limit: questionsPerPage },
                success: function(response) {
                    $('#loading').hide();

                    if (response.success && response.questions.length > 0) {
                        const questionContainer = $('#questions');
                        response.questions.forEach((item, index) => {
                            const questionDiv = `
                                <div class="question" data-index="${(page - 1) * questionsPerPage + index}">
                                    <p>Q${(page - 1) * questionsPerPage + index + 1}: ${item.question}</p>
                                    <button class="toggle-answer">Show Answer</button>
                                    <div class="answer">
                                        <strong>Answer:</strong> ${item.answer}
                                    </div>
                                </div>
                            `;
                            questionContainer.append(questionDiv);
                        });

                        // Initialize toggle functionality
                        $('.toggle-answer').click(function() {
                            $(this).next('.answer').toggleClass('show');
                            $(this).text($(this).text() === 'Show Answer' ? 'Hide Answer' : 'Show Answer');
                        });

                        // Show Load More button if there are more questions
                        $('#loadMore').toggle(response.total > page * questionsPerPage).off('click').click(() => {
                            currentPage++;
                            fetchQuestions(currentPage);
                        });
                    } else {
                        $('#error').show().text("No more questions found.");
                        $('#loadMore').hide();
                    }
                },
                error: function(xhr, status, error) {
                    $('#loading').hide();
                    $('#error').show().text(`Failed to load questions. Error: ${error || 'Please try again.'}`);
                    console.error('AJAX Error:', status, error);
                },
                timeout: 5000 // 5-second timeout
            });
        }

        // Initial load
        fetchQuestions(currentPage);

        // Copy Answer Functionality (Optional Enhancement)
        $('.question').on('click', '.answer', function(e) {
            if (e.target.tagName !== 'BUTTON') {
                const text = $(this).text().replace('Answer:', '').trim();
                navigator.clipboard.writeText(text).then(() => {
                    alert('Answer copied to clipboard!');
                }).catch(err => {
                    console.error('Copy failed:', err);
                    alert('Failed to copy answer. Please try manually.');
                });
            }
        });
    </script>
</body>
</html>