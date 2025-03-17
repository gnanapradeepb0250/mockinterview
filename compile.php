<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Compiler - Code Ace</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #f8f9fa;
            min-height: 100vh;
            padding: 20px;
            font-family: Arial, sans-serif;
        }
        .compiler-container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 2rem;
            /* max-width: 1000px; */
            margin: 0 auto;
            background-image: linear-gradient(to top, #bdc2e8 0%, #bdc2e8 1%, #e6dee9 100%);
        }
        #editor {
            height: 300px;
            width: 100%;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }
        #outputPanel {
            height: 150px;
            width: 100%;
            border: 1px solid #ced4da;
            border-radius: 5px;
            margin-top: 10px;
            padding: 10px;
            background-color: #f8f9fa;
            overflow-y: auto;
            white-space: pre-wrap;
            word-wrap: break-word;
        }
        .timer {
            font-size: 1.5rem;
            font-weight: bold;
            color: #dc3545;
        }
        .btn-submit, .btn-view-answers {
            background-color: #007bff;
            border: none;
        }
        .btn-submit:hover, .btn-view-answers:hover {
            background-color: #0056b3;
        }
        .btn-submit:disabled, .btn-view-answers:disabled {
            background-color: #6c757d;
            cursor: not-allowed;
        }
        @media (max-width: 576px) {
            .compiler-container { padding: 1rem; }
            #editor, #outputPanel { height: 150px; }
            .timer { font-size: 1.2rem; }
        }
    </style>
