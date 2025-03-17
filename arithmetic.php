<?php 
    session_start();
    if (!isset($_SESSION['user_id'])) {
        header("Location: login.php");
        exit;
    }
    include("navbar.php");
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arithmetic Questions - Prep Ace</title>
    <!-- Meta Tags for SEO and Responsiveness -->
    <meta name="description" content="Explore a collection of arithmetic questions and answers to enhance your learning with Prep Ace.">
    <meta name="author" content="Prep Ace">
    <link rel="icon" type="image/png" href="images/favicon.png"> <!-- Add a favicon if available -->
    
    <!-- Bootstrap CSS (via CDN for reliability) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            
            background: linear-gradient(120deg, #f6d365 0%, #fda085 100%);
            color: #333;
            margin: 0;
            /* padding: clamp(1rem, 2vw, 2rem); */
            /* min-height: 100vh;
            display: flex; */
            /* flex-direction: column; */
            /* align-items: center; */
            /* transition: all 0.3s ease; */ 
        }

        .container {
            max-width: 1200px;
            width: 100%;
            margin: auto;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            padding: clamp(1.5rem, 3vw, 2rem);
            flex-grow: 1;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: clamp(1.5rem, 3vw, 2rem);
            font-size: clamp(1.8rem, 4vw, 2.5rem);
        }

        .question {
            background: #f4f4f9;
            padding: clamp(1rem, 2vw, 1.5rem);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-bottom: clamp(1rem, 2vw, 1.5rem);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
        }

        .question:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .question p {
            font-weight: bold;
            color: #333;
            margin-bottom: clamp(0.8rem, 1.5vw, 1rem);
            font-size: clamp(1rem, 2vw, 1.1rem);
        }

        .toggle-answer {
            background: #007bff;
            color: white;
            border: none;
            padding: clamp(0.5rem, 1vw, 0.8rem);
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease;
            font-size: clamp(0.9rem, 1.5vw, 1rem);
        }

        .toggle-answer:hover {
            background: #0056b3;
            transform: scale(1.05);
        }

        .answer {
            background: #e8f5e9;
            border-left: 4px solid #66bb6a;
            padding: clamp(0.8rem, 1.5vw, 1rem);
            border-radius: 6px;
            margin-top: clamp(0.5rem, 1vw, 0.8rem);
            display: none; /* Start hidden for toggle */
        }

        .answer.show {
            display: block;
        }

        #loading, #error {
            text-align: center;
            font-size: clamp(0.9rem, 1.5vw, 1.1rem);
            margin-top: clamp(1rem, 2vw, 1.5rem);
            color: #333;
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
            background: #66bb6a;
            color: #ffffff;
            border: none;
            border-radius: 50%;
            width: clamp(2rem, 3vw, 2.5rem);
            height: clamp(2rem, 3vw, 2.5rem);
            font-size: clamp(0.9rem, 2vw, 1rem);
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .back-to-top:hover {
            transform: scale(1.1);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .back-to-top:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(102, 187, 106, 0.3);
        }

        .load-more {
            display: block;
            margin: clamp(1rem, 2vw, 1.5rem) auto;
            padding: clamp(0.8rem, 2vw, 1rem) clamp(1.5rem, 3vw, 2rem);
            background: #66bb6a;
            color: #ffffff;
            border: none;
            border-radius: 6px;
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

        /* Responsive Design */
        @media (max-width: 1024px) {
            .container {
                padding: clamp(1.2rem, 2vw, 1.5rem);
                margin: 0 clamp(0.5rem, 1vw, 1rem);
            }

            .question {
                padding: clamp(1rem, 2vw, 1.2rem);
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

            .question {
                padding: clamp(0.8rem, 1.5vw, 1rem);
            }

            .question p {
                font-size: clamp(0.9rem, 1.5vw, 1rem);
            }

            .back-to-top {
                bottom: clamp(0.8rem, 1.5vw, 1rem);
                right: clamp(0.8rem, 1.5vw, 1rem);
                width: clamp(1.8rem, 2.5vw, 2rem);
                height: clamp(1.8rem, 2.5vw, 2rem);
                font-size: clamp(0.8rem, 1.5vw, 0.9rem);
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

            .question {
                padding: clamp(0.6rem, 1vw, 0.8rem);
            }

            .question p {
                font-size: clamp(0.85rem, 1.2vw, 0.9rem);
            }

            .toggle-answer {
                padding: clamp(0.4rem, 0.8vw, 0.6rem);
                font-size: clamp(0.7rem, 1.2vw, 0.8rem);
            }

            .answer {
                padding: clamp(0.6rem, 1vw, 0.8rem);
            }

            .back-to-top {
                bottom: clamp(0.5rem, 1vw, 0.8rem);
                right: clamp(0.5rem, 1vw, 0.8rem);
                width: clamp(1.5rem, 2vw, 1.8rem);
                height: clamp(1.5rem, 2vw, 1.8rem);
                font-size: clamp(0.7rem, 1.2vw, 0.8rem);
            }

            .load-more {
                padding: clamp(0.5rem, 1.2vw, 0.7rem) clamp(1rem, 2vw, 1.2rem);
                font-size: clamp(0.7rem, 1.2vw, 0.8rem);
            }
        }

        /* Accessibility */
        .question:focus {
            outline: 2px solid #2196f3;
            outline-offset: 2px;
        }
    </style>
</head>
<body>
   
    <div class="container" role="main" aria-label="Arithmetic Questions Section">
        <h1>Arithmetic Questions - Prep Ace</h1>
        
        <div id="loading" aria-live="polite">Loading questions...</div>
        <div id="questions" aria-live="polite"></div>
        <div id="error" style="display: none;" aria-live="polite">Failed to load questions. Please try again later.</div>
        <button id="backToTop" class="back-to-top" style="display: none;" aria-label="Back to Top">↑</button>
        <button id="loadMore" class="load-more" style="display: none;" aria-label="Load More Questions">Load More</button>
        <a href="category.php" class="btn btn-primary mt-3" style="display: block; margin: 0 auto; width: fit-content;">Back to Dashboard</a>
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
        // Back to Top Button
        const backToTop = document.getElementById('backToTop');
        window.addEventListener('scroll', () => {
            backToTop.style.display = window.scrollY > 300 ? 'block' : 'none';
        });

        backToTop.addEventListener('click', () => {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });

        // AJAX for Questions with Pagination and Loading Animation
        let currentPage = 1;
        const questionsPerPage = 5;

        function fetchQuestions(page = 1) {
            $('#loading').show();
            $('#error').hide();
            $('#questions').empty();
            $('#loadingOverlay').fadeIn(200); // Show pyramid loader

            $.ajax({
                url: "api/arithmetic_question.php",
                type: "GET",
                dataType: "json",
                data: { page: page, limit: questionsPerPage },
                success: function(response) {
                    $('#loadingOverlay').fadeOut(200); // Hide pyramid loader
                    $('#loading').hide();

                    if (response.success && response.questions && response.questions.length > 0) {
                        const questionContainer = $('#questions');
                        response.questions.forEach((item, index) => {
                            const questionDiv = `
                                <div class="question" tabindex="0" data-index="${(page - 1) * questionsPerPage + index}">
                                    <p>Q${(page - 1) * questionsPerPage + index + 1}: ${item.question}</p>
                                    <button class="toggle-answer" aria-expanded="false">Show Answer</button>
                                    <div class="answer">
                                        <strong>Answer:</strong> ${item.answer}
                                    </div>
                                </div>
                            `;
                            questionContainer.append(questionDiv);
                        });

                        // Initialize toggle functionality
                        $('.toggle-answer').click(function() {
                            const $answer = $(this).next('.answer');
                            const isExpanded = $(this).attr('aria-expanded') === 'true';
                            $answer.toggleClass('show');
                            $(this).attr('aria-expanded', !isExpanded);
                            $(this).text(isExpanded ? 'Show Answer' : 'Hide Answer');
                        });

                        // Show Load More button if there are more questions
                        $('#loadMore').toggle(response.total > page * questionsPerPage).off('click').click(() => {
                            currentPage++;
                            fetchQuestions(currentPage);
                        });
                    } else {
                        $('#error').show().text("No more questions found or an error occurred.");
                        $('#loadMore').hide();
                    }
                },
                error: function(xhr, status, error) {
                    $('#loadingOverlay').fadeOut(200); // Hide pyramid loader on error
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