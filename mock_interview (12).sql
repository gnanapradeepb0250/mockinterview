-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2025 at 04:49 AM
-- Server version: 8.0.36
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mock_interview`
--

-- --------------------------------------------------------

--
-- Table structure for table `code_submissions`
--

CREATE TABLE `code_submissions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `question_id` int NOT NULL,
  `user_code` text COLLATE utf8mb4_general_ci NOT NULL,
  `user_output` text COLLATE utf8mb4_general_ci,
  `submitted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `code_submissions`
--

INSERT INTO `code_submissions` (`id`, `user_id`, `language`, `question_id`, `user_code`, `user_output`, `submitted_at`) VALUES
(1, 5, 'python', 1, 'def reverse_string(s):\r\n    return s[::-1]\r\n\r\nprint(reverse_string(\"hello\"))', '', '2025-02-28 04:50:40'),
(2, 5, 'python', 1, 'def reverse_string(s):\r\n    return s[::-1]\r\n\r\nprint(reverse_string(\"hello\"))', 'olleh', '2025-02-28 04:52:38'),
(3, 5, 'c', 1, 'def reverse_string(s):\r\n    return s[::-1]\r\n\r\nprint(reverse_string(\"hello\"))', 'C:\\Users\\A\\AppData\\Local\\Temp/codeace_67c1412c66295/code_67c1412c66737.c:1:1: error: unknown type name \'def\'\n def reverse_string(s):\n ^~~\nC:\\Users\\A\\AppData\\Local\\Temp/codeace_67c1412c66295/code_67c1412c66737.c: In function \'reverse_string\':\nC:\\Users\\A\\AppData\\Local\\Temp/codeace_67c1412c66295/code_67c1412c66737.c:1:22: error: expected declaration specifiers before \':\' token\n def reverse_string(s):\n                      ^\nC:\\Users\\A\\AppData\\Local\\Temp/codeace_67c1412c66295/code_67c1412c66737.c:1:5: warning: type of \'s\' defaults to \'int\' [-Wimplicit-int]\n def reverse_string(s):\n     ^~~~~~~~~~~~~~', '2025-02-28 04:53:01'),
(4, 5, 'python', 1, 'def reverse_string(s):\r\n    return s[::-1]\r\n\r\nprint(reverse_string(\"hello\"))', 'olleh', '2025-02-28 04:53:06'),
(5, 5, 'c', 1, '#include <stdio.h>\r\n#include <string.h>\r\n\r\nvoid rev(char* s) {\r\n\r\n    // Initialize l and r pointers\r\n    int l = 0;\r\n    int r = strlen(s) - 1;\r\n    char t;\r\n\r\n    // Swap characters till l and r meet\r\n    while (l < r) {\r\n      \r\n        // Swap characters\r\n        t = s[l];\r\n        s[l] = s[r];\r\n        s[r] = t;\r\n\r\n        // Move pointers towards each other\r\n        l++;\r\n        r--;\r\n    }\r\n}\r\n\r\nint main() {\r\n    char s[100] = \"abcde\";\r\n	\r\n  	// Reversing s\r\n    rev(s);\r\n  \r\n    printf(\"%s\", s);\r\n    return 0;\r\n}', 'edcba', '2025-02-28 04:53:51'),
(6, 5, 'c', 1, '#include <stdio.h>\r\n#include <string.h>\r\n\r\nvoid rev(char* s) {\r\n\r\n    // Initialize l and r pointers\r\n    int l = 0;\r\n    int r = strlen(s) - 1;\r\n    char t;\r\n\r\n    // Swap characters till l and r meet\r\n    while (l < r) {\r\n      \r\n        // Swap characters\r\n        t = s[l];\r\n        s[l] = s[r];\r\n        s[r] = t;\r\n\r\n        // Move pointers towards each other\r\n        l++;\r\n        r--;\r\n    }\r\n}\r\n\r\nint main() {\r\n    char s[100] = \"hello\";\r\n	\r\n  	// Reversing s\r\n    rev(s);\r\n  \r\n    printf(\"%s\", s);\r\n    return 0;\r\n}', 'olleh', '2025-02-28 04:54:04'),
(7, 5, 'python', 1, 'def reverse_string(s):\r\n    return s[::-1]\r\n\r\nprint(reverse_string(\"hello\"))', 'olleh', '2025-02-28 05:00:06'),
(8, 5, 'c', 1, '#include <stdio.h>\r\n#include <string.h>\r\n\r\nvoid rev(char* s) {\r\n\r\n    // Initialize l and r pointers\r\n    int l = 0;\r\n    int r = strlen(s) - 1;\r\n    char t;\r\n\r\n    // Swap characters till l and r meet\r\n    while (l < r) {\r\n      \r\n        // Swap characters\r\n        t = s[l];\r\n        s[l] = s[r];\r\n        s[r] = t;\r\n\r\n        // Move pointers towards each other\r\n        l++;\r\n        r--;\r\n    }\r\n}\r\n\r\nint main() {\r\n    char s[100] = \"hello\";\r\n	\r\n  	// Reversing s\r\n    rev(s);\r\n  \r\n    printf(\"%s\", s);\r\n    return 0;\r\n}', 'olleh', '2025-02-28 05:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `c_questions`
--

CREATE TABLE `c_questions` (
  `id` int NOT NULL,
  `question` text COLLATE utf8mb4_general_ci NOT NULL,
  `expected_output` text COLLATE utf8mb4_general_ci NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'c'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `c_questions`
--

INSERT INTO `c_questions` (`id`, `question`, `expected_output`, `language`) VALUES
(1, 'Write a program to reverse a string.', 'olleh', 'c'),
(2, 'Write a program to print \"Hello, World!\"', 'Hello, World!', 'c'),
(3, 'Write a program to add two numbers (input: 5, 3)', '8', 'c'),
(4, 'Write a program to subtract two numbers (input: 10, 4)', '6', 'c'),
(5, 'Write a program to multiply two numbers (input: 6, 7)', '42', 'c'),
(6, 'Write a program to divide two numbers (input: 15, 3)', '5', 'c'),
(7, 'Write a program to find the remainder of 17 divided by 5', '2', 'c'),
(8, 'Write a program to check if a number is even (input: 8)', '8 is even', 'c'),
(9, 'Write a program to check if a number is odd (input: 7)', '7 is odd', 'c'),
(10, 'Write a program to find the largest of two numbers (input: 15, 9)', '15 is larger', 'c'),
(11, 'Write a program to find the smallest of two numbers (input: 15, 9)', '9 is smaller', 'c'),
(12, 'Write a program to print numbers from 1 to 5', '1\n2\n3\n4\n5', 'c'),
(13, 'Write a program to print numbers from 5 to 1', '5\n4\n3\n2\n1', 'c'),
(14, 'Write a program to calculate the factorial of 5', '120', 'c'),
(15, 'Write a program to check if a number is prime (input: 7)', '7 is prime', 'c'),
(16, 'Write a program to reverse a string \"hello\" (input: hello)', 'olleh', 'c'),
(17, 'Write a program to count vowels in \"hello world\" (input: hello world)', '3', 'c'),
(18, 'Write a program to print the ASCII value of \'A\'', '65', 'c'),
(19, 'Write a program to swap two numbers (input: 5, 3)', 'After swap: 3, 5', 'c'),
(20, 'Write a program to find the sum of digits in 123 (input: 123)', '6', 'c'),
(21, 'Write a program to check if a year is leap year (input: 2020)', '2020 is a leap year', 'c'),
(22, 'Write a program to print a pyramid of stars (height 3)', '  *\n ***\n*****', 'c'),
(23, 'Write a program to calculate the power of 2^3', '8', 'c'),
(24, 'Write a program to convert Celsius to Fahrenheit (input: 37)', '98.60', 'c'),
(25, 'Write a program to find the GCD of 48 and 18 (input: 48, 18)', '6', 'c'),
(26, 'Write a program to find the LCM of 12 and 18 (input: 12, 18)', '36', 'c'),
(27, 'Write a program to count characters in \"hello\" (input: hello)', '5', 'c'),
(28, 'Write a program to check if a string is palindrome (input: radar)', 'radar is a palindrome', 'c'),
(29, 'Write a program to print Fibonacci sequence up to 5 terms', '0\n1\n1\n2\n3', 'c'),
(30, 'Write a program to sort an array [5, 2, 8, 1, 9] in ascending order', '1 2 5 8 9', 'c'),
(31, 'Write a program to find the average of numbers [10, 20, 30] (input: 10, 20, 30)', '20.00', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `gd_topics`
--

CREATE TABLE `gd_topics` (
  `id` int NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `participant_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `dialogue` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gd_topics`
--

INSERT INTO `gd_topics` (`id`, `topic`, `participant_name`, `dialogue`) VALUES
(1, 'Artificial Intelligence', 'Rahul', 'AI is transforming industries with automation.'),
(2, 'Artificial Intelligence', 'Neha', 'Yes, but it also raises ethical concerns regarding job displacement.'),
(3, 'Artificial Intelligence', 'Amit', 'AI is not just replacing jobs; it’s creating new opportunities in AI ethics and development.'),
(4, 'Artificial Intelligence', 'Sanya', 'The biggest concern is bias in AI models. How do we ensure fairness?'),
(5, 'Artificial Intelligence', 'Vikram', 'Companies are working on explainable AI to make decisions more transparent.'),
(6, 'Artificial Intelligence', 'Neha', 'What about the impact of AI on healthcare? It’s revolutionizing diagnostics.'),
(7, 'Artificial Intelligence', 'Amit', 'Agreed! AI-driven robots are assisting in surgeries with high precision.'),
(8, 'Artificial Intelligence', 'Rahul', 'But can AI ever replace human creativity? That’s still debatable.'),
(9, 'Artificial Intelligence', 'Sanya', 'AI can assist in creative tasks but lacks true human emotions.'),
(10, 'Artificial Intelligence', 'Vikram', 'In the end, AI should be seen as an assistant rather than a replacement for humans.'),
(11, 'Semiconductors in AI', 'Sanya', 'Semiconductors power AI by enabling high-speed computations.'),
(12, 'Semiconductors in AI', 'Vikram', 'Yes, companies like NVIDIA and AMD are leading AI chip innovation.'),
(13, 'Semiconductors in AI', 'Neha', 'But isn’t the global chip shortage affecting AI development?'),
(14, 'Semiconductors in AI', 'Rahul', 'Absolutely! The shortage has slowed down advancements in AI training.'),
(15, 'Semiconductors in AI', 'Amit', 'Many tech companies are now investing in local semiconductor manufacturing.'),
(16, 'Semiconductors in AI', 'Sanya', 'The rise of quantum computing could eventually replace traditional semiconductors.'),
(17, 'Semiconductors in AI', 'Neha', 'But we still have a long way to go before quantum computing becomes mainstream.'),
(18, 'Semiconductors in AI', 'Vikram', 'Another challenge is the high energy consumption of AI-specific chips.'),
(19, 'Semiconductors in AI', 'Amit', 'New energy-efficient architectures are being developed to address this.'),
(20, 'Semiconductors in AI', 'Rahul', 'If we solve these challenges, AI can reach its full potential much faster.');

-- --------------------------------------------------------

--
-- Table structure for table `hr_round_questions`
--

CREATE TABLE `hr_round_questions` (
  `id` int NOT NULL,
  `question` text COLLATE utf8mb4_general_ci NOT NULL,
  `answer` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_round_questions`
--

