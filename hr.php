<?php include("navbar.php")?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Prepare for HR interviews with realistic dialog-style questions and answers between HR and interview attendees on Prep Ace.">
    <title>HR Interview Questions - Prep Ace</title>
    
    <!-- Meta Tags for SEO and Responsiveness -->
    <meta name="author" content="Prep Ace">
    <link rel="icon" type="image/png" href="images/favicon.png"> <!-- Add a favicon if available -->
    
    <!-- Bootstrap CSS (via CDN for reliability) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
    <style>
        :root {
            --primary-bg: linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%);
            --card-bg: #ffffff;
            --text-color: #333;
            --shadow-color: rgba(0, 0, 0, 0.15);
            --hr-color: #2c3e50;
            --attendee-color: #66bb6a;
            --success-color: #4caf50;
        }

        [data-theme="dark"] {
            --primary-bg: linear-gradient(120deg, #2c3e50, #34495e);
            --card-bg: #2d2d2d;
            --text-color: #ffffff;
            --shadow-color: rgba(0, 0, 0, 0.4);
            --hr-color: #a1c4fd;
            --attendee-color: #4caf50;
            --success-color: #66bb6a;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: var(--primary-bg);
            color: var(--text-color);
            line-height: 1.6;
            padding: clamp(1rem, 2vw, 2rem);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            transition: all 0.3s ease;
        }

        .container {
            max-width: 1200px;
            width: 100%;
            margin: 0 auto;
            background: rgba(var(--card-bg), 0.95);
            border-radius: 12px;
            box-shadow: 0 10px 20px var(--shadow-color);
            padding: clamp(1.5rem, 3vw, 2rem);
            flex-grow: 1;
        }

        h1 {
            text-align: center;
            color: var(--hr-color);
            margin-bottom: clamp(1.5rem, 3vw, 2rem);
            font-size: clamp(1.8rem, 4vw, 2.5rem);
            font-weight: 700;
        }

        .dialog {
            display: flex;
            flex-direction: column;
            gap: clamp(0.8rem, 1.5vw, 1rem);
        }

        .hr-message, .attendee-message {
            max-width: clamp(70%, 80%, 90%);
            padding: clamp(0.8rem, 1.5vw, 1rem);
            border-radius: 8px;
            box-shadow: 0 4px 12px var(--shadow-color);
            margin-bottom: clamp(0.5rem, 1vw, 1rem);
            transition: transform 0.2s ease, opacity 0.3s ease;
        }

        .hr-message {
            background: #f8f9fa;
            color: var(--hr-color);
            align-self: flex-start;
        }

        .attendee-message {
            background: #e8f5e9;
            color: var(--attendee-color);
            align-self: flex-end;
            border-left: 5px solid var(--attendee-color);
        }

        .hr-message:hover, .attendee-message:hover {
            transform: translateY(-2px);
            opacity: 0.9;
        }

        .hr-message p, .attendee-message p {
            margin: 0;
            font-size: clamp(0.95rem, 1.5vw, 1.05rem);
        }

        .hr-message strong, .attendee-message strong {
            font-weight: 600;
        }

        #loading, #error {
            text-align: center;
            font-size: clamp(0.9rem, 1.5vw, 1.1rem);
            margin-top: clamp(0.8rem, 1.5vw, 1rem);
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
            bottom: clamp(1rem, 2vw, 2rem);
            right: clamp(1rem, 2vw, 2rem);
            background: var(--success-color);
            color: #ffffff;
            border: none;
            border-radius: 50%;
            width: clamp(2rem, 3vw, 2.5rem);
            height: clamp(2rem, 3vw, 2.5rem);
            font-size: clamp(0.9rem, 2vw, 1rem);
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
            box-shadow: 0 0 0 3px rgba(76, 175, 80, 0.3);
        }

        .load-more {
            display: block;
            margin: clamp(1rem, 2vw, 1.5rem) auto;
            padding: clamp(0.8rem, 2vw, 1rem) clamp(1.5rem, 3vw, 2rem);
            background: var(--success-color);
            color: #ffffff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: clamp(0.9rem, 2vw, 1rem);
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
            top: clamp(1rem, 2vw, 1.5rem);
            right: clamp(1rem, 2vw, 1.5rem);
            background: var(--card-bg);
            border: 2px solid var(--text-color);
            border-radius: 20px;
            padding: 0.3rem;
            cursor: pointer;
            width: clamp(2rem, 4vw, 2.5rem);
            height: clamp(1rem, 2vw, 1.2rem);
            display: flex;
            align-items: center;
            transition: all 0.3s ease;
        }

        .theme-toggle span {
            width: clamp(0.8rem, 2vw, 1rem);
            height: clamp(0.8rem, 2vw, 1rem);
            background: var(--success-color);
            border-radius: 50%;
            position: absolute;
            left: 0.2rem;
            transition: transform 0.3s ease;
        }

        .theme-toggle.active span {
            transform: translateX(calc(clamp(0.8rem, 2vw, 1rem) + 0.4rem));
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .container {
                padding: clamp(1.2rem, 2vw, 1.5rem);
                margin: 0 clamp(0.5rem, 1vw, 1rem);
            }

            .dialog {
                gap: clamp(0.6rem, 1vw, 0.8rem);
            }

            .hr-message, .attendee-message {
                max-width: clamp(65%, 75%, 85%);
                padding: clamp(0.7rem, 1.2vw, 0.8rem);
            }
        }

        @media (max-width: 768px) {
            body {
                padding: clamp(0.8rem, 1.5vw, 1rem);
            }

            .container {
                padding: clamp(1rem, 2vw, 1.2rem);
                margin: 0 clamp(0.3rem, 0.8vw, 0.5rem);
            }

            h1 {
                font-size: clamp(1.5rem, 3vw, 2rem);
            }

            .hr-message, .attendee-message {
                max-width: clamp(60%, 70%, 80%);
                padding: clamp(0.6rem, 1vw, 0.7rem);
                font-size: clamp(0.9rem, 1.5vw, 0.95rem);
            }

            .back-to-top {
                bottom: clamp(0.8rem, 1.5vw, 1rem);
                right: clamp(0.8rem, 1.5vw, 1rem);
                width: clamp(1.8rem, 2.5vw, 2rem);
                height: clamp(1.8rem, 2.5vw, 2rem);
                font-size: clamp(0.8rem, 1.5vw, 0.9rem);
            }

            .theme-toggle {
                top: clamp(0.8rem, 1.5vw, 1rem);
                right: clamp(0.8rem, 1.5vw, 1rem);
                width: clamp(1.8rem, 3vw, 2rem);
                height: clamp(0.8rem, 1.5vw, 1rem);
            }

            .theme-toggle span {
                width: clamp(0.6rem, 1.5vw, 0.8rem);
                height: clamp(0.6rem, 1.5vw, 0.8rem);
            }

            .load-more {
                padding: clamp(0.6rem, 1.5vw, 0.8rem) clamp(1.2rem, 2.5vw, 1.5rem);
                font-size: clamp(0.8rem, 1.5vw, 0.9rem);
            }
        }

        @media (max-width: 480px) {
            .container {
                padding: clamp(0.8rem, 1.5vw, 1rem);
                margin: 0 clamp(0.2rem, 0.5vw, 0.3rem);
            }

            h1 {
                font-size: clamp(1.2rem, 2.5vw, 1.5rem);
            }

            .hr-message, .attendee-message {
                max-width: clamp(55%, 65%, 75%);
                padding: clamp(0.5rem, 1vw, 0.6rem);
                font-size: clamp(0.85rem, 1.2vw, 0.9rem);
            }

            .back-to-top {
                bottom: clamp(0.5rem, 1vw, 0.8rem);
                right: clamp(0.5rem, 1vw, 0.8rem);
                width: clamp(1.5rem, 2vw, 1.8rem);
                height: clamp(1.5rem, 2vw, 1.8rem);
                font-size: clamp(0.7rem, 1.2vw, 0.8rem);
            }

            .theme-toggle {
                top: clamp(0.5rem, 1vw, 0.8rem);
                right: clamp(0.5rem, 1vw, 0.8rem);
                width: clamp(1.5rem, 2.5vw, 1.8rem);
                height: clamp(0.6rem, 1.2vw, 0.8rem);
            }

            .theme-toggle span {
                width: clamp(0.5rem, 1.2vw, 0.6rem);
                height: clamp(0.5rem, 1.2vw, 0.6rem);
            }

            .load-more {
                padding: clamp(0.5rem, 1.2vw, 0.7rem) clamp(1rem, 2vw, 1.2rem);
                font-size: clamp(0.7rem, 1.2vw, 0.8rem);
            }
        }

        /* Accessibility */
        .dialog:focus, .hr-message:focus, .attendee-message:focus {
            outline: 2px solid #2196f3;
            outline-offset: 2px;
        }

        .theme-toggle:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(76, 175, 80, 0.3);
        }
    </style>
