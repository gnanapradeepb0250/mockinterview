<?php
// Set the response content type to JSON
header('Content-Type: application/json');

// Clear any previous output to ensure clean JSON
ob_clean();

// Define a temporary directory (ensure it's writable)
$tempDir = sys_get_temp_dir() . '/codeace_' . uniqid();
if (!mkdir($tempDir, 0777, true)) {
    echo json_encode([
        'success' => false,
        'output' => 'Error: Could not create temporary directory.',
        'message' => 'Permission or path issue'
    ]);
    exit;
}

$filename = 'code_' . uniqid(); // Unique filename
$timeout = 5; // 5-second timeout for execution
$compileOutput = '';
$runOutput = '';

// Get input from $_POST (form data)
$code = $_POST['code'] ?? '';
$language = $_POST['language'] ?? 'c';
$questionId = $_POST['question_id'] ?? 1;

if (empty($code)) {
    echo json_encode([
        'success' => false,
        'output' => 'No code provided',
        'message' => 'Empty code submission'
    ]);
    rmdir($tempDir); // Clean up empty directory
    exit;
}

try {
    switch ($language) {
        case 'c':
            $filePath = $tempDir . '/' . $filename . '.c';
            file_put_contents($filePath, $code);
            $compileCmd = "gcc \"$filePath\" -o \"$tempDir/$filename.out\" 2>&1";
            $compileOutput = exec($compileCmd, $compileOutputLines, $compileReturn);
            
            if ($compileReturn === 0) { // Compilation successful
                $descriptorspec = [['pipe', 'r'], ['pipe', 'w'], ['pipe', 'w']];
                $process = proc_open("cmd /c \"$tempDir/$filename.out\"", $descriptorspec, $pipes, $tempDir);
                if (is_resource($process)) {
                    $start = time();
                    $runOutput = '';
                    while (!feof($pipes[1]) && (time() - $start < $timeout)) {
                        $runOutput .= fgets($pipes[1], 1024);
                        usleep(100000); // Small delay to prevent CPU overuse
                    }
                    fclose($pipes[1]);
                    fclose($pipes[2]);
                    $runReturn = proc_close($process);
                } else {
                    $runOutput = 'Error: Could not start process.';
                    $runReturn = 1;
                }
            } else {
                $runOutput = implode("\n", $compileOutputLines);
            }
            break;

        case 'cpp':
            $filePath = $tempDir . '/' . $filename . '.cpp';
            file_put_contents($filePath, $code);
            $compileCmd = "g++ \"$filePath\" -o \"$tempDir/$filename.out\" 2>&1";
            $compileOutput = exec($compileCmd, $compileOutputLines, $compileReturn);
            
            if ($compileReturn === 0) { // Compilation successful
                $descriptorspec = [['pipe', 'r'], ['pipe', 'w'], ['pipe', 'w']];
                $process = proc_open("cmd /c \"$tempDir/$filename.out\"", $descriptorspec, $pipes, $tempDir);
                if (is_resource($process)) {
                    $start = time();
                    $runOutput = '';
                    while (!feof($pipes[1]) && (time() - $start < $timeout)) {
                        $runOutput .= fgets($pipes[1], 1024);
                        usleep(100000);
                    }
                    fclose($pipes[1]);
                    fclose($pipes[2]);
                    $runReturn = proc_close($process);
                } else {
                    $runOutput = 'Error: Could not start process.';
                    $runReturn = 1;
                }
            } else {
                $runOutput = implode("\n", $compileOutputLines);
            }
            break;

        case 'python':
            $filePath = $tempDir . '/' . $filename . '.py';
            file_put_contents($filePath, $code);
            $descriptorspec = [['pipe', 'r'], ['pipe', 'w'], ['pipe', 'w']];
            $process = proc_open("python \"$filePath\"", $descriptorspec, $pipes, $tempDir);
            if (is_resource($process)) {
                $start = time();
                $runOutput = '';
                while (!feof($pipes[1]) && (time() - $start < $timeout)) {
                    $runOutput .= fgets($pipes[1], 1024);
                    usleep(100000);
                }
                fclose($pipes[1]);
                fclose($pipes[2]);
                $runReturn = proc_close($process);
            } else {
                $runOutput = 'Error: Could not start process.';
                $runReturn = 1;
            }
            break;

        default:
            throw new Exception("Unsupported language: $language");
    }

    // Clean up: remove temp directory and files
    array_map('unlink', glob("$tempDir/*.*")); // Delete files
    rmdir($tempDir); // Delete directory

    // Prepare and send JSON response
    $response = [
        'success' => $runReturn === 0 && empty($compileOutput),
        'output' => trim($runOutput ?: $compileOutput),
        'message' => $runReturn === 0 && empty($compileOutput) ? 'Code executed successfully' : 'Compilation or execution failed'
    ];

    // Debug: Log the response before sending
    error_log("Response: " . json_encode($response));

    echo json_encode($response);
} catch (Exception $e) {
    rmdir($tempDir); // Clean up on error
    echo json_encode([
        'success' => false,
        'output' => 'Error: ' . $e->getMessage(),
        'message' => 'Internal error'
    ]);
}
?>