INSERT INTO `hr_round_questions` (`id`, `question`, `answer`) VALUES
(1, 'Tell me about yourself.', 'I am a highly motivated [Your Profession] with experience in [Your Industry]. I have a passion for [Your Strengths] and have worked on projects like [Example].'),
(2, 'Why do you want to work at our company?', 'I am excited about the opportunity at [Company Name] because of its [values/culture/products]. I believe my skills in [relevant skills] align well with your needs.'),
(3, 'What are your strengths?', 'I am highly organized, have strong problem-solving skills, and excel at communication and teamwork.'),
(4, 'What are your weaknesses?', 'I sometimes take on too much responsibility, but I am working on delegation and time management.'),
(5, 'Where do you see yourself in five years?', 'I see myself growing within the company, taking on new challenges, and contributing to its success.'),
(6, 'Why should we hire you?', 'I have the right skills, experience, and motivation to contribute effectively to your team.'),
(7, 'What is your expected salary?', 'I am open to discussion and looking for a fair salary based on industry standards and my experience.'),
(8, 'How do you handle stress and pressure?', 'I prioritize tasks, stay organized, and take short breaks to remain productive.'),
(9, 'Describe a time you had a conflict at work and how you resolved it.', 'I had a disagreement with a colleague over a project. We discussed our perspectives and reached a compromise that benefited the team.'),
(10, 'Tell me about a time you failed.', 'I missed a deadline once due to poor time management. Since then, I have improved my planning skills.'),
(11, 'What motivates you?', 'Challenges, learning opportunities, and working in a positive team environment motivate me.'),
(12, 'How do you prioritize your work?', 'I use a combination of priority lists, deadlines, and communication to manage my workload.'),
(13, 'Tell me about a time when you went above and beyond.', 'I took extra responsibility to complete a project ahead of schedule, ensuring the team\'s success.'),
(14, 'How do you handle feedback?', 'I welcome feedback as an opportunity to grow and improve.'),
(15, 'What do you know about our company?', 'Your company is known for [something specific]. I appreciate your commitment to [value or goal].'),
(16, 'What kind of work environment do you thrive in?', 'I thrive in a collaborative and goal-oriented work environment.'),
(17, 'How do you handle criticism?', 'I take criticism constructively and use it to improve my performance.'),
(18, 'What are your career goals?', 'I aim to advance in my career, gain expertise, and contribute meaningfully to my company.'),
(19, 'How do you manage time effectively?', 'I use scheduling tools, set priorities, and eliminate distractions.'),
(20, 'Do you prefer working independently or in a team?', 'I enjoy both, as I can work independently and also collaborate effectively.'),
(21, 'Tell me about a challenging situation and how you handled it.', 'I faced a tight deadline but stayed focused and coordinated with my team to meet the target.'),
(22, 'How do you handle a difficult coworker?', 'I remain professional, communicate openly, and seek common ground.'),
(23, 'How do you handle multiple projects at the same time?', 'I prioritize tasks, set deadlines, and maintain clear communication with my team.'),
(24, 'What do you do if you disagree with your manager?', 'I respectfully express my perspective while considering my manager’s viewpoint.'),
(25, 'How do you stay updated in your field?', 'I follow industry blogs, attend webinars, and take online courses.'),
(26, 'How do you handle missing a deadline?', 'I communicate the issue early, adjust priorities, and work efficiently to minimize delays.'),
(27, 'What do you do when you make a mistake at work?', 'I take responsibility, learn from it, and ensure it doesn\'t happen again.'),
(28, 'Why did you leave your last job?', 'I was looking for new challenges and growth opportunities.'),
(29, 'What do you think makes a good leader?', 'A good leader is supportive, communicative, and leads by example.'),
(30, 'Tell me about a time you demonstrated leadership skills.', 'I took initiative on a project, guided my team, and ensured its success.'),
(31, 'What would you do if you saw a colleague violating company policy?', 'I would address it professionally and, if necessary, report it to management.'),
(32, 'How do you handle tight deadlines?', 'I break down tasks, stay focused, and prioritize effectively.'),
(33, 'What do you do if you don\'t know how to complete a task?', 'I research, ask for guidance, and learn quickly.'),
(34, 'How do you keep yourself motivated during repetitive tasks?', 'I set small goals, take breaks, and find ways to improve efficiency.'),
(35, 'Tell me about a project you successfully managed.', 'I led a team on [project], coordinated efforts, and met all objectives.'),
(36, 'What do you consider your biggest professional achievement?', 'Completing [major project] under budget and ahead of schedule.'),
(37, 'How do you handle difficult customers or clients?', 'I stay calm, listen actively, and find solutions.'),
(38, 'What are the top three things you look for in a job?', 'Growth opportunities, a positive work environment, and meaningful work.'),
(39, 'Have you ever disagreed with company policies? How did you handle it?', 'I expressed my concerns professionally and adapted to the company’s decision.'),
(40, 'How do you handle workplace conflicts?', 'I address issues calmly, communicate effectively, and seek resolutions.'),
(41, 'How would you describe your ideal job?', 'A role where I can utilize my skills, contribute, and grow.'),
(42, 'What is your work ethic?', 'I am committed, responsible, and always give my best.'),
(43, 'What do you enjoy most about your job?', 'Solving challenges and learning new things.'),
(44, 'How do you handle constructive criticism?', 'I take it as an opportunity to improve.'),
(45, 'What do you do outside of work?', 'I enjoy [hobbies], which help me stay balanced.'),
(46, 'Would you be willing to relocate?', 'I am open to relocation if necessary.'),
(47, 'Do you have any questions for us?', 'Yes, I’d love to know more about [company initiatives, team structure, etc.].'),
(48, 'How soon can you start?', 'I am available to start after serving my notice period.'),
(49, 'What do you think sets you apart from other candidates?', 'My experience, problem-solving ability, and commitment to excellence.'),
(50, 'What is the most important thing to you in a job?', 'A positive work culture, opportunities for growth, and a role where I can make an impact.'),
(51, 'How do you stay productive?', 'I stay organized, minimize distractions, and focus on high-impact tasks.'),
(52, 'Describe your dream job.', 'A role that challenges me, allows me to learn, and lets me contribute meaningfully.'),
(53, 'What would you do if you were assigned a task outside your skillset?', 'I would research, ask for help, and develop the necessary skills.'),
(54, 'How do you ensure work-life balance?', 'I set clear boundaries, prioritize tasks, and take time for self-care.'),
(55, 'What motivates you to do your best work?', 'The opportunity to grow, solve challenges, and make a meaningful impact.'),
(56, 'Why do you want to leave your current job?', 'I am looking for new challenges and growth opportunities.'),
(57, 'Do you have any regrets in your career?', 'I focus on learning from past experiences rather than regrets.'),
(58, 'How do you handle last-minute changes?', 'I stay flexible, adapt quickly, and focus on finding solutions.'),
(59, 'How do you ensure clear communication at work?', 'I listen actively, provide clear updates, and confirm understanding.'),
(60, 'What do you think is the key to a successful career?', 'Continuous learning, adaptability, and a strong work ethic.');

-- --------------------------------------------------------

--
-- Table structure for table `mcqanswers`
--