</head>
<body>
    <div class="container" role="main" aria-label="HR Interview Questions Section">
        <h1>HR Interview Questions - Prep Ace</h1>
        <button id="themeToggle" class="theme-toggle" aria-label="Toggle Dark Mode">
            <span></span>
        </button>
        <div id="loading" aria-live="polite">Loading questions...</div>
        <div id="questions" aria-live="polite"></div>
        <div id="error" style="display: none;" aria-live="polite">Failed to load questions. Please try again later.</div>
        <button id="backToTop" class="back-to-top" style="display: none;" aria-label="Back to Top">↑</button>
        <button id="loadMore" class="load-more" style="display: none;" aria-label="Load More Questions">Load More</button>
    </div>

    <!-- Bootstrap JS (via CDN) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        // Dark Mode Toggle
        const themeToggle = document.getElementById('themeToggle');
        themeToggle.addEventListener('click', () => {
            document.body.dataset.theme = document.body.dataset.theme === 'dark' ? 'light' : 'dark';
            themeToggle.classList.toggle('active');
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

        // Fetch Questions with Pagination and Dialog Format
        let currentPage = 1;
        const questionsPerPage = 5;
        let loadMoreHandler = null; // Declare globally to fix the error

        function fetchQuestions(page = 1) {
            document.getElementById('loading').style.display = 'block';
            document.getElementById('error').style.display = 'none';
            document.getElementById('questions').innerHTML = '';

            fetch(`api/fetch_hr_questions.php?page=${page}&limit=${questionsPerPage}`, {
                method: 'GET',
                headers: { 'Accept': 'application/json' }
            })
            .then(response => {
                if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
                return response.json();
            })
            .then(data => {
                document.getElementById('loading').style.display = 'none';

                if (data.success && data.questions.length > 0) {
                    const questionContainer = document.getElementById('questions');
                    data.questions.forEach((item, index) => {
                        const dialogDiv = document.createElement('div');
                        dialogDiv.classList.add('dialog');
                        dialogDiv.setAttribute('tabindex', '0');
                        dialogDiv.innerHTML = `
                            <div class="hr-message" role="alert">
                                <p><strong>HR:</strong> ${item.question}</p>
                            </div>
                            <div class="attendee-message" role="alert">
                                <p><strong>Interviewee:</strong> ${item.answer}</p>
                            </div>
                        `;
                        questionContainer.appendChild(dialogDiv);
                    });

                    // Show Load More button if there are more questions
                    const loadMore = document.getElementById('loadMore');
                    loadMore.style.display = data.total > page * questionsPerPage ? 'block' : 'none';
                    if (loadMoreHandler) {
                        loadMore.removeEventListener('click', loadMoreHandler);
                    }
                    loadMoreHandler = () => {
                        currentPage++;
                        fetchQuestions(currentPage);
                    };
                    loadMore.addEventListener('click', loadMoreHandler);
                } else {
                    document.getElementById('error').style.display = 'block';
                    document.getElementById('error').textContent = "No more questions found.";
                    document.getElementById('loadMore').style.display = 'none';
                }
            })
            .catch(error => {
                document.getElementById('loading').style.display = 'none';
                document.getElementById('error').style.display = 'block';
                document.getElementById('error').textContent = `Failed to load questions. Error: ${error.message || 'Please try again later.'}`;
                console.error('Fetch Error:', error);
            })
            .finally(() => {
                document.getElementById('questions').setAttribute('aria-live', 'polite');
            });
        }

        // Initial load
        fetchQuestions(currentPage);

        // Copy Answer Functionality (Optional Enhancement)
        document.querySelectorAll('.attendee-message').forEach(message => {
            message.addEventListener('click', (e) => {
                if (e.target.tagName !== 'BUTTON') {
                    const text = message.textContent.replace('Interviewee:', '').trim();
                    navigator.clipboard.writeText(text).then(() => {
                        alert('Answer copied to clipboard!');
                    }).catch(err => {
                        console.error('Copy failed:', err);
                        alert('Failed to copy answer. Please try manually.');
                    });
                }
            });
        });
    </script>
</body>
</html>