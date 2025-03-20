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
            /* Disable text selection */
            -webkit-user-select: none;  /* Chrome, Safari, Opera */
            -moz-user-select: none;     /* Firefox */
            -ms-user-select: none;      /* IE/Edge */
            user-select: none;          /* Standard syntax */
        }
        .compiler-container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 2rem;
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
<body oncontextmenu="return false;"> <!-- Disable right-click context menu -->
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

        // Disable all copy-paste functionality
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

        // Disable Ace editor-specific commands for copy-paste
        editor.commands.addCommand({
            name: 'disableCopy',
            bindKey: {win: 'Ctrl-C', mac: 'Command-C'},
            exec: function() { return false; },
            readOnly: true
        });

        editor.commands.addCommand({
            name: 'disablePaste',
            bindKey: {win: 'Ctrl-V', mac: 'Command-V'},
            exec: function() { return false; },
            readOnly: true
        });

        editor.commands.addCommand({
            name: 'disableCut',
            bindKey: {win: 'Ctrl-X', mac: 'Command-X'},
            exec: function() { return false; },
            readOnly: true
        });

        // Disable context menu in editor
        document.getElementById('editor').addEventListener('contextmenu', function(e) {
            e.preventDefault();
            return false;
        });

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
                console.log('Raw response:', response);
                try {
                    if (typeof response !== 'string') {
                        response = JSON.stringify(response);
                    }
                    const parsedResponse = JSON.parse(response);
                    questions = Array.isArray(parsedResponse) ? parsedResponse : (parsedResponse.questions || []);
                    
                    if (questions.length === 0) {
                        throw new Error('No questions found in response');
                    }

                    let options = '<option value="">Select a question</option>';
                    questions.forEach(q => {
                        options += `<option value="${q.id || ''}">${q.question || 'Unnamed Question'}</option>`;
                    });
                    $('#questionSelect').html(options);
                } catch (e) {
                    console.error('Error parsing questions:', e, 'Raw response:', response);
                    $('#questionSelect').html('<option value="">Error loading questions</option>');
                }
            }).fail(function(jqXHR, textStatus, errorThrown) {
                console.error('AJAX error:', textStatus, errorThrown);
                $('#questionSelect').html('<option value="">Failed to load questions</option>');
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
            const questionId = $('#questionSelect').val() || 1;

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
                    console.log('Raw response:', responseText);
                    try {
                        if (typeof responseText !== 'string') {
                            responseText = JSON.stringify(responseText);
                        }
                        const result = JSON.parse(responseText);
                        let output = `Output: ${result.output || 'No output'}\nMessage: ${result.message || 'No message'}`;
                        if (result.success) {
                            const usesLogic = checkLogic(code, language);
                            if (!usesLogic) {
                                output += '\nWarning: Code appears to use hardcoded output or lacks logical implementation.';
                            }
                            $('#outputPanel').text(output).removeClass('text-danger');

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
                                },
                                error: function(xhr, status, error) {
                                    console.error('Submission AJAX error:', status, error);
                                }
                            });
                        } else {
                            $('#outputPanel').text(output).addClass('text-danger');
                        }
                    } catch (e) {
                        console.error('Parse error:', e);
                        $('#outputPanel').text('Error: Invalid response from server').addClass('text-danger');
                    }
                },
                error: function(xhr, status, error) {
                    console.error('AJAX error:', status, error);
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

        fetchQuestions();
    </script>
</body>
</html>