CREATE TABLE `mcqanswers` (
  `id` int NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `skill` varchar(100) NOT NULL,
  `answers` json NOT NULL,
  `score` int NOT NULL,
  `total_questions` int NOT NULL,
  `submitted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `python_questions`
--

CREATE TABLE `python_questions` (
  `id` int NOT NULL,
  `question` text COLLATE utf8mb4_general_ci NOT NULL,
  `expected_output` text COLLATE utf8mb4_general_ci NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'python'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `python_questions`
--

INSERT INTO `python_questions` (`id`, `question`, `expected_output`, `language`) VALUES
(1, 'Write a program to reverse a string.', 'olleh', 'python'),
(2, 'Write a program to print \"Hello, World!\"', 'Hello, World!', 'python'),
(3, 'Write a program to add two numbers (input: 5, 3)', '8', 'python'),
(4, 'Write a program to subtract two numbers (input: 10, 4)', '6', 'python'),
(5, 'Write a program to multiply two numbers (input: 6, 7)', '42', 'python'),
(6, 'Write a program to divide two numbers (input: 15, 3)', '5.0', 'python'),
(7, 'Write a program to find the remainder of 17 divided by 5', '2', 'python'),
(8, 'Write a program to check if a number is even (input: 8)', '8 is even', 'python'),
(9, 'Write a program to check if a number is odd (input: 7)', '7 is odd', 'python'),
(10, 'Write a program to find the largest of two numbers (input: 15, 9)', '15 is larger', 'python'),
(11, 'Write a program to find the smallest of two numbers (input: 15, 9)', '9 is smaller', 'python'),
(12, 'Write a program to print numbers from 1 to 5', '1\n2\n3\n4\n5', 'python'),
(13, 'Write a program to print numbers from 5 to 1', '5\n4\n3\n2\n1', 'python'),
(14, 'Write a program to calculate the factorial of 5', '120', 'python'),
(15, 'Write a program to check if a number is prime (input: 7)', '7 is prime', 'python'),
(16, 'Write a program to reverse a string \"hello\" (input: hello)', 'olleh', 'python'),
(17, 'Write a program to count vowels in \"hello world\" (input: hello world)', '3', 'python'),
(18, 'Write a program to print the ASCII value of \'A\'', '65', 'python'),
(19, 'Write a program to swap two numbers (input: 5, 3)', 'After swap: 3, 5', 'python'),
(20, 'Write a program to find the sum of digits in 123 (input: 123)', '6', 'python'),
(21, 'Write a program to check if a year is leap year (input: 2020)', '2020 is a leap year', 'python'),
(22, 'Write a program to print a pyramid of stars (height 3)', '  *\n ***\n*****', 'python'),
(23, 'Write a program to calculate the power of 2^3', '8', 'python'),
(24, 'Write a program to convert Celsius to Fahrenheit (input: 37)', '98.6', 'python'),
(25, 'Write a program to find the GCD of 48 and 18 (input: 48, 18)', '6', 'python'),
(26, 'Write a program to find the LCM of 12 and 18 (input: 12, 18)', '36', 'python'),
(27, 'Write a program to count characters in \"hello\" (input: hello)', '5', 'python'),
(28, 'Write a program to check if a string is palindrome (input: radar)', 'radar is a palindrome', 'python'),
(29, 'Write a program to print Fibonacci sequence up to 5 terms', '0\n1\n1\n2\n3', 'python'),
(30, 'Write a program to sort an array [5, 2, 8, 1, 9] in ascending order', '1, 2, 5, 8, 9', 'python'),
(31, 'Write a program to find the average of numbers [10, 20, 30] (input: 10, 20, 30)', '20.0', 'python');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  `review_text` text,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `rating`, `review_text`, `created_at`) VALUES
(1, 1, 5, 'good', '2025-03-26 21:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `skills_questions`
--

CREATE TABLE `skills_questions` (
  `id` int NOT NULL,
  `category` varchar(100) NOT NULL,
  `skill` varchar(100) NOT NULL,
  `question` text NOT NULL,
  `options` json NOT NULL,
  `correct_answer` varchar(1) NOT NULL
) ;

--
-- Dumping data for table `skills_questions`
--

INSERT INTO `skills_questions` (`id`, `category`, `skill`, `question`, `options`, `correct_answer`) VALUES
(1, 'Frontend', 'HTML', 'What does HTML stand for?', '{\"A\": \"Hyper Text Markup Language\", \"B\": \"Hyperlink Text Markup Language\", \"C\": \"Home Tool Markup Language\", \"D\": \"Hyper Text Model Language\"}', 'A'),
(2, 'Frontend', 'HTML', 'Which tag is used to create a hyperlink in HTML?', '{\"A\": \"link\", \"B\": \"a\", \"C\": \"href\", \"D\": \"url\"}', 'B'),
(3, 'Frontend', 'HTML', 'What is the correct HTML element for the largest heading?', '{\"A\": \"h1\", \"B\": \"h6\", \"C\": \"heading\", \"D\": \"head\"}', 'A'),
(4, 'Frontend', 'HTML', 'Which HTML attribute specifies an alternate text for an image?', '{\"A\": \"src\", \"B\": \"alt\", \"C\": \"title\", \"D\": \"href\"}', 'B'),
(5, 'Frontend', 'HTML', 'Which HTML element is used to define a paragraph?', '{\"A\": \"p\", \"B\": \"para\", \"C\": \"paragraph\", \"D\": \"text\"}', 'A'),
(6, 'Backend', 'Node.js', 'What is Node.js primarily used for?', '{\"A\": \"Frontend development\", \"B\": \"Server-side development\", \"C\": \"Database management\", \"D\": \"Game development\"}', 'B'),
(7, 'Backend', 'Node.js', 'Which module is used to create a server in Node.js?', '{\"A\": \"http\", \"B\": \"fs\", \"C\": \"path\", \"D\": \"os\"}', 'A'),
(8, 'Backend', 'Node.js', 'Which keyword declares a constant in Node.js?', '{\"A\": \"var\", \"B\": \"let\", \"C\": \"const\", \"D\": \"define\"}', 'C'),
(9, 'Backend', 'Node.js', 'What is the file extension for Node.js scripts?', '{\"A\": \".js\", \"B\": \".node\", \"C\": \".ts\", \"D\": \".jsx\"}', 'A'),
(10, 'Backend', 'Node.js', 'Which command installs a package in Node.js?', '{\"A\": \"npm install\", \"B\": \"node install\", \"C\": \"npm add\", \"D\": \"node add\"}', 'A'),
(36, 'Frontend', 'HTML', 'What does the <meta> tag do in HTML?', '{\"A\": \"Defines a paragraph\", \"B\": \"Provides metadata about the document\", \"C\": \"Creates a hyperlink\", \"D\": \"Embeds a video\"}', 'B'),
(37, 'Frontend', 'HTML', 'Which HTML element is used to define important text?', '{\"A\": \"strong\", \"B\": \"em\", \"C\": \"mark\", \"D\": \"bold\"}', 'A'),
(38, 'Frontend', 'HTML', 'What is the correct HTML element for inserting a line break?', '{\"A\": \"br\", \"B\": \"break\", \"C\": \"lb\", \"D\": \"newline\"}', 'A'),
(39, 'Frontend', 'HTML', 'Which attribute specifies an alternate text for an image?', '{\"A\": \"src\", \"B\": \"alt\", \"C\": \"title\", \"D\": \"href\"}', 'B'),
(40, 'Frontend', 'HTML', 'How do you create a hyperlink in HTML?', '{\"A\": \"a href=\\\"url\\\"\", \"B\": \"link src=\\\"url\\\"\", \"C\": \"a src=\\\"url\\\"\", \"D\": \"href a=\\\"url\\\"\"}', 'A'),
(41, 'Frontend', 'CSS', 'What is the default value of the position property in CSS?', '{\"A\": \"absolute\", \"B\": \"relative\", \"C\": \"fixed\", \"D\": \"static\"}', 'D'),
(42, 'Frontend', 'CSS', 'Which CSS property controls the spacing between elements?', '{\"A\": \"padding\", \"B\": \"margin\", \"C\": \"border\", \"D\": \"gap\"}', 'B'),
(43, 'Frontend', 'CSS', 'How do you center a block element horizontally in CSS?', '{\"A\": \"text-align: center\", \"B\": \"margin: auto\", \"C\": \"align: center\", \"D\": \"position: center\"}', 'B'),
(44, 'Frontend', 'CSS', 'Which property is used to change the text color?', '{\"A\": \"font-color\", \"B\": \"color\", \"C\": \"text-color\", \"D\": \"background-color\"}', 'B'),
(45, 'Frontend', 'CSS', 'What does the `z-index` property do?', '{\"A\": \"Sets the font size\", \"B\": \"Controls the stacking order\", \"C\": \"Adjusts the opacity\", \"D\": \"Changes the position\"}', 'B'),
(46, 'Frontend', 'JavaScript', 'What is the correct way to declare a variable in JavaScript?', '{\"A\": \"var x = 5\", \"B\": \"variable x = 5\", \"C\": \"let x 5\", \"D\": \"const x = 5\"}', 'A'),
(47, 'Frontend', 'JavaScript', 'Which method is used to add an element to the end of an array?', '{\"A\": \"push()\", \"B\": \"pop()\", \"C\": \"shift()\", \"D\": \"unshift()\"}', 'A'),
(48, 'Frontend', 'JavaScript', 'How do you write a comment in JavaScript?', '{\"A\": \"// Comment\", \"B\": \"<!-- Comment -->\", \"C\": \"/* Comment */\", \"D\": \"Both A and C\"}', 'D'),
(49, 'Frontend', 'JavaScript', 'What does the `typeof` operator return?', '{\"A\": \"The value of a variable\", \"B\": \"The type of a variable\", \"C\": \"The length of a variable\", \"D\": \"The scope of a variable\"}', 'B'),
(50, 'Frontend', 'JavaScript', 'Which event occurs when a user clicks on an HTML element?', '{\"A\": \"onchange\", \"B\": \"onmouseover\", \"C\": \"onclick\", \"D\": \"onkeydown\"}', 'C'),
(51, 'Frontend', 'React', 'What is used to pass data to a component in React?', '{\"A\": \"state\", \"B\": \"props\", \"C\": \"context\", \"D\": \"hooks\"}', 'B'),
(52, 'Frontend', 'React', 'Which hook is used to manage state in a functional component?', '{\"A\": \"useEffect\", \"B\": \"useState\", \"C\": \"useContext\", \"D\": \"useReducer\"}', 'B'),
(53, 'Frontend', 'React', 'What is the purpose of `useEffect` in React?', '{\"A\": \"To manage state\", \"B\": \"To handle side effects\", \"C\": \"To pass props\", \"D\": \"To create components\"}', 'B'),
(54, 'Frontend', 'React', 'How do you prevent a component from re-rendering in React?', '{\"A\": \"Using useState\", \"B\": \"Using useEffect\", \"C\": \"Using React.memo\", \"D\": \"Using useReducer\"}', 'C'),
(55, 'Frontend', 'React', 'What is the default export in a React component file?', '{\"A\": \"The component itself\", \"B\": \"The state\", \"C\": \"The props\", \"D\": \"The hooks\"}', 'A'),
(56, 'Frontend', 'Vue', 'What directive is used to bind an attribute in Vue?', '{\"A\": \"v-bind\", \"B\": \"v-model\", \"C\": \"v-if\", \"D\": \"v-for\"}', 'A'),
(57, 'Frontend', 'Vue', 'How do you create a two-way binding in Vue?', '{\"A\": \"v-bind\", \"B\": \"v-model\", \"C\": \"v-on\", \"D\": \"v-if\"}', 'B'),
(58, 'Frontend', 'Vue', 'Which directive is used to loop through a list in Vue?', '{\"A\": \"v-if\", \"B\": \"v-for\", \"C\": \"v-show\", \"D\": \"v-on\"}', 'B'),
(59, 'Frontend', 'Vue', 'What is the purpose of `v-if` in Vue?', '{\"A\": \"To bind data\", \"B\": \"To loop through items\", \"C\": \"To conditionally render an element\", \"D\": \"To handle events\"}', 'C'),
(60, 'Frontend', 'Vue', 'How do you handle a click event in Vue?', '{\"A\": \"v-on:click\", \"B\": \"v-bind:click\", \"C\": \"v-model:click\", \"D\": \"v-if:click\"}', 'A'),
(61, 'Backend', 'Node.js', 'Which module is used to create a web server in Node.js?', '{\"A\": \"fs\", \"B\": \"http\", \"C\": \"path\", \"D\": \"url\"}', 'B'),
(62, 'Backend', 'Node.js', 'What does the `npm` command do?', '{\"A\": \"Installs Node.js\", \"B\": \"Manages packages for Node.js\", \"C\": \"Runs JavaScript files\", \"D\": \"Compiles Node.js code\"}', 'B'),
(63, 'Backend', 'Node.js', 'What is the purpose of `module.exports` in Node.js?', '{\"A\": \"To import a module\", \"B\": \"To export a module\", \"C\": \"To create a server\", \"D\": \"To handle errors\"}', 'B'),
(64, 'Backend', 'Node.js', 'Which method is used to read a file asynchronously in Node.js?', '{\"A\": \"fs.readFileSync\", \"B\": \"fs.writeFile\", \"C\": \"fs.readFile\", \"D\": \"fs.appendFile\"}', 'C'),
(65, 'Backend', 'Node.js', 'What is Express in Node.js?', '{\"A\": \"A database\", \"B\": \"A web framework\", \"C\": \"A package manager\", \"D\": \"A testing tool\"}', 'B'),
(66, 'Backend', 'Java', 'Which keyword is used to inherit a class in Java?', '{\"A\": \"implements\", \"B\": \"extends\", \"C\": \"super\", \"D\": \"this\"}', 'B'),
(67, 'Backend', 'Java', 'What is the default value of an int variable in Java?', '{\"A\": \"null\", \"B\": \"0\", \"C\": \"-1\", \"D\": \"undefined\"}', 'B'),
(68, 'Backend', 'Java', 'Which access modifier makes a variable accessible only within the same package?', '{\"A\": \"public\", \"B\": \"private\", \"C\": \"protected\", \"D\": \"default\"}', 'D'),
(69, 'Backend', 'Java', 'What does the `final` keyword do in Java?', '{\"A\": \"Allows method overriding\", \"B\": \"Prevents method overriding\", \"C\": \"Makes a variable mutable\", \"D\": \"Declares a loop\"}', 'B'),
(70, 'Backend', 'Java', 'Which collection class is synchronized in Java?', '{\"A\": \"ArrayList\", \"B\": \"LinkedList\", \"C\": \"Vector\", \"D\": \"HashSet\"}', 'C'),
(71, 'Backend', 'Python', 'How do you define a function in Python?', '{\"A\": \"function myFunc():\", \"B\": \"def myFunc():\", \"C\": \"func myFunc():\", \"D\": \"define myFunc():\"}', 'B'),
(72, 'Backend', 'Python', 'What is the output of `print(type([]))` in Python?', '{\"A\": \"class \'dict\'\", \"B\": \"class \'list\'\", \"C\": \"class \'tuple\'\", \"D\": \"class \'set\'\"}', 'B'),
(73, 'Backend', 'Python', 'Which keyword is used to handle exceptions in Python?', '{\"A\": \"catch\", \"B\": \"try\", \"C\": \"except\", \"D\": \"Both B and C\"}', 'D'),
(74, 'Backend', 'Python', 'How do you create a list comprehension in Python?', '{\"A\": \"[x for x in range(5)]\", \"B\": \"{x for x in range(5)}\", \"C\": \"(x for x in range(5))\", \"D\": \"[x in range(5)]\"}', 'A'),
(75, 'Backend', 'Python', 'What does the `len()` function do in Python?', '{\"A\": \"Returns the type of an object\", \"B\": \"Returns the length of an object\", \"C\": \"Converts to string\", \"D\": \"Checks for equality\"}', 'B'),
(76, 'Backend', 'PHP', 'How do you start a PHP script?', '{\"A\": \"<?php\", \"B\": \"<?\", \"C\": \"<%\", \"D\": \"<?=\"}', 'A'),
(77, 'Backend', 'PHP', 'Which function is used to connect to a MySQL database in PHP?', '{\"A\": \"mysql_connect()\", \"B\": \"mysqli_connect()\", \"C\": \"db_connect()\", \"D\": \"connect_mysql()\"}', 'B'),
(78, 'Backend', 'PHP', 'What does the `echo` statement do in PHP?', '{\"A\": \"Defines a variable\", \"B\": \"Outputs a string\", \"C\": \"Includes a file\", \"D\": \"Starts a session\"}', 'B'),
(79, 'Backend', 'PHP', 'How do you access a global variable inside a function in PHP?', '{\"A\": \"Using $global\", \"B\": \"Using global keyword\", \"C\": \"Using $this\", \"D\": \"Using static\"}', 'B'),
(80, 'Backend', 'PHP', 'What is the purpose of `$_SESSION` in PHP?', '{\"A\": \"To store form data\", \"B\": \"To store session data\", \"C\": \"To handle database queries\", \"D\": \"To manage cookies\"}', 'B'),
(81, 'Backend', 'Ruby', 'How do you define a method in Ruby?', '{\"A\": \"def my_method\", \"B\": \"function my_method\", \"C\": \"method my_method\", \"D\": \"define my_method\"}', 'A'),
(82, 'Backend', 'Ruby', 'What is the Ruby equivalent of a JavaScript array?', '{\"A\": \"Hash\", \"B\": \"Array\", \"C\": \"Symbol\", \"D\": \"Set\"}', 'B'),
(83, 'Backend', 'Ruby', 'Which keyword is used to iterate over an array in Ruby?', '{\"A\": \"for\", \"B\": \"each\", \"C\": \"loop\", \"D\": \"while\"}', 'B'),
(84, 'Backend', 'Ruby', 'What does the `puts` method do in Ruby?', '{\"A\": \"Reads input\", \"B\": \"Outputs a string\", \"C\": \"Defines a variable\", \"D\": \"Creates a class\"}', 'B'),
(85, 'Backend', 'Ruby', 'How do you create a class in Ruby?', '{\"A\": \"class MyClass\", \"B\": \"define MyClass\", \"C\": \"new MyClass\", \"D\": \"struct MyClass\"}', 'A'),
(86, 'Fullstack', 'MongoDB', 'What type of database is MongoDB?', '{\"A\": \"Relational\", \"B\": \"NoSQL\", \"C\": \"Graph\", \"D\": \"Key-Value\"}', 'B'),
(87, 'Fullstack', 'MongoDB', 'Which command is used to insert a document in MongoDB?', '{\"A\": \"insertOne()\", \"B\": \"addDocument()\", \"C\": \"create()\", \"D\": \"insertDoc()\"}', 'A'),
(88, 'Fullstack', 'MongoDB', 'How do you query all documents in a MongoDB collection?', '{\"A\": \"db.collection.find()\", \"B\": \"db.collection.getAll()\", \"C\": \"db.collection.select()\", \"D\": \"db.collection.query()\"}', 'A'),
(89, 'Fullstack', 'MongoDB', 'What is the primary key field in MongoDB?', '{\"A\": \"id\", \"B\": \"_id\", \"C\": \"key\", \"D\": \"pk\"}', 'B'),
(90, 'Fullstack', 'MongoDB', 'Which operator is used to match documents in MongoDB?', '{\"A\": \"$match\", \"B\": \"$eq\", \"C\": \"$find\", \"D\": \"$select\"}', 'B'),
(91, 'Fullstack', 'Express.js', 'What is Express.js primarily used for?', '{\"A\": \"Database management\", \"B\": \"Building RESTful APIs\", \"C\": \"Frontend rendering\", \"D\": \"File system operations\"}', 'B'),
(92, 'Fullstack', 'Express.js', 'Which method defines a route in Express.js?', '{\"A\": \"app.route()\", \"B\": \"app.get()\", \"C\": \"app.define()\", \"D\": \"app.path()\"}', 'B'),
(93, 'Fullstack', 'Express.js', 'How do you handle middleware in Express.js?', '{\"A\": \"app.use()\", \"B\": \"app.middleware()\", \"C\": \"app.handle()\", \"D\": \"app.set()\"}', 'A'),
(94, 'Fullstack', 'Express.js', 'What does `req.params` contain in Express.js?', '{\"A\": \"Query string parameters\", \"B\": \"Route parameters\", \"C\": \"Body data\", \"D\": \"Header data\"}', 'B'),
(95, 'Fullstack', 'Express.js', 'Which method sends a JSON response in Express.js?', '{\"A\": \"res.send()\", \"B\": \"res.json()\", \"C\": \"res.write()\", \"D\": \"res.end()\"}', 'B'),
(96, 'Fullstack', 'React', 'What is used to pass data to a component in React?', '{\"A\": \"state\", \"B\": \"props\", \"C\": \"context\", \"D\": \"hooks\"}', 'B'),
(97, 'Fullstack', 'React', 'Which hook is used to manage state in a functional component?', '{\"A\": \"useEffect\", \"B\": \"useState\", \"C\": \"useContext\", \"D\": \"useReducer\"}', 'B'),
(98, 'Fullstack', 'React', 'What is the purpose of `useEffect` in React?', '{\"A\": \"To manage state\", \"B\": \"To handle side effects\", \"C\": \"To pass props\", \"D\": \"To render components\"}', 'B'),
(99, 'Fullstack', 'React', 'How do you create a React component?', '{\"A\": \"function MyComponent() {}\", \"B\": \"class MyComponent extends React.Component {}\", \"C\": \"Both A and B\", \"D\": \"React.createComponent()\"}', 'C'),
(100, 'Fullstack', 'React', 'What does JSX stand for?', '{\"A\": \"JavaScript XML\", \"B\": \"JavaScript Extension\", \"C\": \"Java Syntax\", \"D\": \"JavaScript XHR\"}', 'A'),
(101, 'Fullstack', 'Node.js', 'Which module is used to create a web server in Node.js?', '{\"A\": \"fs\", \"B\": \"http\", \"C\": \"path\", \"D\": \"url\"}', 'B'),
(102, 'Fullstack', 'Node.js', 'What does the `npm` command do?', '{\"A\": \"Installs Node.js\", \"B\": \"Manages packages for Node.js\", \"C\": \"Runs JavaScript files\", \"D\": \"Compiles Node.js code\"}', 'B'),
(103, 'Fullstack', 'Node.js', 'What is the purpose of `module.exports` in Node.js?', '{\"A\": \"To import a module\", \"B\": \"To export a module\", \"C\": \"To create a server\", \"D\": \"To read a file\"}', 'B'),
(104, 'Fullstack', 'Node.js', 'Which method is used to read a file asynchronously in Node.js?', '{\"A\": \"fs.readFileSync\", \"B\": \"fs.writeFile\", \"C\": \"fs.readFile\", \"D\": \"fs.open\"}', 'C'),
(105, 'Fullstack', 'Node.js', 'What is Express.js?', '{\"A\": \"A database for Node.js\", \"B\": \"A web framework for Node.js\", \"C\": \"A package manager\", \"D\": \"A testing library\"}', 'B'),
(106, 'DevOps / Cloud', 'AWS', 'What is Amazon S3 used for?', '{\"A\": \"Computing power\", \"B\": \"Object storage\", \"C\": \"Relational database\", \"D\": \"Networking\"}', 'B'),
(107, 'DevOps / Cloud', 'AWS', 'Which AWS service is used for serverless computing?', '{\"A\": \"EC2\", \"B\": \"Lambda\", \"C\": \"RDS\", \"D\": \"SQS\"}', 'B'),
(108, 'DevOps / Cloud', 'AWS', 'What does EC2 stand for in AWS?', '{\"A\": \"Elastic Compute Cloud\", \"B\": \"Elastic Container Cloud\", \"C\": \"Elastic Cache Cloud\", \"D\": \"Elastic Compute Container\"}', 'A'),
(109, 'DevOps / Cloud', 'AWS', 'Which AWS service is used for DNS management?', '{\"A\": \"Route 53\", \"B\": \"CloudFront\", \"C\": \"VPC\", \"D\": \"IAM\"}', 'A'),
(110, 'DevOps / Cloud', 'AWS', 'What is the purpose of IAM in AWS?', '{\"A\": \"Manage virtual machines\", \"B\": \"Identity and Access Management\", \"C\": \"Monitor applications\", \"D\": \"Store data\"}', 'B'),
(111, 'DevOps / Cloud', 'Docker', 'What is a Docker container?', '{\"A\": \"A virtual machine\", \"B\": \"A lightweight, isolated environment\", \"C\": \"A database\", \"D\": \"A web server\"}', 'B'),
(112, 'DevOps / Cloud', 'Docker', 'Which command builds a Docker image?', '{\"A\": \"docker run\", \"B\": \"docker build\", \"C\": \"docker create\", \"D\": \"docker exec\"}', 'B'),
(113, 'DevOps / Cloud', 'Docker', 'What does the `Dockerfile` do?', '{\"A\": \"Runs a container\", \"B\": \"Defines how to build an image\", \"C\": \"Stores container logs\", \"D\": \"Manages networks\"}', 'B'),
(114, 'DevOps / Cloud', 'Docker', 'Which command lists all running Docker containers?', '{\"A\": \"docker ps\", \"B\": \"docker list\", \"C\": \"docker containers\", \"D\": \"docker run\"}', 'A'),
(115, 'DevOps / Cloud', 'Docker', 'What is Docker Compose used for?', '{\"A\": \"Building images\", \"B\": \"Managing multiple containers\", \"C\": \"Running a single container\", \"D\": \"Networking\"}', 'B'),
(116, 'DevOps / Cloud', 'Kubernetes', 'What is a Pod in Kubernetes?', '{\"A\": \"A group of nodes\", \"B\": \"The smallest deployable unit\", \"C\": \"A storage volume\", \"D\": \"A network policy\"}', 'B'),
(117, 'DevOps / Cloud', 'Kubernetes', 'Which command is used to get cluster information in Kubernetes?', '{\"A\": \"kubectl get nodes\", \"B\": \"kubectl cluster-info\", \"C\": \"kubectl describe\", \"D\": \"kubectl logs\"}', 'B'),
(118, 'DevOps / Cloud', 'Kubernetes', 'What does a Kubernetes Service do?', '{\"A\": \"Manages storage\", \"B\": \"Exposes pods to the network\", \"C\": \"Deploys containers\", \"D\": \"Monitors performance\"}', 'B'),
(119, 'DevOps / Cloud', 'Kubernetes', 'What is the role of the `kubelet` in Kubernetes?', '{\"A\": \"Manages the API server\", \"B\": \"Runs on each node to manage pods\", \"C\": \"Handles networking\", \"D\": \"Stores cluster data\"}', 'B'),
(120, 'DevOps / Cloud', 'Kubernetes', 'Which Kubernetes object defines a desired state for an application?', '{\"A\": \"Pod\", \"B\": \"Service\", \"C\": \"Deployment\", \"D\": \"ConfigMap\"}', 'C'),
(121, 'DevOps / Cloud', 'Terraform', 'What is Terraform primarily used for?', '{\"A\": \"Container orchestration\", \"B\": \"Infrastructure as Code\", \"C\": \"Monitoring\", \"D\": \"Logging\"}', 'B'),
(122, 'DevOps / Cloud', 'Terraform', 'Which command initializes a Terraform project?', '{\"A\": \"terraform init\", \"B\": \"terraform apply\", \"C\": \"terraform plan\", \"D\": \"terraform build\"}', 'A'),
(123, 'DevOps / Cloud', 'Terraform', 'What does the `terraform plan` command do?', '{\"A\": \"Applies changes\", \"B\": \"Shows the execution plan\", \"C\": \"Destroys resources\", \"D\": \"Initializes the project\"}', 'B'),
(124, 'DevOps / Cloud', 'Terraform', 'What file extension is used for Terraform configuration files?', '{\"A\": \".tf\", \"B\": \".yaml\", \"C\": \".json\", \"D\": \".conf\"}', 'A'),
(125, 'DevOps / Cloud', 'Terraform', 'Which provider is commonly used for AWS in Terraform?', '{\"A\": \"aws\", \"B\": \"azure\", \"C\": \"gcp\", \"D\": \"docker\"}', 'A'),
(126, 'QA / Automation Testing', 'Selenium', 'What is Selenium primarily used for?', '{\"A\": \"Unit testing\", \"B\": \"Automated browser testing\", \"C\": \"Performance testing\", \"D\": \"API testing\"}', 'B'),
(127, 'QA / Automation Testing', 'Selenium', 'Which Selenium component interacts with the browser?', '{\"A\": \"Selenium WebDriver\", \"B\": \"Selenium Grid\", \"C\": \"Selenium IDE\", \"D\": \"Selenium RC\"}', 'A'),
(128, 'QA / Automation Testing', 'Selenium', 'How do you locate an element by ID in Selenium?', '{\"A\": \"driver.findElement(By.id())\", \"B\": \"driver.getElementById()\", \"C\": \"driver.findById()\", \"D\": \"driver.locateById()\"}', 'A'),
(129, 'QA / Automation Testing', 'Selenium', 'What does the `implicitlyWait` method do in Selenium?', '{\"A\": \"Pauses the test\", \"B\": \"Waits for an element to appear\", \"C\": \"Waits for a page to load\", \"D\": \"Closes the browser\"}', 'B'),
(130, 'QA / Automation Testing', 'Selenium', 'Which language is NOT supported by Selenium WebDriver?', '{\"A\": \"Java\", \"B\": \"Python\", \"C\": \"Ruby\", \"D\": \"SQL\"}', 'D'),
(131, 'QA / Automation Testing', 'JUnit', 'What is JUnit used for?', '{\"A\": \"Browser automation\", \"B\": \"Unit testing in Java\", \"C\": \"Performance testing\", \"D\": \"Database testing\"}', 'B'),
(132, 'QA / Automation Testing', 'JUnit', 'Which annotation is used to define a test method in JUnit?', '{\"A\": \"@Test\", \"B\": \"@Run\", \"C\": \"@Method\", \"D\": \"@Execute\"}', 'A'),
(133, 'QA / Automation Testing', 'JUnit', 'What does the `@Before` annotation do in JUnit?', '{\"A\": \"Runs after each test\", \"B\": \"Runs before each test\", \"C\": \"Runs before the class\", \"D\": \"Runs after the class\"}', 'B'),
(134, 'QA / Automation Testing', 'JUnit', 'How do you assert that two values are equal in JUnit?', '{\"A\": \"assertEquals()\", \"B\": \"assertSame()\", \"C\": \"assertTrue()\", \"D\": \"assertNotNull()\"}', 'A'),
(135, 'QA / Automation Testing', 'JUnit', 'What is the purpose of `@Ignore` in JUnit?', '{\"A\": \"Skips a test\", \"B\": \"Fails a test\", \"C\": \"Runs a test\", \"D\": \"Marks a test as passed\"}', 'A'),
(136, 'QA / Automation Testing', 'Cypress', 'What is Cypress primarily used for?', '{\"A\": \"Backend testing\", \"B\": \"End-to-end testing\", \"C\": \"Unit testing\", \"D\": \"Database testing\"}', 'B'),
(137, 'QA / Automation Testing', 'Cypress', 'Which command is used to visit a URL in Cypress?', '{\"A\": \"cy.visit()\", \"B\": \"cy.goto()\", \"C\": \"cy.navigate()\", \"D\": \"cy.open()\"}', 'A'),
(138, 'QA / Automation Testing', 'Cypress', 'How do you select an element by its ID in Cypress?', '{\"A\": \"cy.get(\'#id\')\", \"B\": \"cy.findById(\'id\')\", \"C\": \"cy.select(\'#id\')\", \"D\": \"cy.id(\'#id\')\"}', 'A'),
(139, 'QA / Automation Testing', 'Cypress', 'What does `cy.wait()` do in Cypress?', '{\"A\": \"Pauses the test for a specified time\", \"B\": \"Waits for an element\", \"C\": \"Reloads the page\", \"D\": \"Closes the browser\"}', 'A'),
(140, 'QA / Automation Testing', 'Cypress', 'Which assertion checks if an element is visible in Cypress?', '{\"A\": \"should(\'be.visible\')\", \"B\": \"should(\'exist\')\", \"C\": \"should(\'be.present\')\", \"D\": \"should(\'be.displayed\')\"}', 'A'),
(141, 'QA / Automation Testing', 'Appium', 'What is Appium used for?', '{\"A\": \"Web testing\", \"B\": \"Mobile app testing\", \"C\": \"API testing\", \"D\": \"Performance testing\"}', 'B'),
(142, 'QA / Automation Testing', 'Appium', 'Which platform does Appium NOT support?', '{\"A\": \"Android\", \"B\": \"iOS\", \"C\": \"Windows\", \"D\": \"Linux\"}', 'D'),
(143, 'QA / Automation Testing', 'Appium', 'What is a capability in Appium?', '{\"A\": \"A test script\", \"B\": \"A configuration setting for the driver\", \"C\": \"A test result\", \"D\": \"A UI element\"}', 'B'),
(144, 'QA / Automation Testing', 'Appium', 'How do you locate an element by accessibility ID in Appium?', '{\"A\": \"By.id()\", \"B\": \"By.accessibilityId()\", \"C\": \"By.name()\", \"D\": \"By.xpath()\"}', 'B'),
(145, 'QA / Automation Testing', 'Appium', 'Which driver is used for Android testing in Appium?', '{\"A\": \"XCUITestDriver\", \"B\": \"UiAutomator2Driver\", \"C\": \"EspressoDriver\", \"D\": \"WindowsDriver\"}', 'B'),
(146, 'Data Science / AI', 'Python', 'How do you define a function in Python?', '{\"A\": \"function myFunc():\", \"B\": \"def myFunc():\", \"C\": \"func myFunc():\", \"D\": \"define myFunc():\"}', 'B'),
(147, 'Data Science / AI', 'Python', 'What is the output of `print(type([]))` in Python?', '{\"A\": \"<class \'dict\'>\", \"B\": \"<class \'list\'>\", \"C\": \"<class \'tuple\'>\", \"D\": \"<class \'set\'>\"}', 'B'),
(148, 'Data Science / AI', 'Python', 'Which keyword is used to handle exceptions in Python?', '{\"A\": \"try\", \"B\": \"catch\", \"C\": \"except\", \"D\": \"Both A and C\"}', 'D'),
(149, 'Data Science / AI', 'Python', 'How do you create a list comprehension in Python?', '{\"A\": \"[x for x in range(5)]\", \"B\": \"{x for x in range(5)}\", \"C\": \"(x for x in range(5))\", \"D\": \"list(x for x in range(5))\"}', 'A'),
(150, 'Data Science / AI', 'Python', 'What does the `len()` function do in Python?', '{\"A\": \"Returns the type of an object\", \"B\": \"Returns the length of an object\", \"C\": \"Converts a string to lowercase\", \"D\": \"Appends an element to a list\"}', 'B'),
(151, 'Data Science / AI', 'TensorFlow', 'What is TensorFlow primarily used for?', '{\"A\": \"Web development\", \"B\": \"Machine learning\", \"C\": \"Database management\", \"D\": \"Networking\"}', 'B'),
(152, 'Data Science / AI', 'TensorFlow', 'What is a tensor in TensorFlow?', '{\"A\": \"A type of database\", \"B\": \"A multi-dimensional array\", \"C\": \"A web framework\", \"D\": \"A testing tool\"}', 'B'),
(153, 'Data Science / AI', 'TensorFlow', 'Which function creates a neural network layer in TensorFlow?', '{\"A\": \"tf.keras.layers.Dense()\", \"B\": \"tf.createLayer()\", \"C\": \"tf.nn.layer()\", \"D\": \"tf.keras.model()\"}', 'A'),
(154, 'Data Science / AI', 'TensorFlow', 'What does the `fit()` method do in TensorFlow?', '{\"A\": \"Compiles the model\", \"B\": \"Trains the model\", \"C\": \"Evaluates the model\", \"D\": \"Saves the model\"}', 'B'),
(155, 'Data Science / AI', 'TensorFlow', 'Which optimizer is commonly used in TensorFlow?', '{\"A\": \"Adam\", \"B\": \"Newton\", \"C\": \"Gradient\", \"D\": \"Lasso\"}', 'A'),
(156, 'Data Science / AI', 'PyTorch', 'What is PyTorch primarily used for?', '{\"A\": \"Web development\", \"B\": \"Deep learning\", \"C\": \"Database management\", \"D\": \"Networking\"}', 'B'),
(157, 'Data Science / AI', 'PyTorch', 'What is a tensor in PyTorch?', '{\"A\": \"A type of database\", \"B\": \"A multi-dimensional array\", \"C\": \"A web framework\", \"D\": \"A testing tool\"}', 'B'),
(158, 'Data Science / AI', 'PyTorch', 'Which class is used to define a neural network in PyTorch?', '{\"A\": \"torch.nn.Module\", \"B\": \"torch.Tensor\", \"C\": \"torch.Model\", \"D\": \"torch.Network\"}', 'A'),
(159, 'Data Science / AI', 'PyTorch', 'What does the `backward()` method do in PyTorch?', '{\"A\": \"Computes gradients\", \"B\": \"Trains the model\", \"C\": \"Saves the model\", \"D\": \"Evaluates the model\"}', 'A'),
(160, 'Data Science / AI', 'PyTorch', 'Which function is used to move a tensor to a GPU in PyTorch?', '{\"A\": \"to_gpu()\", \"B\": \"cuda()\", \"C\": \"to(device)\", \"D\": \"gpu()\"}', 'C'),
(161, 'Data Science / AI', 'Scikit-Learn', 'What is Scikit-Learn used for?', '{\"A\": \"Deep learning\", \"B\": \"Machine learning\", \"C\": \"Web development\", \"D\": \"Database management\"}', 'B'),
(162, 'Data Science / AI', 'Scikit-Learn', 'Which function splits data into training and testing sets?', '{\"A\": \"train_test_split()\", \"B\": \"split_data()\", \"C\": \"divide_data()\", \"D\": \"split()\"}', 'A'),
(163, 'Data Science / AI', 'Scikit-Learn', 'What does the `fit()` method do in Scikit-Learn?', '{\"A\": \"Predicts data\", \"B\": \"Trains the model\", \"C\": \"Evaluates the model\", \"D\": \"Saves the model\"}', 'B'),
(164, 'Data Science / AI', 'Scikit-Learn', 'Which algorithm is used for classification in Scikit-Learn?', '{\"A\": \"LinearRegression\", \"B\": \"KMeans\", \"C\": \"LogisticRegression\", \"D\": \"PCA\"}', 'C'),
(165, 'Data Science / AI', 'Scikit-Learn', 'What does the `score()` method return in Scikit-Learn?', '{\"A\": \"Model accuracy\", \"B\": \"Training time\", \"C\": \"Model size\", \"D\": \"Prediction\"}', 'A'),
(166, 'Data Analyst', 'SQL', 'Which SQL statement retrieves data from a table?', '{\"A\": \"INSERT\", \"B\": \"UPDATE\", \"C\": \"SELECT\", \"D\": \"DELETE\"}', 'C'),
(167, 'Data Analyst', 'SQL', 'What does the `JOIN` clause do in SQL?', '{\"A\": \"Combines rows from two tables\", \"B\": \"Deletes rows\", \"C\": \"Updates rows\", \"D\": \"Inserts rows\"}', 'A'),
(168, 'Data Analyst', 'SQL', 'Which function counts the number of rows in SQL?', '{\"A\": \"SUM()\", \"B\": \"COUNT()\", \"C\": \"AVG()\", \"D\": \"MAX()\"}', 'B'),
(169, 'Data Analyst', 'SQL', 'What does the `GROUP BY` clause do in SQL?', '{\"A\": \"Sorts data\", \"B\": \"Groups rows with the same values\", \"C\": \"Filters data\", \"D\": \"Joins tables\"}', 'B'),
(170, 'Data Analyst', 'SQL', 'Which keyword removes duplicate rows in SQL?', '{\"A\": \"DISTINCT\", \"B\": \"UNIQUE\", \"C\": \"REMOVE\", \"D\": \"DELETE\"}', 'A'),
(171, 'Data Analyst', 'Power BI', 'What is Power BI primarily used for?', '{\"A\": \"Web development\", \"B\": \"Data visualization\", \"C\": \"Machine learning\", \"D\": \"Networking\"}', 'B'),
(172, 'Data Analyst', 'Power BI', 'Which component connects to data sources in Power BI?', '{\"A\": \"Power Query\", \"B\": \"Power Pivot\", \"C\": \"Power View\", \"D\": \"Power Map\"}', 'A'),
(173, 'Data Analyst', 'Power BI', 'What is DAX in Power BI?', '{\"A\": \"A database\", \"B\": \"A query language\", \"C\": \"A visualization tool\", \"D\": \"A data connector\"}', 'B'),
(174, 'Data Analyst', 'Power BI', 'Which visual is used to show trends over time in Power BI?', '{\"A\": \"Bar Chart\", \"B\": \"Line Chart\", \"C\": \"Pie Chart\", \"D\": \"Table\"}', 'B'),
(175, 'Data Analyst', 'Power BI', 'What does the `Refresh` button do in Power BI?', '{\"A\": \"Updates the visuals\", \"B\": \"Reloads the data\", \"C\": \"Saves the report\", \"D\": \"Exports the report\"}', 'B'),
(176, 'Data Analyst', 'Tableau', 'What is Tableau primarily used for?', '{\"A\": \"Web development\", \"B\": \"Data visualization\", \"C\": \"Machine learning\", \"D\": \"Networking\"}', 'B'),
(177, 'Data Analyst', 'Tableau', 'What is a Tableau Worksheet?', '{\"A\": \"A data source\", \"B\": \"A single view for visualization\", \"C\": \"A dashboard\", \"D\": \"A database\"}', 'B'),
(178, 'Data Analyst', 'Tableau', 'Which feature allows you to combine multiple sheets in Tableau?', '{\"A\": \"Worksheet\", \"B\": \"Dashboard\", \"C\": \"Story\", \"D\": \"Data Source\"}', 'B'),
(179, 'Data Analyst', 'Tableau', 'What does a `calculated field` do in Tableau?', '{\"A\": \"Filters data\", \"B\": \"Creates new data using formulas\", \"C\": \"Joins tables\", \"D\": \"Exports data\"}', 'B'),
(180, 'Data Analyst', 'Tableau', 'Which chart type shows proportions in Tableau?', '{\"A\": \"Bar Chart\", \"B\": \"Line Chart\", \"C\": \"Pie Chart\", \"D\": \"Scatter Plot\"}', 'C'),
(181, 'Data Analyst', 'Excel', 'What function sums a range of cells in Excel?', '{\"A\": \"SUM()\", \"B\": \"ADD()\", \"C\": \"TOTAL()\", \"D\": \"COUNT()\"}', 'A'),
(182, 'Data Analyst', 'Excel', 'What does the `VLOOKUP` function do in Excel?', '{\"A\": \"Looks up a value vertically\", \"B\": \"Counts cells\", \"C\": \"Sorts data\", \"D\": \"Filters data\"}', 'A'),
(183, 'Data Analyst', 'Excel', 'Which feature creates charts in Excel?', '{\"A\": \"PivotTable\", \"B\": \"Chart Wizard\", \"C\": \"Conditional Formatting\", \"D\": \"Data Validation\"}', 'B'),
(184, 'Data Analyst', 'Excel', 'What does the `IF` function do in Excel?', '{\"A\": \"Sums values\", \"B\": \"Performs conditional logic\", \"C\": \"Looks up data\", \"D\": \"Counts cells\"}', 'B'),
(185, 'Data Analyst', 'Excel', 'What is a PivotTable used for in Excel?', '{\"A\": \"Data visualization\", \"B\": \"Data summarization\", \"C\": \"Data entry\", \"D\": \"Data validation\"}', 'B'),
(186, 'Cybersecurity', 'Penetration Testing', 'What is the goal of penetration testing?', '{\"A\": \"To develop software\", \"B\": \"To identify security vulnerabilities\", \"C\": \"To monitor networks\", \"D\": \"To encrypt data\"}', 'B'),
(187, 'Cybersecurity', 'Penetration Testing', 'Which tool is commonly used for penetration testing?', '{\"A\": \"Metasploit\", \"B\": \"Wireshark\", \"C\": \"Nmap\", \"D\": \"All of the above\"}', 'D'),
(188, 'Cybersecurity', 'Penetration Testing', 'What is a common first step in penetration testing?', '{\"A\": \"Exploitation\", \"B\": \"Reporting\", \"C\": \"Reconnaissance\", \"D\": \"Privilege escalation\"}', 'C'),
(189, 'Cybersecurity', 'Penetration Testing', 'What does a vulnerability scanner do?', '{\"A\": \"Exploits vulnerabilities\", \"B\": \"Identifies vulnerabilities\", \"C\": \"Encrypts data\", \"D\": \"Monitors traffic\"}', 'B'),
(190, 'Cybersecurity', 'Penetration Testing', 'What is social engineering in penetration testing?', '{\"A\": \"Hacking a server\", \"B\": \"Manipulating people to gain access\", \"C\": \"Scanning networks\", \"D\": \"Writing exploits\"}', 'B'),
(191, 'Cybersecurity', 'Network Security', 'What does a firewall do in network security?', '{\"A\": \"Encrypts data\", \"B\": \"Filters network traffic\", \"C\": \"Monitors performance\", \"D\": \"Stores data\"}', 'B'),
(192, 'Cybersecurity', 'Network Security', 'Which protocol is used for secure communication?', '{\"A\": \"HTTP\", \"B\": \"FTP\", \"C\": \"HTTPS\", \"D\": \"SMTP\"}', 'C'),
(193, 'Cybersecurity', 'Network Security', 'What is a DDoS attack?', '{\"A\": \"Data theft\", \"B\": \"Distributed Denial of Service\", \"C\": \"SQL injection\", \"D\": \"Phishing\"}', 'B'),
(194, 'Cybersecurity', 'Network Security', 'Which device monitors network traffic for threats?', '{\"A\": \"Router\", \"B\": \"Switch\", \"C\": \"IDS\", \"D\": \"Modem\"}', 'C'),
(195, 'Cybersecurity', 'Network Security', 'What does VPN stand for?', '{\"A\": \"Virtual Private Network\", \"B\": \"Virtual Public Network\", \"C\": \"Virtual Protected Network\", \"D\": \"Virtual Packet Network\"}', 'A'),
(196, 'Cybersecurity', 'Ethical Hacking', 'What is ethical hacking?', '{\"A\": \"Hacking for illegal purposes\", \"B\": \"Hacking to improve security\", \"C\": \"Hacking to steal data\", \"D\": \"Hacking to disrupt services\"}', 'B'),
(197, 'Cybersecurity', 'Ethical Hacking', 'Which tool is used for network scanning in ethical hacking?', '{\"A\": \"Nmap\", \"B\": \"Photoshop\", \"C\": \"Excel\", \"D\": \"Docker\"}', 'A'),
(198, 'Cybersecurity', 'Ethical Hacking', 'What is a common ethical hacking methodology?', '{\"A\": \"Waterfall\", \"B\": \"Agile\", \"C\": \"OSSTMM\", \"D\": \"Scrum\"}', 'C'),
(199, 'Cybersecurity', 'Ethical Hacking', 'What is a phishing attack?', '{\"A\": \"A network scan\", \"B\": \"A social engineering attack\", \"C\": \"A brute force attack\", \"D\": \"A malware infection\"}', 'B'),
(200, 'Cybersecurity', 'Ethical Hacking', 'Which certification is common for ethical hackers?', '{\"A\": \"CEH\", \"B\": \"PMP\", \"C\": \"AWS\", \"D\": \"ITIL\"}', 'A'),
(201, 'Cybersecurity', 'Cryptography', 'What is cryptography used for?', '{\"A\": \"Data visualization\", \"B\": \"Securing data\", \"C\": \"Network monitoring\", \"D\": \"Web development\"}', 'B'),
(202, 'Cybersecurity', 'Cryptography', 'Which algorithm is used for symmetric encryption?', '{\"A\": \"RSA\", \"B\": \"AES\", \"C\": \"SHA\", \"D\": \"MD5\"}', 'B'),
(203, 'Cybersecurity', 'Cryptography', 'What is a public key used for in cryptography?', '{\"A\": \"Decrypting data\", \"B\": \"Encrypting data\", \"C\": \"Hashing data\", \"D\": \"Storing data\"}', 'B'),
(204, 'Cybersecurity', 'Cryptography', 'What does a hash function do?', '{\"A\": \"Encrypts data\", \"B\": \"Creates a fixed-length output\", \"C\": \"Decrypts data\", \"D\": \"Compresses data\"}', 'B'),
(205, 'Cybersecurity', 'Cryptography', 'Which protocol uses public key cryptography?', '{\"A\": \"SSL/TLS\", \"B\": \"FTP\", \"C\": \"HTTP\", \"D\": \"SMTP\"}', 'A'),
(206, 'Machine Learning / AI', 'Deep Learning', 'What is deep learning a subset of?', '{\"A\": \"Web development\", \"B\": \"Machine learning\", \"C\": \"Networking\", \"D\": \"Database management\"}', 'B'),
(207, 'Machine Learning / AI', 'Deep Learning', 'What is a neural network in deep learning?', '{\"A\": \"A database\", \"B\": \"A model inspired by the brain\", \"C\": \"A web framework\", \"D\": \"A testing tool\"}', 'B'),
(208, 'Machine Learning / AI', 'Deep Learning', 'Which layer is used for feature extraction in deep learning?', '{\"A\": \"Input layer\", \"B\": \"Output layer\", \"C\": \"Convolutional layer\", \"D\": \"Dense layer\"}', 'C'),
(209, 'Machine Learning / AI', 'Deep Learning', 'What is the purpose of an activation function?', '{\"A\": \"To normalize data\", \"B\": \"To introduce non-linearity\", \"C\": \"To reduce dimensions\", \"D\": \"To encrypt data\"}', 'B'),
(210, 'Machine Learning / AI', 'Deep Learning', 'Which framework is commonly used for deep learning?', '{\"A\": \"TensorFlow\", \"B\": \"Django\", \"C\": \"Express\", \"D\": \"Spring\"}', 'A'),
(211, 'Machine Learning / AI', 'NLP', 'What does NLP stand for?', '{\"A\": \"Natural Language Processing\", \"B\": \"Neural Learning Protocol\", \"C\": \"Natural Learning Process\", \"D\": \"Network Language Processing\"}', 'A'),
(212, 'Machine Learning / AI', 'NLP', 'What is tokenization in NLP?', '{\"A\": \"Encrypting text\", \"B\": \"Splitting text into words\", \"C\": \"Translating text\", \"D\": \"Compressing text\"}', 'B'),
(213, 'Machine Learning / AI', 'NLP', 'Which library is used for NLP in Python?', '{\"A\": \"NLTK\", \"B\": \"Pandas\", \"C\": \"NumPy\", \"D\": \"Matplotlib\"}', 'A'),
(214, 'Machine Learning / AI', 'NLP', 'What is sentiment analysis in NLP?', '{\"A\": \"Translating text\", \"B\": \"Determining the emotion in text\", \"C\": \"Summarizing text\", \"D\": \"Encrypting text\"}', 'B'),
(215, 'Machine Learning / AI', 'NLP', 'What does a word embedding represent?', '{\"A\": \"A word as a number\", \"B\": \"A word as a vector\", \"C\": \"A word as a sentence\", \"D\": \"A word as a paragraph\"}', 'B'),
(216, 'Machine Learning / AI', 'Computer Vision', 'What is computer vision used for?', '{\"A\": \"Text processing\", \"B\": \"Image and video analysis\", \"C\": \"Network security\", \"D\": \"Database management\"}', 'B'),
(217, 'Machine Learning / AI', 'Computer Vision', 'Which algorithm is used for object detection?', '{\"A\": \"YOLO\", \"B\": \"KMeans\", \"C\": \"SVM\", \"D\": \"LinearRegression\"}', 'A'),
(218, 'Machine Learning / AI', 'Computer Vision', 'What does a convolutional neural network (CNN) do?', '{\"A\": \"Processes text\", \"B\": \"Analyzes images\", \"C\": \"Manages databases\", \"D\": \"Secures networks\"}', 'B'),
(219, 'Machine Learning / AI', 'Computer Vision', 'What is image segmentation?', '{\"A\": \"Dividing an image into regions\", \"B\": \"Compressing an image\", \"C\": \"Encrypting an image\", \"D\": \"Resizing an image\"}', 'A'),
(220, 'Machine Learning / AI', 'Computer Vision', 'Which library is used for computer vision in Python?', '{\"A\": \"OpenCV\", \"B\": \"Pandas\", \"C\": \"NumPy\", \"D\": \"Django\"}', 'A'),
(221, 'Machine Learning / AI', 'Reinforcement Learning', 'What is reinforcement learning?', '{\"A\": \"Supervised learning\", \"B\": \"Learning through rewards\", \"C\": \"Unsupervised learning\", \"D\": \"Text processing\"}', 'B'),
(222, 'Machine Learning / AI', 'Reinforcement Learning', 'What is an agent in reinforcement learning?', '{\"A\": \"A dataset\", \"B\": \"The learner or decision maker\", \"C\": \"A neural network\", \"D\": \"A database\"}', 'B'),
(223, 'Machine Learning / AI', 'Reinforcement Learning', 'What does the reward function do?', '{\"A\": \"Trains the model\", \"B\": \"Evaluates the agent’s actions\", \"C\": \"Processes images\", \"D\": \"Encrypts data\"}', 'B'),
(224, 'Machine Learning / AI', 'Reinforcement Learning', 'Which algorithm is used in reinforcement learning?', '{\"A\": \"Q-Learning\", \"B\": \"KMeans\", \"C\": \"SVM\", \"D\": \"LinearRegression\"}', 'A'),
(225, 'Machine Learning / AI', 'Reinforcement Learning', 'What is the environment in reinforcement learning?', '{\"A\": \"The agent’s code\", \"B\": \"The external system the agent interacts with\", \"C\": \"The dataset\", \"D\": \"The neural network\"}', 'B'),
(226, 'Blockchain Development', 'Ethereum', 'What is Ethereum?', '{\"A\": \"A programming language\", \"B\": \"A blockchain platform\", \"C\": \"A database\", \"D\": \"A web framework\"}', 'B'),
(227, 'Blockchain Development', 'Ethereum', 'What is the currency of Ethereum?', '{\"A\": \"Bitcoin\", \"B\": \"Ether\", \"C\": \"Litecoin\", \"D\": \"Ripple\"}', 'B'),
(228, 'Blockchain Development', 'Ethereum', 'What is a smart contract in Ethereum?', '{\"A\": \"A legal document\", \"B\": \"A self-executing contract on the blockchain\", \"C\": \"A database query\", \"D\": \"A web application\"}', 'B'),
(229, 'Blockchain Development', 'Ethereum', 'Which language is used to write smart contracts on Ethereum?', '{\"A\": \"Solidity\", \"B\": \"Python\", \"C\": \"Java\", \"D\": \"JavaScript\"}', 'A'),
(230, 'Blockchain Development', 'Ethereum', 'What does EVM stand for in Ethereum?', '{\"A\": \"Ethereum Virtual Machine\", \"B\": \"Ethereum Value Model\", \"C\": \"Ethereum Verification Module\", \"D\": \"Ethereum Virtual Memory\"}', 'A'),
(231, 'Blockchain Development', 'Smart Contracts', 'What is a smart contract?', '{\"A\": \"A legal agreement\", \"B\": \"A self-executing contract on a blockchain\", \"C\": \"A database\", \"D\": \"A web server\"}', 'B'),
(232, 'Blockchain Development', 'Smart Contracts', 'Which blockchain platform popularized smart contracts?', '{\"A\": \"Bitcoin\", \"B\": \"Ethereum\", \"C\": \"Ripple\", \"D\": \"Litecoin\"}', 'B'),
(233, 'Blockchain Development', 'Smart Contracts', 'What is a benefit of smart contracts?', '{\"A\": \"Manual execution\", \"B\": \"Automation and trust\", \"C\": \"High cost\", \"D\": \"Centralized control\"}', 'B'),
(234, 'Blockchain Development', 'Smart Contracts', 'Which language is commonly used for smart contracts?', '{\"A\": \"Solidity\", \"B\": \"Python\", \"C\": \"Java\", \"D\": \"C++\"}', 'A'),
(235, 'Blockchain Development', 'Smart Contracts', 'What does a smart contract eliminate?', '{\"A\": \"Code\", \"B\": \"Intermediaries\", \"C\": \"Blockchain\", \"D\": \"Encryption\"}', 'B'),
(236, 'Blockchain Development', 'Solidity', 'What is Solidity used for?', '{\"A\": \"Web development\", \"B\": \"Writing smart contracts\", \"C\": \"Data analysis\", \"D\": \"Networking\"}', 'B'),
(237, 'Blockchain Development', 'Solidity', 'Which blockchain platform uses Solidity?', '{\"A\": \"Bitcoin\", \"B\": \"Ethereum\", \"C\": \"Ripple\", \"D\": \"Litecoin\"}', 'B'),
(238, 'Blockchain Development', 'Solidity', 'What is a `function` in Solidity?', '{\"A\": \"A variable\", \"B\": \"A block of code that performs a task\", \"C\": \"A database query\", \"D\": \"A web route\"}', 'B'),
(239, 'Blockchain Development', 'Solidity', 'Which keyword defines a state variable in Solidity?', '{\"A\": \"state\", \"B\": \"public\", \"C\": \"var\", \"D\": \"let\"}', 'B'),
(240, 'Blockchain Development', 'Solidity', 'What does the `payable` modifier do in Solidity?', '{\"A\": \"Allows a function to receive Ether\", \"B\": \"Makes a function private\", \"C\": \"Encrypts data\", \"D\": \"Deletes a contract\"}', 'A'),
(241, 'Blockchain Development', 'Hyperledger', 'What is Hyperledger?', '{\"A\": \"A cryptocurrency\", \"B\": \"A blockchain framework\", \"C\": \"A web framework\", \"D\": \"A database\"}', 'B'),
(242, 'Blockchain Development', 'Hyperledger', 'Is Hyperledger a public blockchain?', '{\"A\": \"Yes\", \"B\": \"No, it’s private\", \"C\": \"It depends\", \"D\": \"It’s hybrid\"}', 'B'),
(243, 'Blockchain Development', 'Hyperledger', 'Which Hyperledger project is used for smart contracts?', '{\"A\": \"Hyperledger Fabric\", \"B\": \"Hyperledger Sawtooth\", \"C\": \"Hyperledger Indy\", \"D\": \"Hyperledger Iroha\"}', 'A'),
(244, 'Blockchain Development', 'Hyperledger', 'What language is used for chaincode in Hyperledger Fabric?', '{\"A\": \"Solidity\", \"B\": \"Go\", \"C\": \"Python\", \"D\": \"JavaScript\"}', 'B'),
(245, 'Blockchain Development', 'Hyperledger', 'What is a benefit of Hyperledger?', '{\"A\": \"Public access\", \"B\": \"Permissioned networks\", \"C\": \"High transaction fees\", \"D\": \"Centralized control\"}', 'B'),
(246, 'Game Development', 'Unity', 'What is Unity primarily used for?', '{\"A\": \"Web development\", \"B\": \"Game development\", \"C\": \"Data analysis\", \"D\": \"Networking\"}', 'B'),
(247, 'Game Development', 'Unity', 'Which language is used for scripting in Unity?', '{\"A\": \"C++\", \"B\": \"C#\", \"C\": \"Python\", \"D\": \"Java\"}', 'B'),
(248, 'Game Development', 'Unity', 'What is a GameObject in Unity?', '{\"A\": \"A script\", \"B\": \"A base object in a scene\", \"C\": \"A database\", \"D\": \"A web server\"}', 'B'),
(249, 'Game Development', 'Unity', 'Which component adds physics to a GameObject in Unity?', '{\"A\": \"Rigidbody\", \"B\": \"Transform\", \"C\": \"MeshRenderer\", \"D\": \"Animator\"}', 'A'),
(250, 'Game Development', 'Unity', 'What does the `Update()` method do in Unity?', '{\"A\": \"Runs once at the start\", \"B\": \"Runs every frame\", \"C\": \"Runs on collision\", \"D\": \"Runs on input\"}', 'B'),
(251, 'Game Development', 'Unreal Engine', 'What is Unreal Engine used for?', '{\"A\": \"Web development\", \"B\": \"Game development\", \"C\": \"Data analysis\", \"D\": \"Networking\"}', 'B'),
(252, 'Game Development', 'Unreal Engine', 'Which language is primarily used in Unreal Engine?', '{\"A\": \"C++\", \"B\": \"C#\", \"C\": \"Python\", \"D\": \"Java\"}', 'A'),
(253, 'Game Development', 'Unreal Engine', 'What is Blueprints in Unreal Engine?', '{\"A\": \"A scripting language\", \"B\": \"A visual scripting system\", \"C\": \"A database\", \"D\": \"A web framework\"}', 'B'),
(254, 'Game Development', 'Unreal Engine', 'What is an Actor in Unreal Engine?', '{\"A\": \"A script\", \"B\": \"An object in the game world\", \"C\": \"A database\", \"D\": \"A web server\"}', 'B'),
(255, 'Game Development', 'Unreal Engine', 'Which component handles physics in Unreal Engine?', '{\"A\": \"StaticMesh\", \"B\": \"PhysicsBody\", \"C\": \"CollisionComponent\", \"D\": \"CharacterMovement\"}', 'C'),
(256, 'Game Development', 'C#', 'What is C# primarily used for in game development?', '{\"A\": \"Scripting in Unity\", \"B\": \"Web development\", \"C\": \"Data analysis\", \"D\": \"Networking\"}', 'A'),
(257, 'Game Development', 'C#', 'Which keyword defines a class in C#?', '{\"A\": \"class\", \"B\": \"struct\", \"C\": \"interface\", \"D\": \"enum\"}', 'A'),
(258, 'Game Development', 'C#', 'What does the `void` keyword mean in C#?', '{\"A\": \"Returns a value\", \"B\": \"No return value\", \"C\": \"A variable type\", \"D\": \"A loop\"}', 'B'),
(259, 'Game Development', 'C#', 'How do you declare a list in C#?', '{\"A\": \"List<int> myList = new List<int>();\", \"B\": \"ArrayList myList = new ArrayList();\", \"C\": \"list myList = new list();\", \"D\": \"int[] myList = new int[]{};\"}', 'A'),
(260, 'Game Development', 'C#', 'What is the purpose of `Debug.Log()` in Unity with C#?', '{\"A\": \"Saves data\", \"B\": \"Prints to the console\", \"C\": \"Handles input\", \"D\": \"Renders graphics\"}', 'B'),
(261, 'Game Development', 'Game Physics', 'What is game physics used for?', '{\"A\": \"Rendering graphics\", \"B\": \"Simulating real-world physics\", \"C\": \"Networking\", \"D\": \"Data storage\"}', 'B'),
(262, 'Game Development', 'Game Physics', 'Which force is commonly simulated in game physics?', '{\"A\": \"Gravity\", \"B\": \"Electromagnetic\", \"C\": \"Nuclear\", \"D\": \"Thermal\"}', 'A'),
(263, 'Game Development', 'Game Physics', 'What does a physics engine do?', '{\"A\": \"Renders graphics\", \"B\": \"Simulates physical interactions\", \"C\": \"Manages databases\", \"D\": \"Handles networking\"}', 'B'),
(264, 'Game Development', 'Game Physics', 'Which Unity component handles collisions?', '{\"A\": \"Collider\", \"B\": \"Rigidbody\", \"C\": \"Transform\", \"D\": \"MeshRenderer\"}', 'A'),
(265, 'Game Development', 'Game Physics', 'What is a rigidbody in game physics?', '{\"A\": \"A static object\", \"B\": \"An object with physics properties\", \"C\": \"A script\", \"D\": \"A texture\"}', 'B'),
(266, 'Mobile App Development', 'Flutter', '#1: What is Flutter used for?', '{\"A\": \"Web development\", \"B\": \"Mobile app development\", \"C\": \"Data analysis\", \"D\": \"Networking\"}', 'B'),
(267, 'Mobile App Development', 'Flutter', '#2: Which language is used in Flutter?', '{\"A\": \"Dart\", \"B\": \"Java\", \"C\": \"Swift\", \"D\": \"Kotlin\"}', 'A'),
(268, 'Mobile App Development', 'Flutter', '#3: What is a Widget in Flutter?', '{\"A\": \"A database\", \"B\": \"A UI element\", \"C\": \"A web server\", \"D\": \"A script\"}', 'B'),
(269, 'Mobile App Development', 'Flutter', '#4: Which widget is used for layout in Flutter?', '{\"A\": \"Text\", \"B\": \"Container\", \"C\": \"Image\", \"D\": \"Button\"}', 'B'),
(270, 'Mobile App Development', 'Flutter', '#5: What does `setState()` do in Flutter?', '{\"A\": \"Navigates to a new screen\", \"B\": \"Updates the UI\", \"C\": \"Saves data\", \"D\": \"Handles input\"}', 'B'),
(271, 'Mobile App Development', 'React Native', '#1: What is React Native used for?', '{\"A\": \"Web development\", \"B\": \"Mobile app development\", \"C\": \"Data analysis\", \"D\": \"Networking\"}', 'B'),
(272, 'Mobile App Development', 'React Native', '#2: Which language is used in React Native?', '{\"A\": \"JavaScript\", \"B\": \"Java\", \"C\": \"Swift\", \"D\": \"Kotlin\"}', 'A'),
(273, 'Mobile App Development', 'React Native', '#3: What is a component in React Native?', '{\"A\": \"A database\", \"B\": \"A UI element\", \"C\": \"A web server\", \"D\": \"A script\"}', 'B'),
(274, 'Mobile App Development', 'React Native', '#4: Which component displays text in React Native?', '{\"A\": \"Text\", \"B\": \"View\", \"C\": \"Image\", \"D\": \"Button\"}', 'A'),
(275, 'Mobile App Development', 'React Native', '#5: What does `StyleSheet` do in React Native?', '{\"A\": \"Navigates screens\", \"B\": \"Styles components\", \"C\": \"Handles input\", \"D\": \"Saves data\"}', 'B'),
(276, 'Mobile App Development', 'Swift', '#1: What is Swift used for?', '{\"A\": \"Android development\", \"B\": \"iOS development\", \"C\": \"Web development\", \"D\": \"Data analysis\"}', 'B'),
(277, 'Mobile App Development', 'Swift', '#2: Which keyword declares a variable in Swift?', '{\"A\": \"var\", \"B\": \"let\", \"C\": \"const\", \"D\": \"Both A and B\"}', 'D'),
(278, 'Mobile App Development', 'Swift', '#3: What does `let` do in Swift?', '{\"A\": \"Declares a mutable variable\", \"B\": \"Declares a constant\", \"C\": \"Defines a function\", \"D\": \"Creates a class\"}', 'B');
INSERT INTO `skills_questions` (`id`, `category`, `skill`, `question`, `options`, `correct_answer`) VALUES
(279, 'Mobile App Development', 'Swift', '#4: Which framework is used for UI in Swift?', '{\"A\": \"UIKit\", \"B\": \"SwiftUI\", \"C\": \"Both A and B\", \"D\": \"CoreData\"}', 'C'),
(280, 'Mobile App Development', 'Swift', '#5: What is an optional in Swift?', '{\"A\": \"A variable that can be nil\", \"B\": \"A constant\", \"C\": \"A function\", \"D\": \"A class\"}', 'A'),
(281, 'Mobile App Development', 'Kotlin', '#1: What is Kotlin used for?', '{\"A\": \"iOS development\", \"B\": \"Android development\", \"C\": \"Web development\", \"D\": \"Data analysis\"}', 'B'),
(282, 'Mobile App Development', 'Kotlin', '#2: Which keyword declares a variable in Kotlin?', '{\"A\": \"var\", \"B\": \"let\", \"C\": \"const\", \"D\": \"Both A and B\"}', 'A'),
(283, 'Mobile App Development', 'Kotlin', '#3: What does `val` do in Kotlin?', '{\"A\": \"Declares a mutable variable\", \"B\": \"Declares a constant\", \"C\": \"Defines a function\", \"D\": \"Creates a class\"}', 'B'),
(284, 'Mobile App Development', 'Kotlin', '#4: Which framework is used for UI in Kotlin?', '{\"A\": \"SwiftUI\", \"B\": \"Android SDK\", \"C\": \"UIKit\", \"D\": \"CoreData\"}', 'B'),
(285, 'Mobile App Development', 'Kotlin', '#5: What is a `null safety` feature in Kotlin?', '{\"A\": \"Prevents null pointer exceptions\", \"B\": \"Encrypts data\", \"C\": \"Handles UI\", \"D\": \"Manages databases\"}', 'A'),
(286, 'Embedded Systems / IoT', 'Arduino', '#1: What is Arduino used for?', '{\"A\": \"Web development\", \"B\": \"Embedded systems\", \"C\": \"Data analysis\", \"D\": \"Networking\"}', 'B'),
(287, 'Embedded Systems / IoT', 'Arduino', '#2: Which language is used for Arduino programming?', '{\"A\": \"C/C++\", \"B\": \"Python\", \"C\": \"Java\", \"D\": \"JavaScript\"}', 'A'),
(288, 'Embedded Systems / IoT', 'Arduino', '#3: What does the `setup()` function do in Arduino?', '{\"A\": \"Runs repeatedly\", \"B\": \"Runs once at the start\", \"C\": \"Handles input\", \"D\": \"Saves data\"}', 'B'),
(289, 'Embedded Systems / IoT', 'Arduino', '#4: What does `digitalWrite()` do in Arduino?', '{\"A\": \"Reads a digital pin\", \"B\": \"Writes a value to a digital pin\", \"C\": \"Reads an analog pin\", \"D\": \"Sets up a pin\"}', 'B'),
(290, 'Embedded Systems / IoT', 'Arduino', '#5: Which function reads an analog input in Arduino?', '{\"A\": \"analogRead()\", \"B\": \"digitalRead()\", \"C\": \"analogWrite()\", \"D\": \"digitalWrite()\"}', 'A'),
(291, 'Embedded Systems / IoT', 'Raspberry Pi', '#1: What is a Raspberry Pi?', '{\"A\": \"A programming language\", \"B\": \"A single-board computer\", \"C\": \"A web server\", \"D\": \"A database\"}', 'B'),
(292, 'Embedded Systems / IoT', 'Raspberry Pi', '#2: Which operating system is commonly used on Raspberry Pi?', '{\"A\": \"Windows\", \"B\": \"Raspbian\", \"C\": \"macOS\", \"D\": \"Android\"}', 'B'),
(293, 'Embedded Systems / IoT', 'Raspberry Pi', '#3: What is the primary use of Raspberry Pi in IoT?', '{\"A\": \"Web development\", \"B\": \"Prototyping IoT devices\", \"C\": \"Data analysis\", \"D\": \"Networking\"}', 'B'),
(294, 'Embedded Systems / IoT', 'Raspberry Pi', '#4: Which programming language is often used with Raspberry Pi?', '{\"A\": \"Python\", \"B\": \"Java\", \"C\": \"Swift\", \"D\": \"Kotlin\"}', 'A'),
(295, 'Embedded Systems / IoT', 'Raspberry Pi', '#5: What does GPIO stand for in Raspberry Pi?', '{\"A\": \"General Purpose Input/Output\", \"B\": \"General Programming Interface Option\", \"C\": \"Global Pin Input/Output\", \"D\": \"General Purpose Internet Option\"}', 'A'),
(296, 'Embedded Systems / IoT', 'Embedded C', '#1: What is Embedded C used for?', '{\"A\": \"Web development\", \"B\": \"Programming embedded systems\", \"C\": \"Data analysis\", \"D\": \"Networking\"}', 'B'),
(297, 'Embedded Systems / IoT', 'Embedded C', '#2: Which keyword defines a constant in Embedded C?', '{\"A\": \"const\", \"B\": \"let\", \"C\": \"var\", \"D\": \"static\"}', 'A'),
(298, 'Embedded Systems / IoT', 'Embedded C', '#3: What is a common use of pointers in Embedded C?', '{\"A\": \"To manage memory directly\", \"B\": \"To create web pages\", \"C\": \"To handle databases\", \"D\": \"To style UI\"}', 'A'),
(299, 'Embedded Systems / IoT', 'Embedded C', '#4: Which function is used to introduce a delay in Embedded C?', '{\"A\": \"delay()\", \"B\": \"wait()\", \"C\": \"sleep()\", \"D\": \"pause()\"}', 'A'),
(300, 'Embedded Systems / IoT', 'Embedded C', '#5: What does the `volatile` keyword do in Embedded C?', '{\"A\": \"Makes a variable constant\", \"B\": \"Prevents compiler optimization\", \"C\": \"Encrypts data\", \"D\": \"Defines a function\"}', 'B'),
(301, 'Embedded Systems / IoT', 'IoT Protocols', '#1: Which protocol is commonly used for IoT device communication?', '{\"A\": \"HTTP\", \"B\": \"MQTT\", \"C\": \"FTP\", \"D\": \"SMTP\"}', 'B'),
(302, 'Embedded Systems / IoT', 'IoT Protocols', '#2: What does MQTT stand for?', '{\"A\": \"Message Queue Telemetry Transport\", \"B\": \"Message Query Telemetry Transport\", \"C\": \"Mobile Queue Telemetry Transport\", \"D\": \"Message Queue Transport Telemetry\"}', 'A'),
(303, 'Embedded Systems / IoT', 'IoT Protocols', '#3: Which protocol is lightweight and used in constrained environments?', '{\"A\": \"HTTP\", \"B\": \"CoAP\", \"C\": \"TCP\", \"D\": \"UDP\"}', 'B'),
(304, 'Embedded Systems / IoT', 'IoT Protocols', '#4: What is the purpose of the AMQP protocol in IoT?', '{\"A\": \"File transfer\", \"B\": \"Message queuing\", \"C\": \"Web browsing\", \"D\": \"Email sending\"}', 'B'),
(305, 'Embedded Systems / IoT', 'IoT Protocols', '#5: Which IoT protocol is best for real-time applications?', '{\"A\": \"MQTT\", \"B\": \"HTTP\", \"C\": \"FTP\", \"D\": \"SMTP\"}', 'A'),
(306, 'Database Administration', 'MySQL', '#1: What type of database is MySQL?', '{\"A\": \"NoSQL\", \"B\": \"Relational\", \"C\": \"Graph\", \"D\": \"Key-Value\"}', 'B'),
(307, 'Database Administration', 'MySQL', '#2: Which command creates a new database in MySQL?', '{\"A\": \"CREATE DATABASE\", \"B\": \"NEW DATABASE\", \"C\": \"MAKE DATABASE\", \"D\": \"ADD DATABASE\"}', 'A'),
(308, 'Database Administration', 'MySQL', '#3: How do you select all columns from a table in MySQL?', '{\"A\": \"SELECT * FROM table\", \"B\": \"SELECT ALL FROM table\", \"C\": \"GET * FROM table\", \"D\": \"FETCH * FROM table\"}', 'A'),
(309, 'Database Administration', 'MySQL', '#4: Which MySQL command modifies existing data?', '{\"A\": \"INSERT\", \"B\": \"UPDATE\", \"C\": \"DELETE\", \"D\": \"SELECT\"}', 'B'),
(310, 'Database Administration', 'MySQL', '#5: What does the `PRIMARY KEY` constraint do in MySQL?', '{\"A\": \"Allows duplicate values\", \"B\": \"Uniquely identifies each record\", \"C\": \"Sorts data\", \"D\": \"Joins tables\"}', 'B'),
(311, 'Database Administration', 'PostgreSQL', '#1: What type of database is PostgreSQL?', '{\"A\": \"NoSQL\", \"B\": \"Relational\", \"C\": \"Graph\", \"D\": \"Key-Value\"}', 'B'),
(312, 'Database Administration', 'PostgreSQL', '#2: Which command creates a new table in PostgreSQL?', '{\"A\": \"CREATE TABLE\", \"B\": \"NEW TABLE\", \"C\": \"MAKE TABLE\", \"D\": \"ADD TABLE\"}', 'A'),
(313, 'Database Administration', 'PostgreSQL', '#3: How do you limit the number of rows returned in PostgreSQL?', '{\"A\": \"LIMIT\", \"B\": \"TOP\", \"C\": \"ROWNUM\", \"D\": \"FETCH\"}', 'A'),
(314, 'Database Administration', 'PostgreSQL', '#4: What is a unique feature of PostgreSQL compared to MySQL?', '{\"A\": \"No support for JSON\", \"B\": \"Advanced support for JSON and JSONB\", \"C\": \"No transaction support\", \"D\": \"No indexing\"}', 'B'),
(315, 'Database Administration', 'PostgreSQL', '#5: Which command drops a database in PostgreSQL?', '{\"A\": \"DROP DATABASE\", \"B\": \"DELETE DATABASE\", \"C\": \"REMOVE DATABASE\", \"D\": \"CLEAR DATABASE\"}', 'A'),
(316, 'Database Administration', 'MongoDB', '#1: What type of database is MongoDB?', '{\"A\": \"Relational\", \"B\": \"NoSQL\", \"C\": \"Graph\", \"D\": \"Key-Value\"}', 'B'),
(317, 'Database Administration', 'MongoDB', '#2: Which command is used to insert a document in MongoDB?', '{\"A\": \"insertOne()\", \"B\": \"addDocument()\", \"C\": \"create()\", \"D\": \"insertDoc()\"}', 'A'),
(318, 'Database Administration', 'MongoDB', '#3: How do you query all documents in a MongoDB collection?', '{\"A\": \"db.collection.find()\", \"B\": \"db.collection.getAll()\", \"C\": \"db.collection.select()\", \"D\": \"db.collection.query()\"}', 'A'),
(319, 'Database Administration', 'MongoDB', '#4: What is the primary key field in MongoDB?', '{\"A\": \"id\", \"B\": \"_id\", \"C\": \"key\", \"D\": \"pk\"}', 'B'),
(320, 'Database Administration', 'MongoDB', '#5: Which operator is used to match documents in MongoDB?', '{\"A\": \"$match\", \"B\": \"$eq\", \"C\": \"$find\", \"D\": \"$select\"}', 'B'),
(321, 'Database Administration', 'Oracle DB', '#1: What type of database is Oracle DB?', '{\"A\": \"NoSQL\", \"B\": \"Relational\", \"C\": \"Graph\", \"D\": \"Key-Value\"}', 'B'),
(322, 'Database Administration', 'Oracle DB', '#2: Which command creates a new user in Oracle DB?', '{\"A\": \"CREATE USER\", \"B\": \"NEW USER\", \"C\": \"ADD USER\", \"D\": \"MAKE USER\"}', 'A'),
(323, 'Database Administration', 'Oracle DB', '#3: What is PL/SQL in Oracle DB?', '{\"A\": \"A query language\", \"B\": \"A procedural language extension\", \"C\": \"A web framework\", \"D\": \"A data type\"}', 'B'),
(324, 'Database Administration', 'Oracle DB', '#4: Which command grants permissions in Oracle DB?', '{\"A\": \"GRANT\", \"B\": \"PERMIT\", \"C\": \"ALLOW\", \"D\": \"ACCESS\"}', 'A'),
(325, 'Database Administration', 'Oracle DB', '#5: What does the `COMMIT` command do in Oracle DB?', '{\"A\": \"Rolls back changes\", \"B\": \"Saves changes permanently\", \"C\": \"Deletes data\", \"D\": \"Selects data\"}', 'B'),
(326, 'Networking / System Administration', 'Linux', '#1: What is Linux?', '{\"A\": \"A programming language\", \"B\": \"An operating system\", \"C\": \"A database\", \"D\": \"A web framework\"}', 'B'),
(327, 'Networking / System Administration', 'Linux', '#2: Which command displays the current directory in Linux?', '{\"A\": \"dir\", \"B\": \"pwd\", \"C\": \"ls\", \"D\": \"cd\"}', 'B'),
(328, 'Networking / System Administration', 'Linux', '#3: How do you change file permissions in Linux?', '{\"A\": \"chmod\", \"B\": \"chown\", \"C\": \"change\", \"D\": \"perm\"}', 'A'),
(329, 'Networking / System Administration', 'Linux', '#4: Which command lists all running processes in Linux?', '{\"A\": \"ps\", \"B\": \"top\", \"C\": \"list\", \"D\": \"proc\"}', 'B'),
(330, 'Networking / System Administration', 'Linux', '#5: What does the `sudo` command do in Linux?', '{\"A\": \"Shuts down the system\", \"B\": \"Runs a command as superuser\", \"C\": \"Lists files\", \"D\": \"Changes directory\"}', 'B'),
(331, 'Networking / System Administration', 'Windows Server', '#1: What is Windows Server used for?', '{\"A\": \"Web development\", \"B\": \"Server management\", \"C\": \"Data analysis\", \"D\": \"Game development\"}', 'B'),
(332, 'Networking / System Administration', 'Windows Server', '#2: Which tool manages users in Windows Server?', '{\"A\": \"Active Directory\", \"B\": \"Task Manager\", \"C\": \"Control Panel\", \"D\": \"File Explorer\"}', 'A'),
(333, 'Networking / System Administration', 'Windows Server', '#3: What is the purpose of PowerShell in Windows Server?', '{\"A\": \"File management\", \"B\": \"Scripting and automation\", \"C\": \"Web browsing\", \"D\": \"Database management\"}', 'B'),
(334, 'Networking / System Administration', 'Windows Server', '#4: Which protocol is used for remote access in Windows Server?', '{\"A\": \"FTP\", \"B\": \"RDP\", \"C\": \"HTTP\", \"D\": \"SMTP\"}', 'B'),
(335, 'Networking / System Administration', 'Windows Server', '#5: What does the `netstat` command do in Windows Server?', '{\"A\": \"Lists network connections\", \"B\": \"Changes network settings\", \"C\": \"Pings a server\", \"D\": \"Restarts the server\"}', 'A'),
(336, 'Networking / System Administration', 'Networking', '#1: What does the OSI model define?', '{\"A\": \"Database structure\", \"B\": \"Networking layers\", \"C\": \"Web protocols\", \"D\": \"File systems\"}', 'B'),
(337, 'Networking / System Administration', 'Networking', '#2: Which layer of the OSI model handles data routing?', '{\"A\": \"Physical\", \"B\": \"Data Link\", \"C\": \"Network\", \"D\": \"Transport\"}', 'C'),
(338, 'Networking / System Administration', 'Networking', '#3: What is the purpose of a subnet mask?', '{\"A\": \"Encrypts data\", \"B\": \"Divides an IP address into network and host parts\", \"C\": \"Assigns an IP address\", \"D\": \"Monitors traffic\"}', 'B'),
(339, 'Networking / System Administration', 'Networking', '#4: Which protocol resolves domain names to IP addresses?', '{\"A\": \"DHCP\", \"B\": \"DNS\", \"C\": \"FTP\", \"D\": \"HTTP\"}', 'B'),
(340, 'Networking / System Administration', 'Networking', '#5: What does a switch do in a network?', '{\"A\": \"Connects devices in a LAN\", \"B\": \"Assigns IP addresses\", \"C\": \"Encrypts data\", \"D\": \"Monitors traffic\"}', 'A'),
(341, 'Networking / System Administration', 'Cloud Security', '#1: What is a common cloud security concern?', '{\"A\": \"Data breaches\", \"B\": \"Slow performance\", \"C\": \"High cost\", \"D\": \"Limited storage\"}', 'A'),
(342, 'Networking / System Administration', 'Cloud Security', '#2: Which AWS service manages user access in the cloud?', '{\"A\": \"S3\", \"B\": \"IAM\", \"C\": \"EC2\", \"D\": \"Lambda\"}', 'B'),
(343, 'Networking / System Administration', 'Cloud Security', '#3: What does encryption in cloud security protect?', '{\"A\": \"Network speed\", \"B\": \"Data confidentiality\", \"C\": \"User interface\", \"D\": \"Storage capacity\"}', 'B'),
(344, 'Networking / System Administration', 'Cloud Security', '#4: Which practice ensures cloud security compliance?', '{\"A\": \"Regular audits\", \"B\": \"Increasing storage\", \"C\": \"Reducing costs\", \"D\": \"Limiting users\"}', 'A'),
(345, 'Networking / System Administration', 'Cloud Security', '#5: What is a DDoS attack in the context of cloud security?', '{\"A\": \"Data theft\", \"B\": \"Distributed Denial of Service\", \"C\": \"SQL injection\", \"D\": \"Phishing\"}', 'B'),
(346, 'Software Testing & QA', 'Unit Testing', '#1: What is the purpose of unit testing?', '{\"A\": \"Testing the entire system\", \"B\": \"Testing individual components\", \"C\": \"Testing user interfaces\", \"D\": \"Testing performance\"}', 'B'),
(347, 'Software Testing & QA', 'Unit Testing', '#2: Which framework is commonly used for unit testing in Java?', '{\"A\": \"JUnit\", \"B\": \"Selenium\", \"C\": \"Cypress\", \"D\": \"Appium\"}', 'A'),
(348, 'Software Testing & QA', 'Unit Testing', '#3: What does a unit test typically test?', '{\"A\": \"A single function or method\", \"B\": \"The entire application\", \"C\": \"The database\", \"D\": \"The network\"}', 'A'),
(349, 'Software Testing & QA', 'Unit Testing', '#4: What is a mock in unit testing?', '{\"A\": \"A real object\", \"B\": \"A simulated object\", \"C\": \"A database\", \"D\": \"A web server\"}', 'B'),
(350, 'Software Testing & QA', 'Unit Testing', '#5: Which annotation is used for a test method in JUnit?', '{\"A\": \"@Test\", \"B\": \"@Run\", \"C\": \"@Method\", \"D\": \"@Execute\"}', 'A'),
(351, 'Software Testing & QA', 'Integration Testing', '#1: What does integration testing focus on?', '{\"A\": \"Individual units\", \"B\": \"Interactions between components\", \"C\": \"User interfaces\", \"D\": \"Performance\"}', 'B'),
(352, 'Software Testing & QA', 'Integration Testing', '#2: Which testing approach starts with smaller modules?', '{\"A\": \"Top-down\", \"B\": \"Bottom-up\", \"C\": \"Big Bang\", \"D\": \"Sandwich\"}', 'B'),
(353, 'Software Testing & QA', 'Integration Testing', '#3: What is a common challenge in integration testing?', '{\"A\": \"Testing UI\", \"B\": \"Managing dependencies\", \"C\": \"Writing code\", \"D\": \"Designing databases\"}', 'B'),
(354, 'Software Testing & QA', 'Integration Testing', '#4: Which tool can be used for integration testing?', '{\"A\": \"Postman\", \"B\": \"Photoshop\", \"C\": \"Excel\", \"D\": \"Docker\"}', 'A'),
(355, 'Software Testing & QA', 'Integration Testing', '#5: What does integration testing ensure?', '{\"A\": \"Code style\", \"B\": \"Components work together\", \"C\": \"User satisfaction\", \"D\": \"Code coverage\"}', 'B'),
(356, 'Software Testing & QA', 'Manual Testing', '#1: What is manual testing?', '{\"A\": \"Testing using automation tools\", \"B\": \"Testing without automation\", \"C\": \"Testing databases\", \"D\": \"Testing networks\"}', 'B'),
(357, 'Software Testing & QA', 'Manual Testing', '#2: Which type of testing is often manual?', '{\"A\": \"Unit testing\", \"B\": \"Exploratory testing\", \"C\": \"Performance testing\", \"D\": \"Integration testing\"}', 'B'),
(358, 'Software Testing & QA', 'Manual Testing', '#3: What is a test case in manual testing?', '{\"A\": \"A script\", \"B\": \"A set of steps to verify functionality\", \"C\": \"A database query\", \"D\": \"A web server\"}', 'B'),
(359, 'Software Testing & QA', 'Manual Testing', '#4: What is a common tool for manual testing?', '{\"A\": \"Selenium\", \"B\": \"JUnit\", \"C\": \"JIRA\", \"D\": \"Cypress\"}', 'C'),
(360, 'Software Testing & QA', 'Manual Testing', '#5: What does manual testing verify?', '{\"A\": \"Code syntax\", \"B\": \"User experience\", \"C\": \"Network speed\", \"D\": \"Database size\"}', 'B'),
(361, 'Software Testing & QA', 'Performance Testing', '#1: What does performance testing measure?', '{\"A\": \"Code quality\", \"B\": \"System speed and responsiveness\", \"C\": \"User interface\", \"D\": \"Database structure\"}', 'B'),
(362, 'Software Testing & QA', 'Performance Testing', '#2: Which tool is commonly used for performance testing?', '{\"A\": \"JMeter\", \"B\": \"Selenium\", \"C\": \"JUnit\", \"D\": \"Cypress\"}', 'A'),
(363, 'Software Testing & QA', 'Performance Testing', '#3: What is load testing in performance testing?', '{\"A\": \"Testing under normal conditions\", \"B\": \"Testing under heavy load\", \"C\": \"Testing UI\", \"D\": \"Testing databases\"}', 'B'),
(364, 'Software Testing & QA', 'Performance Testing', '#4: What does stress testing evaluate?', '{\"A\": \"System behavior under extreme conditions\", \"B\": \"Code syntax\", \"C\": \"User experience\", \"D\": \"Network security\"}', 'A'),
(365, 'Software Testing & QA', 'Performance Testing', '#5: What is a key metric in performance testing?', '{\"A\": \"Response time\", \"B\": \"Code coverage\", \"C\": \"User satisfaction\", \"D\": \"Database size\"}', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `support_requests`
--

CREATE TABLE `support_requests` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `support_requests`
--

INSERT INTO `support_requests` (`id`, `user_id`, `name`, `email`, `phone`, `message`, `created_at`) VALUES
(1, 1, 'gnanapradeep', 'bachupradeep99@gmail.com', '1234567890', 'hi', '2025-03-26 22:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `mobile`, `password`, `location`, `created_at`) VALUES
(1, 'gnana', 'pradeep', 'bachupradeep99@gmail.com', '6281766469', 'qwerty', 'chennai', '2025-02-11 05:02:16'),
(2, 'user', '1', 'use@gmail.com', '6281766469', 'user', 'chen', '2025-02-13 08:05:43'),
(4, 'use', 'r1', 'use1@gmail.com', '123456809', 'user1', 'user1', '2025-02-25 09:12:40'),
(5, 'gnana', 'pradeep', 'john@gmail.com', '6281766469', 'qwerty', 'india', '2025-02-28 03:20:34'),
(6, 'Gouri', 'r', 'shankar@gmail.com', '123456543', 'qwerty', 'Vijaya shanthi infiniti 6th tower 8c flat', '2025-03-01 15:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `user_answer` varchar(100) NOT NULL,
  `correct_answer` varchar(100) NOT NULL,
  `score` int NOT NULL,
  `category` varchar(100) NOT NULL,
  `skill` varchar(100) NOT NULL,
  `test_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `user_id`, `question_id`, `user_answer`, `correct_answer`, `score`, `category`, `skill`, `test_date`) VALUES