</head>
<body>
    <?php include("navbar.php")?>
    <div class="compiler-container">
        <h3 class="mb-3">Online Compiler - Code Ace</h3>
        <div class="timer mb-4">Time Left: <span id="timeLeft">15:00</span></div>

        <div class="mb-3">
            <label for="languageSelect" class="form-label">Select Language</label>
            <select id="languageSelect" class="form-select" onchange="fetchQuestions()">
                <option value="c">C</option>
                <option value="cpp">C++</option>
                <option value="python">Python</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="questionSelect" class="form-label">Select Question</label>
            <select id="questionSelect" class="form-select" onchange="updateEditor()">
                <option value="">Select a question</option>
            </select>
        </div>

        <div id="editor" class="mb-4">/* Write your code here */</div>
        <div id="outputPanel" class="mb-4">No output yet...</div>
        <button id="submitCode" class="btn btn-submit w-100">Submit Code</button>
        <button id="viewAnswers" class="btn btn-view-answers w-100 mt-2" onclick="viewAnswers()">View Answers</button>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.12/ace.js"></script>
    <script>
        const editor = ace.edit("editor");
        editor.setTheme("ace/theme/monokai");
        editor.session.setMode("ace/mode/c_cpp");

        let timeLeft = 900; // 15 minutes in seconds
        const timer = setInterval(() => {
            timeLeft--;
            const minutes = Math.floor(timeLeft / 60);
            const seconds = timeLeft % 60;
            $('#timeLeft').text(`${minutes}:${seconds < 10 ? '0' : ''}${seconds}`);
            if (timeLeft <= 0) {
                clearInterval(timer);
                $('#submitCode').prop('disabled', true);
                $('#outputPanel').text('Time’s up! No further submissions allowed.');
            }
        }, 1000);

        let questions = [];

        function fetchQuestions() {
    const language = $('#languageSelect').val();
    
    $.get('api/getcode_questions.php', {
        language: language
    }, function(response) {
        console.log('Raw response:', response); // Log the raw response for debugging
        try {
            // Ensure response is a string and parse it as JSON
            if (typeof response !== 'string') {
                response = JSON.stringify(response); // Convert to string if it’s an object
            }
            const parsedResponse = JSON.parse(response);
            
            // Handle different response structures (array or object with questions)
            questions = Array.isArray(parsedResponse) ? parsedResponse : (parsedResponse.questions || []);
            
            if (questions.length === 0) {
                throw new Error('No questions found in response');
            }

            // Update question dropdown
            let options = '<option value="">Select a question</option>';
            questions.forEach(q => {
                // Ensure q.id and q.question exist
                options += `<option value="${q.id || ''}">${q.question || 'Unnamed Question'}</option>`;
            });
            $('#questionSelect').html(options);
            $('#questionsContainer').html(''); // Clear any previous content (no list needed)
        } catch (e) {
            console.error('Error parsing questions:', e, 'Raw response:', response);
            $('#questionSelect').html('<option value="">Error loading questions. Check console for details. Response: ' + response + '</option>');
        }
    }).fail(function(jqXHR, textStatus, errorThrown) {
        console.error('AJAX error:', textStatus, errorThrown, jqXHR.responseText);
        $('#questionSelect').html('<option value="">Failed to load questions. Check server logs. Response: ' + jqXHR.responseText + '</option>');
    });
}

        function updateEditor() {
            const questionId = $('#questionSelect').val();
            const question = questions.find(q => q.id == questionId);
            if (question) {
                editor.setValue(`/* ${question.question} */\n// Write your solution here`);
                editor.session.setMode(`ace/mode/${question.language === 'python' ? 'python' : 'c_cpp'}`);
            } else {
                editor.setValue('/* Write your code here */');
                editor.session.setMode('ace/mode/c_cpp');
            }
        }

        $('#submitCode').click(function() {
    if (timeLeft <= 0) {
        $('#outputPanel').text('Time’s up! No further submissions allowed.');
        return;
    }
    const code = editor.getValue();
    const language = $('#languageSelect').val();
    const questionId = $('#questionSelect').val() || 1; // Default to first question if none selected

    let formData = new FormData();
    formData.append('code', code);
    formData.append('language', language);
    formData.append('question_id', questionId);

    $.ajax({
        url: 'api/evaluate_code.php',
        type: 'POST',
        data: formData,
        processData: false,
        contentType: false,
        success: function(responseText) {
            console.log('Raw response:', responseText); // Log the raw response for debugging
            try {
                // Ensure responseText is a string and valid JSON
                if (typeof responseText !== 'string') {
                    responseText = JSON.stringify(responseText); // Convert to string if it’s an object
                }
                const result = JSON.parse(responseText);
                // Ensure result has the expected structure
                if (!result.success && !result.output && !result.message) {
                    throw new Error('Invalid response structure: ' + responseText);
                }
                let output = `Output: ${result.output || 'No output'}\nMessage: ${result.message || 'No message'}`;
                if (result.success) {
                    const usesLogic = checkLogic(code, language);
                    if (!usesLogic) {
                        output += '\nWarning: Code appears to use hardcoded output or lacks logical implementation.';
                    }
                    $('#outputPanel').text(output).removeClass('text-danger');

                    // Save submission to database
                    let submissionFormData = new FormData();
                    submissionFormData.append('code', code);
                    submissionFormData.append('language', language);
                    submissionFormData.append('question_id', questionId);
                    submissionFormData.append('output', result.output || '');

                    $.ajax({
                        url: 'api/save_submission.php',
                        type: 'POST',
                        data: submissionFormData,
                        processData: false,
                        contentType: false,
                        success: function(submissionResponse) {
                            console.log('Submission saved:', submissionResponse);
                            const submissionResult = JSON.parse(submissionResponse);
                            if (!submissionResult.success) {
                                console.error('Submission error:', submissionResult.message);
                            }
                        },
                        error: function(xhr, status, error) {
                            console.error('Submission AJAX error:', xhr.responseText, status, error);
                        }
                    });
                } else {
                    $('#outputPanel').text(output).addClass('text-danger');
                }
            } catch (e) {
                console.error('Parse error:', e, 'Raw response:', responseText);
                $('#outputPanel').text('Error: Invalid response from server - ' + responseText).addClass('text-danger');
            }
        },
        error: function(xhr, status, error) {
            console.error('AJAX error:', xhr.responseText, status, error);
            $('#outputPanel').text('Error evaluating code: ' + error).addClass('text-danger');
        }
    });
});

        function checkLogic(code, language) {
            code = code.toLowerCase().trim();
            let hasLogic = false;

            const logicPatterns = {
                'c': [/\bfor\s*\(/, /\bwhile\s*\(/, /\bif\s*\(/, /\bfunction\s*\w*\(/, /\bint\s+\w+/, /\bchar\s+\w+/, /\breturn/],
                'cpp': [/\bfor\s*\(/, /\bwhile\s*\(/, /\bif\s*\(/, /\bfunction\s*\w*\(/, /\bint\s+\w+/, /\bstring\s+\w+/, /\breturn/],
                'python': [/\bfor\s+/, /\bwhile\s+/, /\bif\s+/, /\bdef\s+\w+\(/, /\breturn/, /\bprint\s*\(/]
            };

            const patterns = logicPatterns[language] || logicPatterns['c'];
            for (let pattern of patterns) {
                if (pattern.test(code)) {
                    hasLogic = true;
                    break;
                }
            }

            const hardcodedPatterns = [
                /print\s*\(["'][\w\s!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]*["']\s*\)/,
                /printf\s*\(["'][\w\s!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]*["']\s*\)/
            ];
            for (let pattern of hardcodedPatterns) {
                if (pattern.test(code) && !hasLogic) {
                    return false;
                }
            }

            return hasLogic;
        }

        function viewAnswers() {
            const language = $('#languageSelect').val();
            if (!language) {
                alert('Please select a language before viewing answers.');
                return;
            }
            window.location.href = 'code_answers.php?language=' + encodeURIComponent(language);
        }

        // Initial fetch of questions (default to C)
        fetchQuestions();
    </script>
</body>
</html>