(1, 1, 6, 'D', 'B', 0, 'Backend', 'Node.js', '2025-03-26 14:13:43'),
(2, 1, 7, 'B', 'A', 0, 'Backend', 'Node.js', '2025-03-26 14:13:43'),
(3, 1, 8, 'B', 'C', 0, 'Backend', 'Node.js', '2025-03-26 14:13:43'),
(4, 1, 9, 'D', 'A', 0, 'Backend', 'Node.js', '2025-03-26 14:13:43'),
(5, 1, 10, 'A', 'A', 1, 'Backend', 'Node.js', '2025-03-26 14:13:43'),
(6, 1, 6, 'D', 'B', 0, 'Backend', 'Node.js', '2025-03-26 14:14:20'),
(7, 5, 2, 'D', 'B', 0, 'Frontend', 'HTML', '2025-03-26 14:22:53'),
(8, 5, 1, 'A', 'A', 1, 'Frontend', 'HTML', '2025-03-26 14:51:13'),
(9, 5, 2, 'A', 'B', 0, 'Frontend', 'HTML', '2025-03-26 14:51:13'),
(10, 5, 3, 'A', 'A', 1, 'Frontend', 'HTML', '2025-03-26 14:51:13'),
(11, 5, 4, 'D', 'B', 0, 'Frontend', 'HTML', '2025-03-26 14:51:13'),
(12, 5, 5, 'A', 'A', 1, 'Frontend', 'HTML', '2025-03-26 14:51:13'),
(13, 5, 86, 'C', 'B', 0, 'Fullstack', 'MongoDB', '2025-03-26 15:15:11'),
(14, 5, 87, 'A', 'A', 1, 'Fullstack', 'MongoDB', '2025-03-26 15:15:11'),
(15, 5, 88, 'C', 'A', 0, 'Fullstack', 'MongoDB', '2025-03-26 15:15:11'),
(16, 5, 89, 'B', 'B', 1, 'Fullstack', 'MongoDB', '2025-03-26 15:15:11'),
(17, 5, 90, 'B', 'B', 1, 'Fullstack', 'MongoDB', '2025-03-26 15:15:11'),
(18, 5, 351, 'C', 'B', 0, 'Software Testing & QA', 'Integration Testing', '2025-03-26 15:37:15'),
(19, 5, 352, 'A', 'B', 0, 'Software Testing & QA', 'Integration Testing', '2025-03-26 15:37:15'),
(20, 5, 353, 'D', 'B', 0, 'Software Testing & QA', 'Integration Testing', '2025-03-26 15:37:15'),
(21, 5, 354, 'A', 'A', 1, 'Software Testing & QA', 'Integration Testing', '2025-03-26 15:37:15'),
(22, 5, 355, 'B', 'B', 1, 'Software Testing & QA', 'Integration Testing', '2025-03-26 15:37:15'),
(23, 1, 211, 'D', 'A', 0, 'Machine Learning / AI', 'NLP', '2025-03-26 15:55:27'),
(24, 1, 212, 'D', 'B', 0, 'Machine Learning / AI', 'NLP', '2025-03-26 15:55:27'),
(25, 1, 213, 'A', 'A', 1, 'Machine Learning / AI', 'NLP', '2025-03-26 15:55:27'),
(26, 1, 214, 'D', 'B', 0, 'Machine Learning / AI', 'NLP', '2025-03-26 15:55:27'),
(27, 1, 215, 'C', 'B', 0, 'Machine Learning / AI', 'NLP', '2025-03-26 15:55:27'),
(28, 1, 91, 'B', 'B', 1, 'Fullstack', 'Express.js', '2025-03-26 16:04:22'),
(29, 1, 92, 'C', 'B', 0, 'Fullstack', 'Express.js', '2025-03-26 16:04:22'),
(30, 1, 93, 'A', 'A', 1, 'Fullstack', 'Express.js', '2025-03-26 16:04:22'),
(31, 1, 94, 'B', 'B', 1, 'Fullstack', 'Express.js', '2025-03-26 16:04:22'),
(32, 1, 95, 'B', 'B', 1, 'Fullstack', 'Express.js', '2025-03-26 16:04:22'),
(33, 2, 86, 'B', 'B', 1, 'Fullstack', 'MongoDB', '2025-03-27 02:28:19'),
(34, 2, 87, 'A', 'A', 1, 'Fullstack', 'MongoDB', '2025-03-27 02:28:19'),
(35, 2, 88, 'A', 'A', 1, 'Fullstack', 'MongoDB', '2025-03-27 02:28:19'),
(36, 2, 89, 'B', 'B', 1, 'Fullstack', 'MongoDB', '2025-03-27 02:28:19'),
(37, 2, 90, 'A', 'B', 0, 'Fullstack', 'MongoDB', '2025-03-27 02:28:19'),
(38, 2, 361, 'B', 'B', 1, 'Software Testing & QA', 'Performance Testing', '2025-03-27 02:29:42'),
(39, 2, 362, 'A', 'A', 1, 'Software Testing & QA', 'Performance Testing', '2025-03-27 02:29:42'),
(40, 2, 363, 'A', 'B', 0, 'Software Testing & QA', 'Performance Testing', '2025-03-27 02:29:42'),
(41, 2, 364, 'A', 'A', 1, 'Software Testing & QA', 'Performance Testing', '2025-03-27 02:29:42'),
(42, 2, 365, 'A', 'A', 1, 'Software Testing & QA', 'Performance Testing', '2025-03-27 02:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_submissions`
--

CREATE TABLE `user_submissions` (
  `id` int NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `language` enum('c','c++','python') NOT NULL,
  `question_id` int NOT NULL,
  `user_code` text NOT NULL,
  `user_output` text NOT NULL,
  `submission_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code_submissions`
--
ALTER TABLE `code_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `c_questions`
--
ALTER TABLE `c_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gd_topics`
--
ALTER TABLE `gd_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_round_questions`
--
ALTER TABLE `hr_round_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcqanswers`
--
ALTER TABLE `mcqanswers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `python_questions`
--
ALTER TABLE `python_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `skills_questions`
--
ALTER TABLE `skills_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_requests`
--
ALTER TABLE `support_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_submissions`
--
ALTER TABLE `user_submissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code_submissions`
--
ALTER TABLE `code_submissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `c_questions`
--
ALTER TABLE `c_questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gd_topics`
--
ALTER TABLE `gd_topics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hr_round_questions`
--
ALTER TABLE `hr_round_questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `mcqanswers`
--
ALTER TABLE `mcqanswers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `python_questions`
--
ALTER TABLE `python_questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills_questions`
--
ALTER TABLE `skills_questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_requests`
--
ALTER TABLE `support_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user_submissions`
--
ALTER TABLE `user_submissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `code_submissions`
--
ALTER TABLE `code_submissions`
  ADD CONSTRAINT `code_submissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `support_requests`
--
ALTER TABLE `support_requests`
  ADD CONSTRAINT `support_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
