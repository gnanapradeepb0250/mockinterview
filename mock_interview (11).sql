-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2025 at 10:28 AM
-- Server version: 10.4.32-MariaDB
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
-- Table structure for table `appium_questions`
--

CREATE TABLE `appium_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(20) DEFAULT 'appium'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appium_questions`
--

INSERT INTO `appium_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'Explain What Is Appium?', 'Appium is a freely distributed open source mobile application UI testing framework.', 'appium'),
(2, 'Which Language Should I Use To Write My Tests?', 'This is probably the best thing about Appium: you can write your tests in any language. Since Appium is nothing more than an HTTP server, a test which needs to be interfaced with Appium can simply use HTTP libraries to create HTTP sessions. You just need to know the Selenium protocol in order to compose the right commands and that\'s it! However, as you can imagine, there are already some libraries doing this for the most common languages and development frameworks out there: C#, dotnet, Java, Ruby, Python, and Javascript are just a few examples; and they all are open source projects.', 'appium'),
(3, 'What Type Of Tests Are Suitable and Not Suitable For Appium?', 'Appium is pretty handy for testing scenarios that users will go through when using your app. But if you need to test more than UX simple interactions, then Appium will become a limitation. Complex touch/keyboard mixed scenarios have a high probability of false failures. Also, exchanging data with your app isn\'t straightforward and might require workarounds.', 'appium'),
(4, 'List Out The Appium Abilities?', 'Appium abilities are: Test Web, Provides cross-platform for Native and Hybrid mobile automation, Supports JSON wire protocol, Does not require recompilation of App, Supports automation tests on physical devices as well as simulators or emulators, It has no dependency on the mobile device.', 'appium'),
(5, 'List Out The Pre-requisite To Use Appium?', 'Pre-requisites to use Appium are: ANDROID SDK, JDK, TestNG, Eclipse, Selenium Server JAR, Webdriver Language Binding Library, Appium EXE for Windows, APK App Info.', 'appium'),
(6, 'What About Performance Impact While Running Tests Using Appium?', 'Appium is lightweight and acts like a proxy between your test machine and each platform\'s automation toolkit. It doesn\'t consume much memory itself but other processes like adb, ChromeDriver, or the iOS automation toolkit may use more memory.', 'appium'),
(7, 'What Platforms Are Supported?', 'Appium currently supports Android and iOS, but there is no support for Windows.', 'appium'),
(8, 'Do I Need A Server Machine To Run Tests On Appium?', 'No! Appium promotes a 2-tier architecture where a test machine connects to a test server running Appium. However, Appium can also run on the same machine where your test runs.', 'appium'),
(9, 'List Out The Limitations Of Using Appium?', 'Appium does not support testing of Android versions lower than 4.2, limited support for hybrid app testing, and no support to run Appium Inspector on Microsoft Windows (UIAutomatorViewer is used instead).', 'appium'),
(10, 'Explain How To Find Dom Element Or Xpath In A Mobile Application?', 'To find the DOM element, use \'UIAutomateviewer\' for Android applications and Appium Inspector for iOS applications.', 'appium'),
(11, 'Explain The Design Concept Of Appium?', 'Appium is an \'HTTP Server\' written using Node.js and drives iOS and Android sessions using WebDriver JSON wire protocol. It acts as a REST API server that receives commands from the client and executes them on mobile devices.', 'appium'),
(12, 'What Language Does Appium Support?', 'Appium supports any language that can make HTTP requests, including Java, JavaScript with Node.js, Python, Ruby, PHP, Perl, and more.', 'appium'),
(13, 'Explain The Pros And Cons Of Appium?', 'Pros: Cross-platform testing, No extra components needed for automation, Can automate Hybrid, Web, and Native mobile applications. Cons: Cannot run scripts on multiple iOS simulators simultaneously, Uses UIAutomator for Android which supports only API 16 or higher.', 'appium'),
(14, 'Any Tips Or Tricks To Speed Up My Test Writing Activity While I Develop Test Scripts?', 'Make interactions reusable by creating parametric sub-scenarios and calling them in your tests. This makes your test writing experience better and helps when migrating existing tests.', 'appium'),
(15, 'What Is Data Exchange When You Do Testing On Mobile Devices?', 'Data exchange refers to the complex interactions between objects stored in different parts of a webview-based app, like the window object. These scenarios can be challenging to test due to complex state machines and data flows.', 'appium'),
(16, 'Explain What Is Appium Inspector?', 'Appium Inspector is similar to Selenium IDE record and playback tool. It inspects DOM and generates test scripts in any desired language but is not supported on Windows (UIAutomatorViewer is used instead).', 'appium'),
(17, 'I Want To Run My Tests In A Multi-threaded Environment, Any Problems With That?', 'Yes! Appium does not support multiple sessions on the same server. Ensure that no more than one test runs at the same time against the same Appium server to avoid conflicts.', 'appium');

-- --------------------------------------------------------

--
-- Table structure for table `arduino_questions`
--

CREATE TABLE `arduino_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arduino_questions`
--

INSERT INTO `arduino_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Arduino?', 'Arduino is an open-source electronics platform based on easy-to-use hardware and software.'),
(2, 'What are the main components of an Arduino board?', 'Microcontroller, digital and analog I/O pins, power supply, USB interface, and clock.'),
(3, 'Which programming language is used to program Arduino?', 'Arduino is programmed using a language based on C/C++.'),
(4, 'What is the purpose of the Arduino IDE?', 'The Arduino IDE is used to write, compile, and upload code to Arduino boards.'),
(5, 'What is an Arduino sketch?', 'An Arduino sketch is a program written in the Arduino programming language.'),
(6, 'What is the difference between digital and analog pins on Arduino?', 'Digital pins handle binary (HIGH/LOW) signals, while analog pins read varying voltage levels.'),
(7, 'How do you power an Arduino board?', 'Through USB, a battery, or an external power adapter.'),
(8, 'What is the function of the setup() function in Arduino?', 'setup() initializes settings and runs once when the Arduino starts.'),
(9, 'What is the function of the loop() function in Arduino?', 'loop() runs repeatedly after setup() to keep the program running.'),
(10, 'What is PWM in Arduino?', 'Pulse Width Modulation (PWM) is used to simulate analog output using digital signals.'),
(11, 'What is the use of pinMode() in Arduino?', 'pinMode() sets a pin as INPUT or OUTPUT.'),
(12, 'How do you read an analog value in Arduino?', 'Using the analogRead() function.'),
(13, 'How do you write a digital value to a pin in Arduino?', 'Using the digitalWrite() function.'),
(14, 'What is the default clock speed of an Arduino Uno?', '16 MHz.'),
(15, 'What are interrupts in Arduino?', 'Interrupts allow Arduino to respond immediately to external events.'),
(16, 'What is Serial Communication in Arduino?', 'It allows data exchange between Arduino and a computer or another device via the Serial port.'),
(17, 'Which function is used to print messages to the Serial Monitor in Arduino?', 'Serial.print() or Serial.println().'),
(18, 'What is the purpose of the delay() function in Arduino?', 'It pauses the program for a specified number of milliseconds.'),
(19, 'How do you control an LED with Arduino?', 'By connecting it to a digital pin and using digitalWrite().'),
(20, 'How do you interface a sensor with Arduino?', 'By connecting the sensor to the appropriate input pins and reading its values using analogRead() or digitalRead().'),
(21, 'What is an Arduino shield?', 'A shield is an add-on board that provides additional functionality to an Arduino board.'),
(22, 'What is I2C communication in Arduino?', 'I2C is a protocol that allows multiple devices to communicate using only two wires (SDA and SCL).'),
(23, 'What is SPI communication in Arduino?', 'SPI is a fast communication protocol using separate lines for data and clock.'),
(24, 'How do you interface an LCD display with Arduino?', 'By connecting the LCD to Arduino and using the LiquidCrystal library.'),
(25, 'What is the purpose of the millis() function in Arduino?', 'millis() returns the time in milliseconds since the Arduino board was powered on.'),
(26, 'How do you generate a sound with Arduino?', 'Using a buzzer and the tone() function.'),
(27, 'What is EEPROM in Arduino?', 'EEPROM is non-volatile memory used to store data permanently.'),
(28, 'What are some common Arduino boards?', 'Arduino Uno, Mega, Nano, Due, Leonardo, and MKR.'),
(29, 'How do you connect a servo motor to Arduino?', 'Using the Servo library and connecting the signal wire to a PWM pin.'),
(30, 'What is the difference between Arduino Uno and Arduino Mega?', 'Arduino Mega has more I/O pins and memory than Arduino Uno.');

-- --------------------------------------------------------

--
-- Table structure for table `arithmetic_questions`
--

CREATE TABLE `arithmetic_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arithmetic_questions`
--

INSERT INTO `arithmetic_questions` (`id`, `question`, `answer`) VALUES
(1, 'A trader marks up his goods by 50% and then offers a discount of 20%. What is his overall profit percentage?', 'Let the cost price be ₹100.  \r\nMarked price = ₹150.  \r\nSelling price after 20% discount = 150 - (20% of 150) = ₹120.  \r\nProfit = 120 - 100 = ₹20.  \r\nProfit % = (20/100) * 100 = 20%.'),
(2, 'A can complete a work in 12 days, and B can complete the same work in 16 days. If both work together, how long will they take?', 'Work done per day by A = 1/12, by B = 1/16.  \r\nTogether, (1/12 + 1/16) = 4/48 + 3/48 = 7/48.  \r\nTime required = 48/7 ≈ 6.86 days.'),
(3, 'A man’s age is three times that of his son. In 12 years, his age will be twice his son’s age. Find their present ages.', 'Let the son’s age be x, then father’s age is 3x.  \r\nIn 12 years, (3x + 12) = 2(x + 12).  \r\nSolving, x = 12. Father’s age = 36.'),
(4, 'If the compound interest on ₹10,000 in 2 years is ₹2,100, what is the annual rate of interest?', 'Using CI formula: A = P(1 + r/100)^t  \r\n12100 = 10000(1 + r/100)^2  \r\nSolving, r = 10%.'),
(5, 'The length of a rectangle is increased by 20% and its width is decreased by 10%. What is the overall percentage change in the area?', 'New area = (1.2L) * (0.9W) = 1.08LW.  \r\nPercentage change = (1.08 - 1) * 100 = 8% increase.'),
(6, 'A tank can be filled by a pipe in 12 hours but is emptied by another pipe in 16 hours. If both pipes are opened together, how long will it take to fill the tank?', 'Filling rate = 1/12 per hour, Emptying rate = 1/16 per hour.  \r\nNet rate = (1/12 - 1/16) = 1/48.  \r\nTime to fill = 48 hours.'),
(7, 'If a number is divided by 7, it leaves a remainder of 5. What will be the remainder when the square of this number is divided by 7?', 'Let number be 7k + 5.  \r\nSquare = (7k + 5)^2 = 49k^2 + 70k + 25.  \r\n25 mod 7 = 4. Remainder is 4.'),
(8, 'A mixture contains milk and water in the ratio of 4:1. How much water must be added to 20 liters of the mixture to make the ratio 2:1?', 'Milk = 16L, Water = 4L. Let x liters of water be added.  \r\n(16)/(4 + x) = 2/1  \r\nSolving, x = 4L.'),
(9, 'A train running at 54 km/h takes 20 seconds to cross a bridge of length 150m. What is the length of the train?', 'Speed = 54 × (5/18) = 15 m/s.  \r\nTotal distance = speed × time = 15 × 20 = 300m.  \r\nTrain length = 300 - 150 = 150m.'),
(10, 'Two numbers are in the ratio 3:4. If their LCM is 84, find their HCF.', 'Let numbers be 3x and 4x.  \r\nLCM of 3x and 4x = 12x = 84 → x = 7.  \r\nHCF = x = 7.'),
(11, 'A is twice as good a worker as B, and together they complete a task in 18 days. How long will A alone take?', 'Let B’s work rate be x. A’s rate = 2x.  \r\nTotal rate = 3x, Time = 18 days.  \r\nTotal work = 18 × 3x = 54x.  \r\nA alone = 54x / 2x = 27 days.'),
(12, 'A sum becomes four times itself in 6 years under compound interest. Find the annual rate of interest.', 'Using CI formula: 4P = P(1 + r/100)^6.  \r\n(1 + r/100)^6 = 4.  \r\nSolving, r ≈ 25.99%.'),
(13, 'A boat can travel 30 km downstream in 2 hours and the same distance upstream in 3 hours. Find the speed of the boat in still water.', 'Downstream speed = 30/2 = 15 km/h.  \r\nUpstream speed = 30/3 = 10 km/h.  \r\nSpeed in still water = (15 + 10) / 2 = 12.5 km/h.'),
(14, 'The cost price of an article is ₹2400. If it is sold at a 25% profit, what is the selling price?', 'Selling price = CP + Profit = 2400 + (25% of 2400) = ₹3000.'),
(15, 'A man buys two watches for ₹840. He sells one at a 10% gain and the other at a 10% loss. What is his overall gain or loss?', 'Net loss = (Gain% - Loss%)² / 100 = (10 - 10)² / 100 = 0%.  \r\nNo loss or gain.'),
(16, 'Two numbers are in the ratio 5:7. If their sum is 240, find the numbers.', 'Let numbers be 5x and 7x.  \r\n5x + 7x = 240 → x = 20.  \r\nNumbers = 100 and 140.'),
(17, 'A person covers a certain distance in 3 hours at 40 km/h and returns at 60 km/h. What is the average speed?', 'Total distance = 3 × 40 + 3 × 60 = 120 + 180 = 300 km.  \r\nTotal time = 6 hours.  \r\nAverage speed = 300 / 6 = 50 km/h.'),
(18, 'If the perimeter of a square is 48 cm, find its area.', 'Side = 48 / 4 = 12 cm.  \r\nArea = 12 × 12 = 144 cm².'),
(19, 'A student secures 40% in an exam and fails by 20 marks. If he scored 50%, he would pass by 10 marks. Find the passing marks.', 'Let total marks be x.  \r\n40% of x = Passing marks - 20  \r\n50% of x = Passing marks + 10  \r\nSolving, x = 300, Passing marks = 120.'),
(20, 'A person spends 75% of his income and saves ₹1500. Find his income.', 'Let income be x.  \r\nSaving = 25% of x = ₹1500.  \r\nx = 1500 × 4 = ₹6000.'),
(21, 'A cone has a height of 12 cm and a radius of 5 cm. Find its volume.', 'V = (1/3)πr²h = (1/3) × 3.1416 × 5² × 12 ≈ 314.16 cm³.'),
(22, 'The ratio of present ages of A and B is 5:3. After 10 years, the ratio becomes 3:2. Find their present ages.', 'Let A’s age = 5x, B’s age = 3x.  \r\n(5x + 10) / (3x + 10) = 3/2.  \r\nSolving, x = 10, A = 50, B = 30.'),
(23, 'A train moving at 72 km/h crosses a platform in 30 seconds. If the platform is 250 meters long, find the length of the train.', 'Speed = 72 × (5/18) = 20 m/s.  \r\nTotal distance = 20 × 30 = 600m.  \r\nTrain length = 600 - 250 = 350m.');

-- --------------------------------------------------------

--
-- Table structure for table `aws_questions`
--

CREATE TABLE `aws_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'aws'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aws_questions`
--

INSERT INTO `aws_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'Define and explain the three basic types of cloud services and the AWS products that are built based on them?', 'The three basic types of cloud services are: Computing, Storage, and Networking. Here are some of the AWS products that are built based on them: 1. Computing - These include EC2, Elastic Beanstalk, Lambda, Auto-Scaling, and Lightsail. 2. Storage - These include S3, Glacier, Elastic Block Storage, Elastic File System. 3. Networking - These include VPC, Amazon CloudFront, Route53.', 'aws'),
(2, 'What is the relation between the Availability Zone and Region?', 'AWS regions are separate geographical areas, like the US-West 1 (North California) and Asia South (Mumbai). On the other hand, availability zones are the areas that are present inside the regions. These are generally isolated zones that can replicate themselves whenever required.', 'aws'),
(3, 'What is auto-scaling?', 'Auto-scaling is a function that allows you to provision and launch new instances whenever there is a demand. It allows you to automatically increase or decrease resource capacity in relation to the demand.', 'aws'),
(4, 'What is geo-targeting in CloudFront?', 'Geo-Targeting is a concept where businesses can show personalized content to their audience based on their geographic location without changing the URL. This helps you create customized content for the audience of a specific geographical area, keeping their needs in the forefront.', 'aws'),
(5, 'What are the steps involved in a CloudFormation Solution?', 'The steps involved are: 1. Create or use an existing CloudFormation template using JSON or YAML format. 2. Save the code in an S3 bucket. 3. Use AWS CloudFormation to call the bucket and create a stack on your template. 4. CloudFormation reads the file and provisions the services one after the other.', 'aws'),
(6, 'How do you upgrade or downgrade a system with near-zero downtime?', 'You can upgrade or downgrade a system with near-zero downtime using the following steps of migration: 1. Open EC2 console. 2. Choose Operating System AMI. 3. Launch an instance with the new instance type. 4. Install all updates and applications. 5. Test the instance. 6. Deploy the new instance and replace the older instance.', 'aws'),
(7, 'What tools and techniques can be used in AWS to identify if you are paying more than you should be, and how to correct it?', 'You can use the following: 1. Top Services Table - Shows the top five most used services. 2. Cost Explorer - Analyzes usage costs for the last 13 months. 3. AWS Budgets - Helps plan and check if the current plan meets your budget. 4. Cost Allocation Tags - Identifies resources that cost more in a particular month.', 'aws'),
(8, 'Is there any other alternative tool to log into the cloud environment other than console?', 'Yes, alternatives include: Putty, AWS CLI for Linux, AWS CLI for Windows, AWS CLI for Windows CMD, AWS SDK, and Eclipse.', 'aws'),
(9, 'What services can be used to create a centralized logging solution?', 'You can use: 1. Amazon CloudWatch Logs, 2. Store them in Amazon S3, 3. Use Amazon Elastic Search to visualize them, 4. Amazon Kinesis Firehose to move data from Amazon S3 to Amazon ElasticSearch.', 'aws'),
(10, 'What are the native AWS Security logging capabilities?', 'AWS CloudTrail provides a history of the AWS API calls, allowing security analysis, resource change tracking, and compliance auditing. AWS Config helps you understand the configuration changes happening in your environment.', 'aws'),
(11, 'What is a DDoS attack, and what services can minimize them?', 'DDoS is a cyber-attack where the perpetrator accesses a website and creates multiple sessions, blocking legitimate users. AWS tools to minimize DDoS attacks include: AWS Shield, AWS WAF, Amazon Route53, Amazon CloudFront, ELB, and VPC.', 'aws'),
(12, 'You are trying to provide a service in a particular region but don\'t see the service. Why is this happening?', 'Not all AWS services are available in all regions. If a service isn’t available in your region, you can switch to the nearest region that provides the service.', 'aws'),
(13, 'How do you set up a system to monitor website metrics in real-time in AWS?', 'Amazon CloudWatch is used to monitor application status, state changes in EC2, auto-scaling lifecycle events, scheduled events, AWS API calls, and console sign-in events.', 'aws'),
(14, 'What are the different types of virtualization in AWS, and what are the differences between them?', 'The three types are: 1. Hardware Virtual Machine (HVM) - Fully virtualized hardware. 2. Paravirtualization (PV) - Uses PV-GRUB as bootloader. 3. Paravirtualization on HVM - Leverages storage and network I/O.', 'aws'),
(15, 'Name some of the AWS services that are not region-specific.', 'AWS services that are not region-specific include: IAM, Route 53, Web Application Firewall, and CloudFront.', 'aws'),
(16, 'What are the differences between NAT Gateways and NAT Instances?', 'Both serve the same function but have key differences. NAT Gateways are managed services with better availability and bandwidth. NAT Instances require management by the user.', 'aws'),
(17, 'What is CloudWatch?', 'CloudWatch is used for monitoring AWS environments like CPU utilization, EC2, Amazon RDS instances, Amazon SQS, S3, Load Balancer, SNS, etc. It also triggers alarms based on multiple metrics.', 'aws'),
(18, 'What is an Elastic Transcoder?', 'Elastic Transcoder is a cloud-based media transcoding tool that changes the resolution and format of videos to support multiple devices. It is easy to use, cost-effective, and highly scalable.', 'aws'),
(19, 'With specified private IP addresses, can an EC2 instance be launched?', 'Yes, by utilizing VPC (Virtual Private Cloud).', 'aws'),
(20, 'Define Amazon EC2 regions and availability zones.', 'Availability zones are geographically separate locations. Failure in one zone does not affect instances in other zones. Regions may have one or more availability zones, reducing latency and costs.', 'aws');

-- --------------------------------------------------------

--
-- Table structure for table `cloudsecurity_questions`
--

CREATE TABLE `cloudsecurity_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cloudsecurity_questions`
--

INSERT INTO `cloudsecurity_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is endpoint security in cloud computing?', 'Endpoint security ensures that devices connecting to the cloud are protected from threats.'),
(2, 'What are security groups in cloud computing?', 'Security groups act as virtual firewalls that control inbound and outbound traffic for cloud resources.'),
(3, 'How do cloud providers ensure physical security of their data centers?', 'They use access controls, surveillance, redundancy, and environmental protection measures.'),
(4, 'What is a SIEM (Security Information and Event Management) system?', 'A SIEM system collects and analyzes security data to detect threats and respond to incidents.'),
(5, 'What are the key security measures for cloud-based applications?', 'Key measures include authentication, encryption, logging, firewalls, and continuous monitoring.'),
(6, 'What is cloud-native security?', 'Cloud-native security refers to security solutions designed specifically for cloud environments and architectures.'),
(7, 'What is serverless security in cloud computing?', 'Serverless security involves securing functions, APIs, and event-driven workflows in serverless environments.'),
(8, 'How does AI improve cloud security?', 'AI helps detect anomalies, automate threat response, and improve risk assessments.'),
(9, 'What is an insider threat in cloud security?', 'An insider threat comes from employees, contractors, or partners who misuse access to cloud resources.'),
(10, 'What is a cloud security posture management (CSPM) tool?', 'CSPM tools continuously monitor cloud configurations to detect security risks and compliance violations.'),
(11, 'What are the best practices for securing cloud databases?', 'Use encryption, access controls, backups, and monitoring to secure cloud databases.'),
(12, 'How do cloud security audits work?', 'Cloud security audits assess the security posture of cloud environments and ensure compliance with standards.'),
(13, 'What is an advanced persistent threat (APT) in cloud security?', 'An APT is a long-term, targeted cyberattack designed to gain unauthorized access to sensitive data.'),
(14, 'What are the differences between cloud security and traditional on-premise security?', 'Cloud security focuses on shared responsibility, while on-premise security gives full control to organizations.'),
(15, 'What is microsegmentation in cloud security?', 'Microsegmentation divides cloud networks into isolated segments to prevent unauthorized lateral movement.'),
(16, 'What are cloud security certifications?', 'Examples include Certified Cloud Security Professional (CCSP) and AWS Certified Security.'),
(17, 'What is threat intelligence in cloud security?', 'Threat intelligence provides information about cyber threats to enhance security defenses.'),
(18, 'What is a cloud security gateway?', 'A cloud security gateway enforces security policies between cloud services and users.'),
(19, 'What is a honeypot in cloud security?', 'A honeypot is a decoy system used to attract and analyze cyber threats.'),
(20, 'How can organizations prepare for cloud security incidents?', 'By implementing incident response plans, monitoring logs, and training employees on security best practices.');

-- --------------------------------------------------------

--
-- Table structure for table `code_submissions`
--

CREATE TABLE `code_submissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_code` text NOT NULL,
  `user_output` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
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
-- Table structure for table `compiler_results`
--

CREATE TABLE `compiler_results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `submitted_code` text NOT NULL,
  `language` enum('c','cpp','python') NOT NULL,
  `output` text DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT 0,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computer_vision_questions`
--

CREATE TABLE `computer_vision_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `computer_vision_questions`
--

INSERT INTO `computer_vision_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Computer Vision?', 'Computer Vision is a field of AI that enables machines to interpret and understand visual information from the world.'),
(2, 'What are some applications of Computer Vision?', 'Applications include image classification, object detection, face recognition, medical imaging, and autonomous vehicles.'),
(3, 'What is the difference between Image Processing and Computer Vision?', 'Image processing focuses on modifying images, while Computer Vision aims to understand and extract meaning from images.'),
(4, 'What are Convolutional Neural Networks (CNNs)?', 'CNNs are deep learning models designed for processing visual data using convolutional layers.'),
(5, 'Why are CNNs widely used in Computer Vision?', 'CNNs efficiently capture spatial hierarchies in images and reduce computational complexity.'),
(6, 'What is the role of convolution in CNNs?', 'Convolution applies filters to extract important features like edges, textures, and shapes.'),
(7, 'What is Image Classification?', 'Image classification is the task of assigning a label to an image based on its content.'),
(8, 'What is Object Detection?', 'Object detection identifies and locates multiple objects in an image with bounding boxes.'),
(9, 'What is the difference between Object Detection and Image Classification?', 'Image classification assigns a single label to an image, whereas object detection identifies multiple objects and their locations.'),
(10, 'What are popular Object Detection models?', 'Popular models include YOLO (You Only Look Once), Faster R-CNN, and SSD (Single Shot MultiBox Detector).'),
(11, 'What is Semantic Segmentation?', 'Semantic segmentation assigns a class label to every pixel in an image.'),
(12, 'What is Instance Segmentation?', 'Instance segmentation identifies and distinguishes multiple objects of the same class within an image.'),
(13, 'What is the role of OpenCV in Computer Vision?', 'OpenCV is an open-source library that provides tools for image processing, object detection, and facial recognition.'),
(14, 'What is Feature Extraction in Computer Vision?', 'Feature extraction identifies important characteristics in an image, such as edges and corners.'),
(15, 'What are keypoint detection and feature matching?', 'Keypoint detection identifies distinct features in an image, and feature matching aligns them across different images.'),
(16, 'What is Optical Flow?', 'Optical flow estimates motion between consecutive frames in a video.'),
(17, 'What is Face Recognition?', 'Face recognition identifies or verifies individuals based on facial features.'),
(18, 'What is the difference between Face Detection and Face Recognition?', 'Face detection finds faces in an image, while face recognition identifies individuals.'),
(19, 'What is the role of Transfer Learning in Computer Vision?', 'Transfer learning reuses pre-trained models to improve efficiency and accuracy in new tasks.'),
(20, 'What is a Pretrained Model in Computer Vision?', 'A pretrained model is a model trained on a large dataset that can be fine-tuned for a specific task.'),
(21, 'What is GAN (Generative Adversarial Network)?', 'GANs are models used for generating new images by learning from a dataset.'),
(22, 'What is Image Augmentation?', 'Image augmentation artificially expands a dataset by applying transformations like rotation, flipping, and scaling.'),
(23, 'What is the difference between RGB and Grayscale images?', 'RGB images contain color information, while grayscale images have only intensity values.'),
(24, 'What is Edge Detection in Computer Vision?', 'Edge detection highlights the boundaries of objects in an image.'),
(25, 'What is HOG (Histogram of Oriented Gradients)?', 'HOG is a feature descriptor used for object detection and recognition.'),
(26, 'What is the purpose of SIFT (Scale-Invariant Feature Transform)?', 'SIFT detects and describes local features in images for object recognition.'),
(27, 'What is the difference between Supervised and Unsupervised Learning in Computer Vision?', 'Supervised learning uses labeled data, while unsupervised learning identifies patterns without labels.'),
(28, 'What is the role of AI in Autonomous Vehicles?', 'AI processes visual data to detect objects, recognize lanes, and make driving decisions.'),
(29, 'What is Image Super-Resolution?', 'Image super-resolution enhances the resolution of images using deep learning techniques.'),
(30, 'What is OCR (Optical Character Recognition)?', 'OCR extracts text from images and scanned documents for digital processing.');

-- --------------------------------------------------------

--
-- Table structure for table `cpp_questions`
--

CREATE TABLE `cpp_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `expected_output` text NOT NULL,
  `language` varchar(10) NOT NULL DEFAULT 'cpp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cpp_questions`
--

INSERT INTO `cpp_questions` (`id`, `question`, `expected_output`, `language`) VALUES
(1, 'Write a program to reverse a string.', 'olleh', 'cpp'),
(2, 'Write a program to print \"Hello, World!\"', 'Hello, World!', 'cpp'),
(3, 'Write a program to add two numbers (input: 5, 3)', '8', 'cpp'),
(4, 'Write a program to subtract two numbers (input: 10, 4)', '6', 'cpp'),
(5, 'Write a program to multiply two numbers (input: 6, 7)', '42', 'cpp'),
(6, 'Write a program to divide two numbers (input: 15, 3)', '5', 'cpp'),
(7, 'Write a program to find the remainder of 17 divided by 5', '2', 'cpp'),
(8, 'Write a program to check if a number is even (input: 8)', '8 is even', 'cpp'),
(9, 'Write a program to check if a number is odd (input: 7)', '7 is odd', 'cpp'),
(10, 'Write a program to find the largest of two numbers (input: 15, 9)', '15 is larger', 'cpp'),
(11, 'Write a program to find the smallest of two numbers (input: 15, 9)', '9 is smaller', 'cpp'),
(12, 'Write a program to print numbers from 1 to 5', '1\n2\n3\n4\n5', 'cpp'),
(13, 'Write a program to print numbers from 5 to 1', '5\n4\n3\n2\n1', 'cpp'),
(14, 'Write a program to calculate the factorial of 5', '120', 'cpp'),
(15, 'Write a program to check if a number is prime (input: 7)', '7 is prime', 'cpp'),
(16, 'Write a program to reverse a string \"hello\" (input: hello)', 'olleh', 'cpp'),
(17, 'Write a program to count vowels in \"hello world\" (input: hello world)', '3', 'cpp'),
(18, 'Write a program to print the ASCII value of \'A\'', '65', 'cpp'),
(19, 'Write a program to swap two numbers (input: 5, 3)', 'After swap: 3, 5', 'cpp'),
(20, 'Write a program to find the sum of digits in 123 (input: 123)', '6', 'cpp'),
(21, 'Write a program to check if a year is leap year (input: 2020)', '2020 is a leap year', 'cpp'),
(22, 'Write a program to print a pyramid of stars (height 3)', '  *\n ***\n*****', 'cpp'),
(23, 'Write a program to calculate the power of 2^3', '8', 'cpp'),
(24, 'Write a program to convert Celsius to Fahrenheit (input: 37)', '98.60', 'cpp'),
(25, 'Write a program to find the GCD of 48 and 18 (input: 48, 18)', '6', 'cpp'),
(26, 'Write a program to find the LCM of 12 and 18 (input: 12, 18)', '36', 'cpp'),
(27, 'Write a program to count characters in \"hello\" (input: hello)', '5', 'cpp'),
(28, 'Write a program to check if a string is palindrome (input: radar)', 'radar is a palindrome', 'cpp'),
(29, 'Write a program to print Fibonacci sequence up to 5 terms', '0\n1\n1\n2\n3', 'cpp'),
(30, 'Write a program to sort an array [5, 2, 8, 1, 9] in ascending order', '1 2 5 8 9', 'cpp'),
(31, 'Write a program to find the average of numbers [10, 20, 30] (input: 10, 20, 30)', '20.00', 'cpp');

-- --------------------------------------------------------

--
-- Table structure for table `cryptography_questions`
--

CREATE TABLE `cryptography_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cryptography_questions`
--

INSERT INTO `cryptography_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is cryptography?', 'Cryptography is the practice of securing communication and data by converting it into an unreadable format to prevent unauthorized access.'),
(2, 'What are the main objectives of cryptography?', 'The main objectives are confidentiality, integrity, authentication, and non-repudiation.'),
(3, 'What are the types of cryptography?', 'The main types are symmetric-key cryptography, asymmetric-key cryptography, and hash functions.'),
(4, 'What is symmetric-key cryptography?', 'Symmetric-key cryptography uses the same key for both encryption and decryption.'),
(5, 'What is asymmetric-key cryptography?', 'Asymmetric-key cryptography uses a pair of keys (public and private) for encryption and decryption.'),
(6, 'What is the difference between encryption and hashing?', 'Encryption converts data into a secret format that can be reversed, while hashing is a one-way transformation of data.'),
(7, 'What is a cryptographic hash function?', 'A cryptographic hash function converts input data into a fixed-length hash value that is unique and irreversible.'),
(8, 'What is an example of a cryptographic hash function?', 'Examples include SHA-256, MD5, and SHA-1.'),
(9, 'What is RSA encryption?', 'RSA is an asymmetric encryption algorithm that uses large prime numbers for secure communication.'),
(10, 'What is AES encryption?', 'AES (Advanced Encryption Standard) is a symmetric encryption algorithm widely used for secure data encryption.'),
(11, 'What is the difference between AES and DES?', 'AES is more secure than DES due to its larger key size and stronger encryption process.'),
(12, 'What is a digital signature?', 'A digital signature is a cryptographic method used to verify the authenticity and integrity of digital messages.'),
(13, 'What is public-key infrastructure (PKI)?', 'PKI is a framework that manages digital keys and certificates to secure communications.'),
(14, 'What is a digital certificate?', 'A digital certificate is an electronic document that verifies the identity of an entity using a public key.'),
(15, 'What is SSL/TLS?', 'SSL (Secure Sockets Layer) and TLS (Transport Layer Security) are protocols that encrypt data transmitted over the internet.'),
(16, 'What is the difference between SSL and TLS?', 'TLS is an improved version of SSL with stronger security features.'),
(17, 'What is an example of asymmetric encryption?', 'Examples include RSA, ECC (Elliptic Curve Cryptography), and Diffie-Hellman.'),
(18, 'What is elliptic curve cryptography (ECC)?', 'ECC is a public-key encryption technique that uses elliptic curves for secure communication.'),
(19, 'What is the purpose of the Diffie-Hellman algorithm?', 'Diffie-Hellman is a key exchange algorithm that allows two parties to securely share a secret key over an insecure channel.'),
(20, 'What is a cryptographic nonce?', 'A nonce is a random number used once in a cryptographic operation to prevent replay attacks.'),
(21, 'What is a one-time pad?', 'A one-time pad is an encryption technique that uses a random key equal in length to the message, making it theoretically unbreakable.'),
(22, 'What is the purpose of message authentication codes (MACs)?', 'MACs provide data integrity and authentication to ensure messages are not altered.'),
(23, 'What is salting in cryptography?', 'Salting is the process of adding random data to passwords before hashing to prevent attacks like rainbow table attacks.'),
(24, 'What is a zero-knowledge proof?', 'A zero-knowledge proof allows one party to prove they know a value without revealing the value itself.'),
(25, 'What is homomorphic encryption?', 'Homomorphic encryption allows computations to be performed on encrypted data without decrypting it.'),
(26, 'What is quantum cryptography?', 'Quantum cryptography uses principles of quantum mechanics to develop secure communication methods.'),
(27, 'What is post-quantum cryptography?', 'Post-quantum cryptography refers to cryptographic methods that can resist quantum computing attacks.'),
(28, 'What is a blockchain in cryptography?', 'A blockchain is a decentralized ledger that uses cryptographic hashing for secure and tamper-proof transactions.'),
(29, 'What are common cryptographic attacks?', 'Common attacks include brute force, man-in-the-middle, replay attacks, and side-channel attacks.'),
(30, 'What is key management in cryptography?', 'Key management involves generating, distributing, storing, and disposing of cryptographic keys securely.');

-- --------------------------------------------------------

--
-- Table structure for table `csharp_questions`
--

CREATE TABLE `csharp_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `csharp_questions`
--

INSERT INTO `csharp_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is C#?', 'C# is a modern, object-oriented programming language developed by Microsoft as part of the .NET framework.'),
(2, 'What are the main features of C#?', 'C# supports object-oriented programming, garbage collection, type safety, and interoperability with .NET libraries.'),
(3, 'What is the difference between a struct and a class in C#?', 'A struct is a value type stored on the stack, while a class is a reference type stored on the heap.'),
(4, 'What is the purpose of the \"using\" directive in C#?', 'The \"using\" directive is used to include namespaces and manage resource cleanup for IDisposable objects.'),
(5, 'What is the difference between \"readonly\" and \"const\" in C#?', '\"readonly\" variables can be assigned at runtime in a constructor, whereas \"const\" variables must be assigned at compile-time.'),
(6, 'What is the difference between an abstract class and an interface?', 'An abstract class can have method implementations, while an interface only defines method signatures.'),
(7, 'What is the purpose of the \"virtual\" keyword in C#?', 'The \"virtual\" keyword allows methods in a base class to be overridden in derived classes.'),
(8, 'What is polymorphism in C#?', 'Polymorphism allows objects to be treated as instances of their base type, enabling method overriding and dynamic behavior.'),
(9, 'What is the difference between \"override\" and \"new\" keywords?', '\"override\" is used to modify a base class method, while \"new\" hides the base class method without overriding it.'),
(10, 'What is a delegate in C#?', 'A delegate is a type that holds references to methods and allows function pointers in C#.'),
(11, 'What is an event in C#?', 'An event is a special delegate used for handling user interactions and event-driven programming.'),
(12, 'What is the difference between \"is\" and \"as\" operators in C#?', '\"is\" checks if an object is of a certain type, while \"as\" attempts to cast an object and returns null if it fails.'),
(13, 'What is a lambda expression in C#?', 'A lambda expression is an anonymous function that can be used to define inline expressions and methods.'),
(14, 'What is LINQ in C#?', 'LINQ (Language Integrated Query) is a feature that allows querying collections using SQL-like syntax.'),
(15, 'What is the purpose of the \"async\" and \"await\" keywords?', '\"async\" marks a method as asynchronous, while \"await\" pauses execution until an asynchronous task completes.'),
(16, 'What is the difference between \"Task\" and \"Thread\" in C#?', '\"Task\" is a higher-level abstraction for asynchronous operations, whereas \"Thread\" represents a lower-level system thread.'),
(17, 'What is dependency injection in C#?', 'Dependency injection is a design pattern used to manage dependencies and increase testability by injecting dependencies instead of hardcoding them.'),
(18, 'What is garbage collection in C#?', 'Garbage collection automatically frees memory occupied by objects that are no longer in use.'),
(19, 'What are generics in C#?', 'Generics allow defining classes, methods, and interfaces with a placeholder for the data type.'),
(20, 'What is a nullable type in C#?', 'A nullable type allows value types (like int, bool) to hold a null value using \"?\".'),
(21, 'What is a tuple in C#?', 'A tuple is a lightweight data structure that can hold multiple values of different types.'),
(22, 'What is the difference between \"ref\" and \"out\" parameters in C#?', '\"ref\" requires the variable to be initialized before passing, while \"out\" does not require initialization.'),
(23, 'What is the difference between value types and reference types?', 'Value types store data directly in memory, while reference types store references to the actual data.'),
(24, 'What is \"boxing\" and \"unboxing\" in C#?', '\"Boxing\" converts a value type to an object, while \"unboxing\" extracts the value type from an object.'),
(25, 'What is a sealed class in C#?', 'A sealed class cannot be inherited by other classes.'),
(26, 'What is an extension method in C#?', 'An extension method allows adding methods to existing types without modifying their source code.'),
(27, 'What is \"var\" in C#?', '\"var\" is an implicit type that allows the compiler to infer the type at compile-time.'),
(28, 'What is the difference between \"==\" and \"Equals()\" in C#?', '\"==\" compares object references, while \"Equals()\" compares object values.'),
(29, 'What is the difference between \"String\" and \"StringBuilder\" in C#?', '\"String\" is immutable, while \"StringBuilder\" allows efficient string modifications without creating new objects.');

-- --------------------------------------------------------

--
-- Table structure for table `css_questions`
--

CREATE TABLE `css_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `skills` varchar(255) DEFAULT 'css'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `css_questions`
--

INSERT INTO `css_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is CSS?', 'CSS stands for Cascading Style Sheets. It is used to style and layout web pages.', 'css'),
(2, 'What is a CSS Selector?', 'A CSS selector is a pattern used to select the elements you want to style.', 'css'),
(3, 'What are the different types of CSS Selectors?', 'The main types are: Element, Class, ID, Attribute, Pseudo-class, and Pseudo-element selectors.', 'css'),
(4, 'What is the difference between Class and ID selectors?', 'Class selectors are reusable and can be applied to multiple elements, while ID selectors are unique and can only be applied to one element.', 'css'),
(5, 'What is the Box Model in CSS?', 'The CSS Box Model consists of: Content, Padding, Border, and Margin.', 'css'),
(6, 'What is Flexbox in CSS?', 'Flexbox is a layout model that allows responsive alignment and distribution of space among items.', 'css'),
(7, 'What is CSS Grid?', 'CSS Grid is a two-dimensional layout system that allows the creation of complex web layouts easily.', 'css'),
(8, 'How to center a div in CSS?', 'Using Flexbox: display: flex; justify-content: center; align-items: center; or using margin: auto; with fixed width and height.', 'css'),
(9, 'What is Z-index in CSS?', 'Z-index controls the stack order of elements along the Z-axis (front-to-back).', 'css'),
(10, 'What are Media Queries in CSS?', 'Media Queries allow responsive design by applying styles based on device screen sizes.', 'css'),
(11, 'What is the difference between Visibility: hidden and Display: none?', 'Visibility: hidden hides the element but keeps its space, while Display: none removes the element and its space.', 'css'),
(12, 'What is the difference between Inline, Block, and Inline-block elements?', 'Inline does not start on a new line and only takes necessary width. Block starts on a new line and takes full width. Inline-block allows width and height to be set without breaking the flow.', 'css'),
(13, 'What is the purpose of CSS Variables?', 'CSS Variables are custom properties that allow reuse of values throughout the stylesheet.', 'css'),
(14, 'What are Pseudo-classes and Pseudo-elements?', 'Pseudo-classes are used to define special states of an element, while Pseudo-elements style specific parts of an element.', 'css'),
(15, 'What is the difference between Position: relative, absolute, fixed, and sticky?', 'Relative moves relative to its normal position. Absolute is positioned relative to its nearest positioned ancestor. Fixed is relative to the viewport. Sticky toggles between relative and fixed based on scroll.', 'css'),
(16, 'What is a CSS Preprocessor?', 'A CSS Preprocessor is a scripting language that extends CSS with variables, nesting, and functions (e.g., SASS, LESS).', 'css'),
(17, 'What is the use of !important in CSS?', 'The !important rule overrides any other style, regardless of specificity.', 'css'),
(18, 'What is Responsive Design?', 'Responsive Design ensures a web page looks good on all devices by using flexible layouts, media queries, and responsive images.', 'css'),
(19, 'What are Keyframes in CSS?', 'Keyframes define the steps of an animation sequence.', 'css'),
(20, 'What is a CSS Framework?', 'A CSS Framework is a pre-prepared library with design patterns and styles for easier development (e.g., Bootstrap, Tailwind CSS).', 'css');

-- --------------------------------------------------------

--
-- Table structure for table `cypress_questions`
--

CREATE TABLE `cypress_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'cypress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cypress_questions`
--

INSERT INTO `cypress_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'How can you define the Cypress testing tool?', 'Cypress is a Javascript-based front-end testing tool. It has been written in Node.js. The tool is helpful in executing tests in a browser, making the testing process more reliable and easier.', 'cypress'),
(2, 'How will you install Cypress?', 'To install Cypress, first install Node.js. Then use the command - npm install cypress.', 'cypress'),
(3, 'Can you define the Cypress architecture?', 'Cypress uses a Node server process that consistently synchronizes with Cypress to communicate and execute tasks. It operates at a network layer to alter and read web traffic, allowing it to modify browser behavior for automation.', 'cypress'),
(4, 'What are the primary features of Cypress?', 'Cypress runs tests on the browser, making them fast and less flaky. It takes snapshots after each step, provides network traffic control, inbuilt assertions, and automatic wait.', 'cypress'),
(5, 'What are the advantages of Cypress?', 'Works with Internal Ajax Calls and Single Page Applications, executes commands faster than Selenium, takes screenshots without additional configuration, and runs tests on the browser.', 'cypress'),
(6, 'What are the disadvantages of Cypress?', 'Supports only JavaScript, limited to web testing, does not support multiple tabs or iframes.', 'cypress'),
(7, 'What do you mean by Cypress CLI?', 'Cypress CLI allows running tests from the command line, useful for CI/CD pipelines. It provides flags control and options for test behavior.', 'cypress'),
(8, 'Name some browsers that Cypress supports.', 'Electron, Firefox, Edge, Chromium, and Chrome.', 'cypress'),
(9, 'How can you differentiate Cypress from Selenium?', 'Cypress supports only JavaScript and TypeScript, while Selenium supports multiple languages. Cypress supports fewer browsers and has easier configuration compared to Selenium.', 'cypress'),
(10, 'What are the testing frameworks that come with Cypress?', 'Cypress comes with Chai and Mocha assertion libraries but does not support TestNG or JUnit.', 'cypress'),
(11, 'How can you interact with DOM elements in Cypress?', 'DOM elements can be interacted with using CSS selectors in Cypress.', 'cypress'),
(12, 'Can you use BDD with Cypress?', 'Cypress does not have built-in BDD support, but the NPM Cypress-Cucumber-Preprocessor plugin allows writing tests in BDD Cucumber syntax.', 'cypress'),
(13, 'What do you mean by hooks in Cypress?', 'Hooks set preconditions for tests and include afterEach(), after(), beforeEach(), and before().', 'cypress'),
(14, 'How will you manage reusability in the Cypress framework?', 'Reusable behaviors, such as global overrides and custom commands, can be placed in commands.js and index.js within the Support folder.', 'cypress'),
(15, 'Define the components of Cypress.', 'Components include Test Runner, App Preview, Test Status, Command Log, URL Preview, and Viewport Sizing.', 'cypress'),
(16, 'What do you mean by automation in Cypress?', 'Cypress automation runs test code with the app in a single browser, using Node.js server for tasks outside the browser.', 'cypress'),
(17, 'Define Cypress run.', 'Cypress run executes tests in headless browsers, opens new tabs, loads the tool from Cypress.json, and runs tests on the webpack monitor.', 'cypress'),
(18, 'What selectors does Cypress support?', 'By default, Cypress supports CSS selectors but can also use Xpath selectors with third-party plugins.', 'cypress'),
(19, 'How will you open the Cypress window and execute tests?', 'After installing Cypress, open it using npm cypress open, then click on the test file name to execute the tests.', 'cypress'),
(20, 'How to see the default configuration in this tool?', 'The default configuration can be seen in the Cypress Test Runner window under Settings and Configurations.', 'cypress');

-- --------------------------------------------------------

--
-- Table structure for table `c_questions`
--

CREATE TABLE `c_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `expected_output` text NOT NULL,
  `language` varchar(10) NOT NULL DEFAULT 'c'
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
-- Table structure for table `data_structures_questions`
--

CREATE TABLE `data_structures_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `skills` varchar(255) DEFAULT 'datastructure'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_structures_questions`
--

INSERT INTO `data_structures_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is data structure?', 'A data structure is a way of organizing data that considers not only the items stored, but also their relationship to each other. Advance knowledge about the relationship between data items allows designing of efficient algorithms for the manipulation of data.', 'datastructure'),
(2, 'List out the areas in which data structures are applied extensively?', 'Compiler Design, Operating System, Database Management System, Statistical analysis package, Numerical Analysis, Graphics, Artificial Intelligence, Simulation', 'datastructure'),
(3, 'What are the major data structures used in the following areas : RDBMS, Network data model and Hierarchical data model.', 'RDBMS = Array (i.e. Array of structures) Network data model = Graph Hierarchical data model = Trees', 'datastructure'),
(4, 'If you are using C language to implement the heterogeneous linked list, what pointer type will you use?', 'The heterogeneous linked list contains different data types in its nodes and we need a link, pointer to connect them. It is not possible to use ordinary pointers for this. So we go for void pointer. Void pointer is capable of storing pointer to any type as it is a generic pointer type.', 'datastructure'),
(5, 'Minimum number of queues needed to implement the priority queue?', 'Two. One queue is used for actual storing of data and another for storing priorities.', 'datastructure'),
(6, 'What is the data structures used to perform recursion?', 'Stack. Because of its LIFO (Last In First Out) property it remembers its \'caller\' so knows whom to return when the function has to return. Recursion makes use of system stack for storing the return addresses of the function calls. Every recursive function has its equivalent iterative (non-recursive) function. Even when such equivalent iterative procedures are written, explicit stack is to be used.', 'datastructure'),
(7, 'What are the notations used in Evaluation of Arithmetic Expressions using prefix and postfix forms?', 'Polish and Reverse Polish notations.', 'datastructure'),
(8, 'Convert the expression ((A + B) * C - (D - E) ^ (F + G)) to equivalent Prefix and Postfix notations.', 'Prefix Notation: - * +ABC ^ - DE + FG Postfix Notation: AB + C * DE - FG + ^ -', 'datastructure'),
(9, 'Sorting is not possible by using which of the following methods? (Insertion, Selection, Exchange, Deletion)', 'Sorting is not possible in Deletion. Using insertion we can perform insertion sort, using selection we can perform selection sort, using exchange we can perform the bubble sort (and other similar sorting methods). But no sorting method can be done just using deletion.', 'datastructure'),
(10, 'What are the methods available in storing sequential files ?', 'Straight merging, Natural merging, Polyphase sort, Distribution of Initial runs.', 'datastructure'),
(11, 'List out few of the Application of tree data-structure?', 'The manipulation of Arithmetic expression, Symbol Table construction, Syntax analysis.', 'datastructure'),
(12, 'List out few of the applications that make use of Multilinked Structures?', 'Sparse matrix, Index generation.', 'datastructure'),
(13, 'In tree construction which is the suitable efficient data structure? (Array, Linked list, Stack, Queue)', 'Linked list is the suitable efficient data structure.', 'datastructure'),
(14, 'What is the type of the algorithm used in solving the 8 Queens problem?', 'Backtracking.', 'datastructure'),
(15, 'In an AVL tree, at what condition the balancing is to be done?', 'If the \'pivotal value\' (or the \'Height factor\') is greater than 1 or less than -1.', 'datastructure'),
(16, 'What is the bucket size, when the overlapping and collision occur at same time?', 'One. If there is only one entry possible in the bucket, when the collision occurs, there is no way to accommodate the colliding value. This results in the overlapping of values.', 'datastructure'),
(17, 'Classify the Hashing Functions based on the various methods by which the key value is found.', 'Direct method, Subtraction method, Modulo-Division method, Digit-Extraction method, Mid-Square method, Folding method, Pseudo-random method.', 'datastructure'),
(18, 'What are the types of Collision Resolution Techniques and the methods used in each of the type?', 'Open addressing (closed hashing), The methods used include: Overflow block. Closed addressing (open hashing), The methods used include: Linked list, Binary tree.', 'datastructure'),
(19, 'In RDBMS, what is the efficient data structure used in the internal storage representation?', 'B+ tree. Because in B+ tree, all the data is stored only in leaf nodes, that makes searching easier. This corresponds to the records that shall be stored in leaf nodes.', 'datastructure'),
(20, 'What is a spanning Tree?', 'A spanning tree is a tree associated with a network. All the nodes of the graph appear on the tree once. A minimum spanning tree is a spanning tree organized so that the total edge weight between nodes is minimized.', 'datastructure'),
(21, 'Does the minimum spanning tree of a graph give the shortest distance between any 2 specified nodes?', 'No. The Minimal spanning tree assures that the total weight of the tree is kept at its minimum. But it doesn\'t mean that the distance between any two nodes involved in the minimum-spanning tree is minimum.', 'datastructure'),
(22, 'Which is the simplest file structure? (Sequential, Indexed, Random)', 'Sequential is the simplest file structure.', 'datastructure'),
(23, 'Whether Linked List is linear or Non-linear data structure?', 'According to Access strategies Linked list is a linear one. According to Storage Linked List is a Non-linear one.', 'datastructure');

-- --------------------------------------------------------

--
-- Table structure for table `dbms_questions`
--

CREATE TABLE `dbms_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `skills` varchar(255) DEFAULT 'dbms'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dbms_questions`
--

INSERT INTO `dbms_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is database?', 'A database is a logically coherent collection of data with some inherent meaning, representing some aspect of real world and which is designed, built and populated with data for a specific purpose.', 'dbms'),
(2, 'What is DBMS?', 'It is a collection of programs that enables user to create and maintain a database. In other words it is general-purpose software that provides the users with the processes of defining, constructing and manipulating the database for various applications.', 'dbms'),
(3, 'What is a Database system?', 'The database and DBMS software together is called as Database system.', 'dbms'),
(4, 'What are the advantages of DBMS?', 'Redundancy is controlled. Unauthorised access is restricted. Providing multiple user interfaces. Enforcing integrity constraints. Providing backup and recovery.', 'dbms'),
(5, 'What are the disadvantage in File Processing System?', 'Data redundancy and inconsistency. Difficult in accessing data. Data isolation. Data integrity. Concurrent access is not possible. Security Problems.', 'dbms'),
(6, 'Describe the three levels of data abstraction?', 'The are three levels of abstraction: Physical level: The lowest level of abstraction describes how data are stored. Logical level: The next higher level of abstraction, describes what data are stored in database and what relationship among those data. View level: The highest level of abstraction describes only part of entire database.', 'dbms'),
(7, 'Define the \"integrity rules\"?', 'There are two Integrity rules. Entity Integrity: States that \"Primary key cannot have NULL value\" Referential Integrity: States that \"Foreign Key can be either a NULL value or should be Primary Key value of other relation.', 'dbms'),
(8, 'What is extension and intension?', 'Extension: It is the number of tuples present in a table at any instance. This is time dependent. Intension: It is a constant value that gives the name, structure of table and the constraints laid on it.', 'dbms'),
(9, 'What is System R? What are its two major subsystems?', 'System R was designed and developed over a period of 1974-79 at IBM San Jose Research Center. It is a prototype and its purpose was to demonstrate that it is possible to build a Relational System that can be used in a real life environment to solve real life problems, with performance at least comparable to that of existing system. Its two subsystems are Research Storage System Relational Data System.', 'dbms'),
(10, 'How is the data structure of System R different from the relational structure?', 'Unlike Relational systems in System R Domains are not supported Enforcement of candidate key uniqueness is optional Enforcement of entity integrity is optional Referential integrity is not enforced', 'dbms'),
(11, 'What is Data Independence?', 'Data independence means that \"the application is independent of the storage structure and access strategy of data\". In other words, The ability to modify the schema definition in one level should not affect the schema definition in the next higher level. Two types of Data Independence: Physical Data Independence: Modification in physical level should not affect the logical level. Logical Data Independence: Modification in logical level should affect the view level. NOTE: Logical Data Independence is more difficult to achieve', 'dbms'),
(12, 'What is a view? How it is related to data independence?', 'A view may be thought of as a virtual table, that is, a table that does not really exist in its own right but is instead derived from one or more underlying base table. In other words, there is no stored file that direct represents the view instead a definition of view is stored in data dictionary. Growth and restructuring of base tables is not reflected in views. Thus the view can insulate users from the effects of restructuring and growth in the database. Hence accounts for logical data independence.', 'dbms'),
(13, 'What is Data Model?', 'A collection of conceptual tools for describing data, data relationships data semantics and constraints.', 'dbms'),
(14, 'What is E-R model?', 'This data model is based on real world that consists of basic objects called entities and of relationship among these objects. Entities are described in a database by a set of attributes.', 'dbms'),
(15, 'What is Object Oriented model?', 'This model is based on collection of objects. An object contains values stored in instance variables with in the object. An object also contains bodies of code that operate on the object. These bodies of code are called methods. Objects that contain same types of values and the same methods are grouped together into classes.', 'dbms'),
(16, 'What is an Entity?', 'It is a \'thing\' in the real world with an independent existence.', 'dbms'),
(17, 'What is an Entity type?', 'It is a collection (set) of entities that have same attributes.', 'dbms'),
(18, 'What is an Entity set?', 'It is a collection of all entities of particular entity type in the database.', 'dbms'),
(19, 'What is an Extension of entity type?', 'The collections of entities of a particular entity type are grouped together into an entity set.', 'dbms'),
(20, 'What is Weak Entity set?', 'An entity set may not have sufficient attributes to form a primary key, and its primary key compromises of its partial key and primary key of its parent entity, then it is said to be Weak Entity set.', 'dbms'),
(21, 'What are data and information, and how are they related in a database?', 'Data is recorded facts and figures, and information is knowledge derived from data. A database stores data in such a way that information can be created.', 'dbms'),
(22, 'What is Enterprise Resource Planning (ERP), and what kind of a database is used in an ERP application?', 'Enterprise Resource Planning (ERP) is an information system used in manufacturing companies and includes sales, inventory, production planning, purchasing and other business functions. An ERP system typically uses a multiuser database.', 'dbms'),
(23, 'What is a DBMS?', 'DBMS stands for Database Management System. A DBMS receives requests from applications and translates those requests into actions on a specific database. A DBMS processes SQL statements or uses other functionality to create, process and administer databases.', 'dbms'),
(24, 'Why is a database considered to be \"self-describing\"?', 'In addition to the users\' data, a database contains a description of its own structure. This descriptive data is called \"metadata.\"', 'dbms'),
(25, 'Who is E.F. Codd, and why is he significant in the development of modern database systems?', 'While working at IBM, E.F. Codd created the relational database model. A paper he published in 1970 presented his ideas to the world at large. His work is the foundation for most of the DBMSs currently in use, and thus forms the basis for database systems as we know and use them today.', 'dbms'),
(26, 'What is SQL, and why is it important?', 'SQL stands for Structured Query Language, and is the most important data processing language in use today. It is not a complete programming language like Java or C#, but a data sublanguage used for creating and processing database data and metadata. All DBMS products today use SQL.', 'dbms'),
(27, 'Write an SQL SELECT statement to display all the columns of the STUDENT table but only those rows where the Grade column is greater than or equal to 90.', 'SELECT * FROM STUDENT WHERE Grade >= 90;', 'dbms'),
(28, 'Name and briefly describe the five SQL built-in functions.', 'COUNT: computes the number of rows in a table. SUM: totals numeric columns. AVG: computes the average value. MAX: obtains the maximum value of a column in a table. MIN: obtains the minimum value of a column in a table.', 'dbms'),
(29, 'Write an SQL SELECT statement to count the number of rows in STUDENT table and display the result with the label NumStudents.', 'SELECT COUNT(*) AS NumStudents FROM STUDENT;', 'dbms'),
(30, 'What is an SQL subquery?', 'An SQL subquery is a means of querying two or more tables at the same time. The subquery itself is an SQL SELECT statement contained within the WHERE clause of another SQL SELECT statement, and separated by being enclosed in parenthesis. Some subqueries have equivalent SQL join structures, but correlated subqueries cannot be duplicated by a join..', 'dbms'),
(31, 'Discuss the alternative terminology that is used in the relational model.', 'Relations are also called tables, and sometimes by the older data processing term files. A row is known as a tuple in the relational model, but may also be referred to as a record. Finally, relational model attributes are known as table columns and sometimes as fields.', 'dbms'),
(32, 'Why are functional dependencies not equations?', 'Equations deal with numerical relationships. A functional dependency deals with the existence of a determinant relationship between attributes, regardless of whether or not there is a numerical relationship between them. Thus, if we know that there is no hot water every Wednesday, No-Hot-Water is functionally dependent on Wednesday. So, if we know it is Wednesday, then we know we will have No-Hot-Water. This is a functional dependency, but not an equation.', 'dbms'),
(33, 'What is a foreign key, and what is it used for?', 'A foreign key is used to establish relationships among relations in the relational model. Technically, a foreign key is a column (or columns) appearing in one relation that is (are) the primary key of another table. Although there may be exceptions, the values in the foreign key columns usually must correspond to values existing in the set of primary key values. This correspondence requirement is created in a database using a referential integrity constraint on the foreign key.', 'dbms'),
(34, 'What are insertion and deletion anomalies?', 'A deletion anomaly occurs when, by deleting the facts about one entity, we inadvertently delete facts about another entity; with one deletion, we lose facts about two entities. For example, if we delete the tuple for Student 001289 from a table, we may lose not only the fact that Student 001289 is in Pierce Hall, but also the fact that he has $200 left in his security deposit. An insertion anomaly happens when we encounter the restriction that we cannot insert a fact about one entity until we have an additional fact about another entity. For example, we want to store the fact that the security deposit for Pierce Hall is $300, but we cannot enter this data into the Student relation until a student registers for Pierce Hall.', 'dbms'),
(35, 'What does it mean when we say that a relation is in Boyce-Codd Normal Form (BCNF)?', 'A relation is in BCNF when every determinant in the relation is a candidate key. This means that any possible primary key can determine all other attributes in the relation. Attributes may not be determined by non-candidate key attributes or part of a composite candidate key. Thus it is said \"I swear to construct my tables so that all nonkey columns are dependent on the key, the whole key and nothing but the key, so help me Codd!\"', 'dbms'),
(36, 'You have been given a set of tables with data and asked to create a new database to store them. When you examine the data values in the tables, what are you looking for?', '(1) Multivalued dependencies, (2) Functional dependencies, (3) Candidate keys, (4) Primary keys and (5) Foreign keys.', 'dbms'),
(37, 'Why do normalized tables require more complex SQL when SQL statements are used in application programs?', 'Tables that are normalized contain data that has been distributed among the tables, but which may need to be recombined to answer queries from an application. To recombine the data, the programmer will have to use subqueries and/or joins. These SQL structures are more complex to write than a simple SELECT statement.', 'dbms'),
(38, 'What is the multivalue, multicolumn problem? Include an example not used in the text.', 'The multivalue, multicolumn problem occurs when a table is designed to include multiple columns that hold variations of one type of attribute data. One example is where boat owners have the names of their boats stored as BOAT_01, BOAT_02 and BOAT_03.', 'dbms'),
(39, 'Why is the multivalue, multicolumn problem another form of the multivalued dependency problem?', 'Both problems try to store multiple values on an attribute in a table. In the multivalue, multiplecolumn problem, the multiple values are stored in different columns. In the mutlivalued dependency problem the multiple values are stored in different rows. In both cases, the solution is the same: store the multiple values in a separate table.', 'dbms'),
(40, 'What is the inconsistent values problem? Include an example not used in the text.', 'The inconsistent values problem occurs when different users or data sources use slightly different forms of the same data value. One example is where automobiles are specified as \"Ford, 2-door, Red\" in one cell and \"Red Ford 2-door\" in another.', 'dbms'),
(41, 'Explain the relationship between entity, entity class, and entity instance.', 'An entity is something that can be identified in the users\' work environment, something that the users want to track. Entities of a given type are grouped into entity classes. An entity instance is the representation of a particular entity.', 'dbms'),
(42, 'Explain the difference between attributes and identifiers.', 'Entities have attributes. Attributes are properties that describe the entity\'s characteristics. Entity instances have identifiers. Identifiers are attributes that name, or identify, entity instances.', 'dbms'),
(43, 'Name and describe three types of binary relationships.', '1:1 - a single entity instance of one type is related to a single-entity instance of another type. 1:N - a single entity instance of one type is related to many-entity instances of another type. M:N - many-entity instances of one type relate to many-entity instances of another type.', 'dbms'),
(44, 'What is the archtetype/instance pattern?', 'The archetype/instance pattern occurs when one entity tracks occurrences of another entity. A common example is the relationship between CLASS and SECTION, where the actual occurrence of a class happens when students register for a SECTION of that CLASS. The archetype/instance pattern is implemented as an ID-dependent relationship.', 'dbms'),
(45, 'What is a recursive relationship? Give an example not used in the text.', 'A recursive relationship is a relationship between an entity and itself. For example, given the entity PERSON, a recursive relationship could be used to show a PERSON and his or her SIBLINGs (brothers and sisters).', 'dbms'),
(46, 'What are the steps for transforming an entity into a table?', 'The steps are: (1) specify the primary key, (2) specify candidate keys, (3) specify column properties including null status, data type, default value (if any), and data constraints (if any), and (4) verifying normalization.', 'dbms'),
(47, 'Define a surrogate key, describe the ideal primary key and explain how surrogate keys meet this ideal.', 'The ideal primary key is short, numeric and fixed. A surrogate key is a unique, DBMS-supplied identifier intended to be used as the primary key of a table. Further, the DBMS will not allow the value of a surrogate key to be changed. The values of a surrogate key have no meaning to the users and are usually hidden on forms and reports. By design, they are short, numeric and fixed and thus meet the definition of the ideal primary key', 'dbms'),
(48, 'Define and discuss data constraints.', 'Data constraints on a column are the limits put on the values the data can have. There are four types of data constraints: (1) domain constraints, which define a limited set of values for the column, (2) range constraints, which specify that the values must fall within a certain range, (3) intrarelation constraints, which define what values the column can have based on values of other columns in the same table, and (4) interrelation constraints, which define values the column can have based on values of columns in other tables.', 'dbms');

-- --------------------------------------------------------

--
-- Table structure for table `deep_learning_questions`
--

CREATE TABLE `deep_learning_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deep_learning_questions`
--

INSERT INTO `deep_learning_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is deep learning?', 'Deep learning is a subset of machine learning that uses neural networks with multiple layers to learn from large amounts of data.'),
(2, 'What are artificial neural networks (ANNs)?', 'Artificial neural networks are computing models inspired by the structure and function of the human brain.'),
(3, 'What is the difference between deep learning and machine learning?', 'Deep learning uses multiple layers in neural networks to automatically extract features, while traditional machine learning often requires manual feature extraction.'),
(4, 'What are the main components of a neural network?', 'The main components are input layers, hidden layers, output layers, weights, biases, and activation functions.'),
(5, 'What is a perceptron?', 'A perceptron is the simplest type of artificial neural network used for binary classification tasks.'),
(6, 'What is an activation function?', 'An activation function introduces non-linearity to the neural network, enabling it to learn complex patterns.'),
(7, 'What are some common activation functions used in deep learning?', 'Common activation functions include ReLU, Sigmoid, Tanh, and Softmax.'),
(8, 'What is a convolutional neural network (CNN)?', 'A CNN is a type of neural network designed for processing structured grid data like images.'),
(9, 'What is the role of pooling layers in CNNs?', 'Pooling layers reduce the dimensionality of feature maps and improve computational efficiency.'),
(10, 'What is a recurrent neural network (RNN)?', 'An RNN is a neural network designed for sequential data, where previous outputs influence current computations.'),
(11, 'What is the vanishing gradient problem?', 'The vanishing gradient problem occurs when gradients become too small, making it difficult for deep networks to learn.'),
(12, 'How does batch normalization help deep learning models?', 'Batch normalization normalizes inputs to each layer, improving training stability and speed.'),
(13, 'What is a dropout layer?', 'A dropout layer randomly drops units during training to prevent overfitting.'),
(14, 'What is transfer learning?', 'Transfer learning is a technique where a pre-trained model is used as a starting point for a new task.'),
(15, 'What is an autoencoder?', 'An autoencoder is a neural network used for unsupervised learning, primarily for feature extraction and noise reduction.'),
(16, 'What is a Generative Adversarial Network (GAN)?', 'A GAN consists of two neural networks, a generator and a discriminator, competing against each other to create realistic data.'),
(17, 'What is the difference between supervised and unsupervised deep learning?', 'Supervised learning requires labeled data, while unsupervised learning finds patterns in unlabeled data.'),
(18, 'What is backpropagation?', 'Backpropagation is the algorithm used to update neural network weights based on error gradients.'),
(19, 'What is an optimizer in deep learning?', 'An optimizer is an algorithm that updates network weights to minimize loss, such as SGD, Adam, and RMSprop.'),
(20, 'What is an embedding layer?', 'An embedding layer converts categorical variables into dense vector representations.'),
(21, 'What is a loss function?', 'A loss function measures how well a model\'s predictions match the actual target values.'),
(22, 'What is overfitting in deep learning?', 'Overfitting occurs when a model learns noise instead of general patterns, leading to poor generalization.'),
(23, 'How can you prevent overfitting in deep learning models?', 'Techniques include dropout, regularization (L1/L2), data augmentation, and using more training data.'),
(24, 'What is the difference between LSTM and GRU?', 'Both are types of RNNs, but GRUs are simpler and computationally faster than LSTMs.'),
(25, 'What is reinforcement learning?', 'Reinforcement learning is a type of learning where an agent learns by interacting with the environment through rewards and penalties.'),
(26, 'What is attention mechanism in deep learning?', 'The attention mechanism allows models to focus on relevant parts of input sequences, improving performance on tasks like NLP.'),
(27, 'What is a transformer model?', 'A transformer is a deep learning architecture that uses self-attention to process sequences efficiently, commonly used in NLP.'),
(28, 'What is BERT in deep learning?', 'BERT (Bidirectional Encoder Representations from Transformers) is a pre-trained NLP model that understands context from both directions.'),
(29, 'What is zero-shot learning?', 'Zero-shot learning allows a model to recognize new categories without explicit training examples.'),
(30, 'What is federated learning?', 'Federated learning is a distributed learning technique where models are trained on decentralized data without sharing it.');

-- --------------------------------------------------------

--
-- Table structure for table `django_questions`
--

CREATE TABLE `django_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'django'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_questions`
--

INSERT INTO `django_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is Django?', 'Django is an open-source web application framework written in Python. Developed in a fast-paced newsroom, Django enables the rapid development of easily maintainable and secure websites. It’s a favorite of newbies and advanced programmers alike.', 'django'),
(2, 'Is Django named after that Quentin Tarantino movie?', 'No, Django is named after Django Reinhardt, a jazz guitarist from the 1930s to the early 1950s who is considered one of the best guitarists of all time.', 'django'),
(3, 'What are Django\'s most prominent features?', 'Programmers like Django mostly for its convenient features like: Optimized for SEO, Extremely fast, A loaded framework that features authentications, content administrations and RSS feeds, Exceptionally scalable to meet the heaviest traffic demand, Highly secure, Versatility, enabling you to create many different types of websites.', 'django'),
(4, 'Can you name some companies that use Django?', 'Some of the more well-known companies that use Django include: DISCUS, Instagram, Mozilla Firefox, Pinterest, Reddit, YouTube.', 'django'),
(5, 'Why do web developers prefer Django?', 'Web developers use Django because it: Allows code modules to be divided into logical groups, Provides an auto-generated web admin module to ease website administration, Provides a pre-packaged API for common user tasks, Enables developers to define a given function’s URL, Allows users to separate business logic from the HTML, Is written in Python, Gives you a system to define the HTML template for your web page, avoiding code duplication.', 'django'),
(6, 'What is CRUD?', 'CRUD stands for Create, Read, Update, and Delete. It’s a mnemonic framework used to remind developers on how to construct usable models when building application programming interfaces (APIs).', 'django'),
(7, 'Does Django have any drawbacks?', 'Django’s disadvantages include: Its monolithic size makes it unsuitable for smaller projects, Everything hinges on Django’s ORM (Object-Relational Mapping), Everything must be explicitly defined due to a lack of convention.', 'django'),
(8, 'What does Django architecture look like?', 'Django architecture consists of: Models, Views, Templates, and Controller. Models describe the database schema, Views control what a user sees, Templates control the page layout, and the Controller consists of Django framework and URL parsing.', 'django'),
(9, 'Explain the Django project directory structure.', 'Django organizes the sections of the web application using a directory structure by generating a project and an app folder. This keeps the project DRY (Don\'t Repeat Yourself) and clean.', 'django'),
(10, 'What are models in Django?', 'A Django model is a built-in feature of Django that allows you to construct tables, fields, and constraints.', 'django'),
(11, 'What are the views in Django?', 'Django views are Python functions similar to HTML documents and accept HTTP requests and return HTTP responses.', 'django'),
(12, 'What is Django ORM?', 'Django ORM is a database abstraction API to interact with database models, allowing actions like add, delete, modify, and query objects.', 'django'),
(13, 'Define static files and explain their uses.', 'Static files in a web app do not change, such as CSS, JavaScript, or pictures. They are served by the local Django web server for development with minimal configuration.', 'django'),
(14, 'What are Django-admin and manage.py and explain their commands?', '“Django-admin” is the command line utility of Django for administrative tasks. manage.py is created automatically in every Django project and performs the same functions as Django-admin but modifies the DJANGO SETTINGS MODULE environment variable.', 'django'),
(15, 'What is Jinja templating?', 'Jinja is a modern, designer-friendly Python templating language inspired by Django templates and frequently used for execution.', 'django'),
(16, 'What are Django URLs?', 'In Django, URLs serve as the front door to your online application. They are configured in urls.py to control Django routing.', 'django'),
(17, 'What are the different model inheritance styles in Django?', 'In Django, there are three types of inheritance: Abstract base classes, Multi-table inheritance, and Proxy models.', 'django'),
(18, 'In Django’s context, what’s the difference between a project and an app?', 'The project covers the entire application, while an app is a module or application within the project that deals with one dedicated requirement.', 'django'),
(19, 'What’s a model in Django?', 'A model consists of all the necessary fields and attributes of your stored data and serves as the single source of information regarding your data.', 'django'),
(20, 'What are Django’s templates?', 'Django templates render information in a designer-friendly format to present to the user using the Django Template Language (DTL).', 'django'),
(21, 'Discuss Django’s Request/Response Cycle.', 'The Django server receives a request, looks for a matching URL in the URL patterns, and if found, executes the corresponding view code to send a response.', 'django'),
(22, 'What is the Django Admin interface?', 'Django\'s built-in admin interface allows developers to see and make changes to database data related to registered apps and models.', 'django'),
(23, 'How do you install Django?', 'Run the command pip install “django>=2.2,<3” on the terminal after installing Python.', 'django'),
(24, 'How do you check which version of Django that you have installed on your system?', 'Use the command \'python -m Django --version\' or visit Django\'s homepage for the latest release.', 'django'),
(25, 'What are signals in Django?', 'Signals are pieces of code containing information about what is currently going on, and they use a dispatcher to send and listen for signals.', 'django'),
(26, 'Explain user authentication in Django.', 'Django includes a user authentication system that handles users, groups, permissions, and cookie-based sessions.', 'django');

-- --------------------------------------------------------

--
-- Table structure for table `docker_questions`
--

CREATE TABLE `docker_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'docker'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `docker_questions`
--

INSERT INTO `docker_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is Docker?', 'Docker is an open-source containerization platform. It is used to automate the deployment of any application, using lightweight, portable containers.', 'docker'),
(2, 'What are Docker’s most notable features?', 'Docker’s most essential features include: \n- Application agility \n- Developer productivity \n- Easy modeling \n- Operational efficiencies \n- Placement and affinity \n- Version control', 'docker'),
(3, 'Why should anyone use Docker? What does it offer?', 'Docker gives users many incentives for adoption, such as: \n- An efficient and easy initial setup experience \n- The means to describe an application lifecycle in detail \n- Simple configuration and smooth interaction with Docker Compose \n- Complete and well-detailed documentation \n- Ability to run on a PC or enterprise IT system with equal ease', 'docker'),
(4, 'What about the opposite? Does Docker have any downsides?', 'Docker isn’t perfect. It comes with its share of drawbacks, including: \n- Lacks a storage option \n- Monitoring options are less than ideal \n- You can’t automatically reschedule inactive nodes \n- Automatic horizontal scaling setup is complicated', 'docker'),
(5, 'Name and explain the various Docker components.', 'The three main Docker components are: \n- Docker Client: Performs Docker build, pull, and run operations. \n- Docker Host: Contains Docker daemon, containers, and associated images. \n- Registry: Stores Docker images. There are public and private registries, such as Docker Hub and Docker Cloud.', 'docker'),
(6, 'What is a container?', 'Containers are deployed applications bundled with all necessary dependencies and configuration files. All elements share the same OS kernel. Since the container isn’t tied to any one IT infrastructure, it can run on a different system or the cloud.', 'docker'),
(7, 'Explain virtualization.', 'Virtualization employs software (like Hypervisor) to create a virtual version of a resource such as a server, data storage, or application. It allows a system to be divided into separate sections, each acting as a distinct system. The virtual environment is called a virtual machine.', 'docker'),
(8, 'What’s the difference between virtualization and containerization?', 'Virtualization is an abstract version of a physical machine, while containerization is the abstract version of an application.', 'docker'),
(9, 'Describe a Docker container’s lifecycle.', 'The most common lifecycle steps are: \n- Create container \n- Run container \n- Pause container \n- Unpause container \n- Start container \n- Stop container \n- Restart container \n- Kill container \n- Destroy container.', 'docker'),
(10, 'Name the essential Docker commands and what they do.', 'The most critical Docker commands are: \n- Build: Builds a Docker image file \n- Commit: Creates a new image from container changes \n- Create: Creates a new container \n- Dockerd: Launches Docker daemon \n- Kill: Kills a container.', 'docker');

-- --------------------------------------------------------

--
-- Table structure for table `dot_net_questions`
--

CREATE TABLE `dot_net_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `skills` varchar(255) DEFAULT 'dotnet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dot_net_questions`
--

INSERT INTO `dot_net_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'Can you explain the PDCA cycle and where testing fits in?', 'Software testing is an important part of the software development process. In normal software development there are four important steps, also referred to, in short, as the PDCA (Plan, Do, Check, Act) cycle. Let\'s review the four steps in detail. Plan: Define the goal and the plan for achieving that goal. Do/Execute: Depending on the plan strategy decided during the plan stage we do execution accordingly in this phase. Check: Check/Test to ensure that we are moving according to plan and are getting the desired results. Act: During the check cycle, if any issues are there, then we take appropriate action accordingly and revise our plan again. So developers and other stakeholders of the project do the \"planning and building,\" while testers do the check part of the cycle. Therefore, software testing is done in check part of the PDCA cyle.', 'dotnet'),
(2, 'What is the difference between white box, black box, and gray box testing?', 'Black box testing is a testing strategy based solely on requirements and specifications. Black box testing requires no knowledge of internal paths, structures, or implementation of the software being tested. White box testing is a testing strategy based on internal paths, code structures, and implementation of the software being tested. White box testing generally requires detailed programming skills. There is one more type of testing called gray box testing. In this we look into the \"box\" being tested just long enough to understand how it has been implemented. Then we close up the box and use our knowledge to choose more effective black box tests. The above figure shows how both types of testers view an accounting application during testing. Black box testers view the basic accounting application. While during white box testing the tester knows the internal structure of the application. In most scenarios white box testing is done by developers as they know the internals of the application. In black box testing we check the overall functionality of the application while in white box testing we do code reviews, view the architecture, remove bad code practices, and do component level testing.', 'dotnet'),
(3, 'Can you explain usability testing?', 'Usability testing is a testing methodology where the end customer is asked to use the software to see if the product is easy to use, to see the customer\'s perception and task time. The best way to finalize the customer point of view for usability is by using prototype or mock-up software during the initial stages. By giving the customer the prototype before the development start-up we confirm that we are not missing anything from the user point of view.', 'dotnet'),
(4, 'What are the categories of defects?', 'There are three main categories of defects: Wrong: The requirements have been implemented incorrectly. This defect is a variance from the given specification. Missing: There was a requirement given by the customer and it was not done. This is a variance from the specifications, an indication that a specification was not implemented, or a requirement of the customer was not noted properly. Extra: A requirement incorporated into the product that was not given by the end customer. This is always a variance from the specification, but may be an attribute desired by the user of the product. However, it is considered a defect because it\'s a variance from the existing requirements.', 'dotnet'),
(5, 'How do you define a testing policy?', 'The following are the important steps used to define a testing policy in general. But it can change according to your organization. Let\'s discuss in detail the steps of implementing a testing policy in an organization. Definition: The first step any organization needs to do is define one unique definition for testing within the organization so that everyone is of the same mindset. How to achieve: How are we going to achieve our objective? Is there going to be a testing committee, will there be compulsory test plans which need to be executed, etc?. Evaluate: After testing is implemented in a project how do we evaluate it? Are we going to derive metrics of defects per phase, per programmer, etc. Finally, it\'s important to let everyone know how testing has added value to the project?. Standards: Finally, what are the standards we want to achieve by testing? For instance, we can say that more than 20 defects per KLOC will be considered below standard and code review should be done for it.', 'dotnet'),
(6, 'On what basis is the acceptance plan prepared?', 'In any project the acceptance document is normally prepared using the following inputs. This can vary from company to company and from project to project. Requirement document: This document specifies what exactly is needed in the project from the customers perspective. Input from customer: This can be discussions, informal talks, emails, etc. Project plan: The project plan prepared by the project manager also serves as good input to finalize your acceptance test. The following diagram shows the most common inputs used to prepare acceptance test plans.', 'dotnet'),
(7, 'What is configuration management?', 'Configuration management is the detailed recording and updating of information for hardware and software components. When we say components we not only mean source code. It can be tracking of changes for software documents such as requirement, design, test cases, etc. When changes are done in adhoc and in an uncontrolled manner chaotic situations can arise and more defects injected. So whenever changes are done it should be done in a controlled fashion and with proper versioning. At any moment of time we should be able to revert back to the old version. The main intention of configuration management is to track our changes if we have issues with the current system. Configuration management is done using baselines.', 'dotnet'),
(8, 'How does a coverage tool work?', 'While doing testing on the actual product, the code coverage testing tool is run simultaneously. While the testing is going on, the code coverage tool monitors the executed statements of the source code. When the final testing is completed we get a complete report of the pending statements and also get the coverage percentage.', 'dotnet'),
(9, 'Which is the best testing model?', 'In real projects, tailored models are proven to be the best, because they share features from The Waterfall, Iterative, Evolutionary models, etc., and can fit into real life time projects. Tailored models are most productive and beneficial for many organizations. If it\'s a pure testing project, then the V model is the best.', 'dotnet'),
(10, 'What is the difference between a defect and a failure?', 'When a defect reaches the end customer it is called a failure and if the defect is detected internally and resolved it\'s called a defect.', 'dotnet'),
(11, 'Should testing be done only after the build and execution phases are complete?', 'In traditional testing methodology testing is always done after the build and execution phases. But that\'s a wrong way of thinking because the earlier we catch a defect, the more cost effective it is. For instance, fixing a defect in maintenance is ten times more costly than fixing it during execution. In the requirement phase we can verify if the requirements are met according to the customer needs. During design we can check whether the design document covers all the requirements. In this stage we can also generate rough functional data. We can also review the design document from the architecture and the correctness perspectives. In the build and execution phase we can execute unit test cases and generate structural and functional data. And finally comes the testing phase done in the traditional way. i.e., run the system test cases and see if the system works according to the requirements. During installation we need to see if the system is compatible with the software. Finally, during the maintenance phase when any fixes are made we can retest the fixes and follow the regression testing. Therefore, Testing should occur in conjunction with each phase of the software development.', 'dotnet'),
(12, 'Are there more defects in the design phase or in the coding phase?', 'The design phase is more error prone than the execution phase. One of the most frequent defects which occur during design is that the product does not cover the complete requirements of the customer. Second is wrong or bad architecture and technical decisions make the next phase, execution, more prone to defects. Because the design phase drives the execution phase it\'s the most critical phase to test. The testing of the design phase can be done by good review. On average, 60% of defects occur during design and 40% during the execution phase.', 'dotnet'),
(13, 'What group of teams can do software testing?', 'When it comes to testing everyone in the world can be involved right from the developer to the project manager to the customer. But below are different types of team groups which can be present in a project. Isolated test team Outsource - we can hire external testing resources and do testing for our project. Inside test team Developers as testers QA/QC team.', 'dotnet'),
(14, 'What impact ratings have you used in your projects?', 'Normally, the impact ratings for defects are classified into three types: Minor: Very low impact but does not affect operations on a large scale. Major: Affects operations on a very large scale. Critical: Brings the system to a halt and stops the show.', 'dotnet'),
(15, 'Does an increase in testing always improve the project?', 'No an increase in testing does not always mean improvement of the product, company, or project. In real test scenarios only 20% of test plans are critical from a business angle. Running those critical test plans will assure that the testing is properly done. The following graph explains the impact of under testing and over testing. If you under test a system the number of defects will increase, but if you over test a system your cost of testing will increase. Even if your defects come down your cost of testing has gone up.', 'dotnet'),
(16, 'What\'s the relationship between environment reality and test phases?', 'Environment reality becomes more important as test phases start moving ahead. For instance, during unit testing you need the environment to be partly real, but at the acceptance phase you should have a 100% real environment, or we can say it should be the actual real environment. The following graph shows how with every phase the environment reality should also increase and finally during acceptance it should be 100% real.', 'dotnet'),
(17, 'Define variable and constant.', 'A variable can be defined as a meaningful name that is given to a data storage location in the computer memory that contains a value. Every variable associated with a data type determines what type of value can be stored in the variable, for example an integer, such as 100, a decimal, such as 30.05, or a character, such as \'A\'. You can declare variables by using the following syntax: <Data_type> <variable_name> ; A constant is similar to a variable except that the value, which you assign to a constant, cannot be changed, as in case of a variable. Constants must be initialized at the same time they are declared. You can declare constants by using the following syntax: const int interestRate = 10;', 'dotnet'),
(18, 'What is a data type? How many types of data types are there in .NET ?', 'A data type is a data storage format that can contain a specific type or range of values. Whenever you declare variables, each variable must be assigned a specific data type. Some common data types include integers, floating point, characters, and strings. The following are the two types of data types available in .NET: Value type - Refers to the data type that contains the data. In other words, the exact value or the data is directly stored in this data type. It means that when you assign a value type variable to another variable, then it copies the value rather than copying the reference of that variable. When you create a value type variable, a single space in memory is allocated to store the value (stack memory). Primitive data types, such as int, float, and char are examples of value type variables. Reference type - Refers to a data type that can access data by reference. Reference is a value or an address that accesses a particular data by address, which is stored elsewhere in memory (heap memory). You can say that reference is the physical address of data, where the data is stored in memory or in the storage device. Some built-in reference types variables in .Net are string, array, and object.', 'dotnet'),
(19, 'Mention the two major categories that distinctly classify the variables of C# programs.', 'Variables that are defined in a C# program belong to two major categories: value type and reference type . The variables that are based on value type contain a value that is either allocated on a stack or allocated in-line in a structure. The variables that are based on reference types store the memory address of a variable, which in turn stores the value and are allocated on the heap. The variables that are based on value types have their own copy of data and therefore operations done on one variable do not affect other variables. The reference-type variables reflect the changes made in the referring variables. Predict the output of the following code segment: int x = 42; int y = 12; int w; object o; o = x; w = y * (int)o; Console.WriteLine(w); /* The output of the code is 504. */', 'dotnet'),
(20, 'Which statement is used to replace multiple if-else statements in code.', 'In Visual Basic, the Select-Case statement is used to replace multiple If - Else statements and in C#, the switch-case statement is used to replace multiple if-else statements.', 'dotnet'),
(21, 'What is the syntax to declare a namespace in .NET?', 'In .NET, the namespace keyword is used to declare a namespace in the code. The syntax for declaring a namespace in C# is: namespace UserNameSpace; The syntax for declaring a namespace in VB is: Namespace UserNameSpace', 'dotnet'),
(22, 'What is the difference between constants and read-only variables that are used in programs?', 'Constants perform the same tasks as read-only variables with some differences. The differences between constants and read-only are Constants : Constants are dealt with at compile-time. Constants supports value-type variables. Constants should be used when it is very unlikely that the value will ever change. Read-only : Read-only variables are evaluated at runtime. Read-only variables can hold reference type variables. Read-only variables should be used when run-time calculation is required.', 'dotnet'),
(23, 'Differentiate between the while and for loop in C#.', 'The while and for loops are used to execute those units of code that need to be repeatedly executed, unless the result of the specified condition evaluates to false. The only difference between the two is in their syntax. The for loop is distinguished by setting an explicit loop variable.', 'dotnet'),
(24, 'What is an identifier?', 'Identifiers are northing but names given to various entities uniquely identified in a program. The name of identifiers must differ in spelling or casing. For example, MyProg and myProg are two different identifiers. Programming languages, such as C# and Visual Basic, strictly restrict the programmers from using any keyword as identifiers. Programmers cannot develop a class whose name is public , because, public is a keyword used to specify the accessibility of data in programs.', 'dotnet'),
(25, 'What does a break statement do in the switch statement?', 'The switch statement is a selection control statement that is used to handle multiple choices and transfer control to the case statements within its body. The following code snippet shows an example of the use of the switch statement in C#: switch(choice) { case 1: console.WriteLine(\"First\"); break; case 2: console.WriteLine(\"Second\"); break; default: console.WriteLine(\"Wrong choice\"); break; } In switch statements, the break statement is used at the end of a case statement. The break statement is mandatory in C# and it avoids the fall through of one case statement to another.', 'dotnet'),
(26, 'Explain keywords with example.', 'Keywords are those words that are reserved to be used for a specific task. These words cannot be used as identifiers. You cannot use a keyword to define the name of a variable or method. Keywords are used in programs to use the features of object-oriented programming. For example, the abstract keyword is used to implement abstraction and the inherits keyword is used to implement inheritance by deriving subclasses in C# and Visual Basic, respectively. The new keyword is universally used in C# and Visual Basic to implement encapsulation by creating objects.', 'dotnet'),
(27, 'Briefly explain the characteristics of value-type variables that are supported in the C# programming language.', 'The variables that are based on value types directly contain values. The characteristics of value-type variables that are supported in C# programming language are as follows: All value-type variables derive implicitly from the System.ValueType class You cannot derive any new type from a value type Value types have an implicit default constructor that initializes the default value of that type The value type consists of two main categories: Structs - Summarizes small groups of related variables. Enumerations - Consists of a set of named constants.', 'dotnet'),
(28, 'Give the syntax of using the while loop in a C# program.', 'The syntax of using the while loop in C# is: while(condition) //condition { //statements } You can find an example of using the while loop in C#: int i = 0; while(i < 5) { Console.WriteLine(\"{0} \", i); i++; } The output of the preceding code is: 0 1 2 3 4 .', 'dotnet'),
(29, 'What is object-oriented programming (OOP)?', 'OOP is a technique to develop logical modules, such as classes that contain properties, methods, fields, and events. An object is created in the program to represent a class. Therefore, an object encapsulates all the features, such as data and behavior that are associated to a class. OOP allows developers to develop modular programs and assemble them as software. Objects are used to access data and behaviors of different software modules, such as classes, namespaces, and sharable assemblies. .NET Framework supports only OOP languages, such as Visual Basic .NET, Visual C#, and Visual C++.', 'dotnet'),
(30, 'What is a class?', 'A class describes all the attributes of objects, as well as the methods that implement the behavior of member objects. It is a comprehensive data type, which represents a blue print of objects. It is a template of object. A class can be defined as the primary building block of OOP. It also serves as a template that describes the properties, state, and behaviors common to a particular group of objects. A class contains data and behavior of an entity. For example, the aircraft class can contain data, such as model number, category, and color and behavior, such as duration of flight, speed, and number of passengers. A class inherits the data members and behaviors of other classes by extending from them.', 'dotnet'),
(31, 'What is an object?', 'They are instance of classes. It is a basic unit of a system. An object is an entity that has attributes, behavior, and identity. Attributes and behavior of an object are defined by the class definition.', 'dotnet'),
(32, 'What is the relationship between a class and an object?', 'A class acts as a blue-print that defines the properties, states, and behaviors that are common to a number of objects. An object is an instance of the class. For example, you have a class called Vehicle and Car is the object of that class. You can create any number of objects for the class named Vehicle , such as Van , Truck , and Auto . The new operator is used to create an object of a class. When an object of a class is instantiated, the system allocates memory for every data member that is present in the class.', 'dotnet'),
(33, 'Explain the basic features of OOPs.', 'The following are the four basic features of OOP: Abstraction - Refers to the process of exposing only the relevant and essential data to the users without showing unnecessary information. Polymorphism - Allows you to use an entity in multiple forms. Encapsulation - Prevents the data from unwanted access by binding of code and data in a single unit called object. Inheritance - Promotes the reusability of code and eliminates the use of redundant code. It is the property through which a child class obtains all the features defined in its parent class. When a class inherits the common properties of another class, the class inheriting the properties is called a derived class and the class that allows inheritance of its common properties is called a base class.', 'dotnet'),
(34, 'What is the difference between arrays and collection?', 'Array : You need to specify the size of an array at the time of its declaration. It cannot be resized dynamically. The members of an array should be of the same data type. Collection : The size of a collection can be adjusted dynamically, as per the user\'s requirement. It does not have fixed size. Collection can have elements of different types.', 'dotnet'),
(35, 'What are collections and generics?', 'A collection can be defined as a group of related items that can be referred to as a single unit. The System.Collections namespace provides you with many classes and interfaces. Some of them are - ArrayList , List , Stack , ICollection , IEnumerable , and IDictionary . Generics provide the type-safety to your class at the compile time. While creating a data structure, you never need to specify the data type at the time of declaration. The System.Collections.Generic namespace contains all the generic collections.', 'dotnet'),
(36, 'How can you prevent your class to be inherited further?', 'You can prevent a class from being inherited further by defining it with the sealed keyword.', 'dotnet'),
(37, 'What is the index value of the first element in an array?', 'In an array, the index value of the first element is 0 (zero).', 'dotnet'),
(38, 'Can you specify the accessibility modifier for methods inside the interface?', 'All the methods inside an interface are always public , by default. You cannot specify any other access modifier for them.', 'dotnet'),
(39, 'Is it possible for a class to inherit the constructor of its base class?', 'No, a class cannot inherit the constructor of its base class.', 'dotnet'),
(40, 'How is method overriding different from method overloading?', 'Overriding involves the creation of two or more methods with the same name and same signature in different classes (one of them should be parent class and other should be child). Overloading is a concept of using a method at different places with same name and different signatures within the same class.', 'dotnet'),
(41, 'What is deployment?', 'Deployment refers to the distribution of an application among various end-users. It is a process that makes software available for use by just installing it on the client computer.', 'dotnet'),
(42, 'List different ways of deployment that are supported by .NET Framework 4.0.', 'Windows Installer ClickOnce XCOPY Copy Web Site Publish Web Site tool', 'dotnet'),
(43, 'What is XCOPY?', 'XCOPY enables you to deploy an application by copying the application directory and all subdirectories to the target computer and then executing the application on the client. The application starts executing on the target computer by using its assembly file, which is a self-description file that contains all the information about the application. The XCOPY deployment does not make any impact on the target system while configuring the components and registering entries, and is therefore known as zero-impact installation.', 'dotnet'),
(44, 'Does XCOPY copy the hidden and system files?', 'No. By default, XCOPY excludes the hidden and system files. However, you can include the hidden and system files using the /h switch.', 'dotnet'),
(45, 'Why do you use Windows Installer?', 'The Windows Installer deployment technique allows you to deploy Windows-based and Web applications by creating a Windows Installer Package. The installer package has an extension of .msi and it contains the application, any dependent files, registry entries, and the rest. The installer package can then be distributed to various end-users by simply copying it on the target computers. The end-users can then run the installer package to install the application anywhere in their computers. The installation takes place using the installation wizard; therefore, the users can easily install the application on their system. Once your application is installed on the target computer, end-users can open the application from the installed location.', 'dotnet'),
(46, 'Can you deploy an ASP.NET Web application project using the Copy Web Site option?', 'No. The Copy Web Site option can only be used to deploy the Web sites.', 'dotnet'),
(47, 'How can you determine whether you should deploy the application or publish the application?', 'If you want to host the application on a shared hosting environment, you should use publishing; whereas, if you want to create a Web application that is downloaded from a Web site, you should deploy the application to create a setup.exe file.', 'dotnet'),
(48, 'How can you deploy an ASP.NET Web application?', 'You can deploy an ASP.NET Web application using either the Windows Installer deployment or ClickOnce deployment technique.', 'dotnet'),
(49, 'What is Application Cache?', 'When a ClickOnce application is installed locally or hosted online, it is stored in the ClickOnce application cache of the client computer. The ClickOnce application cache is a set of hidden directories placed under the Local Settings directory of the current user\'s Documents and Settings folder. The application cache contains all the application files, assemblies, configuration files, application and user settings, and data directory. In case the ClickOnce applications are hosted online, the size of the ClickOnce application cache gets limited to a specified amount; whereas, the installed applications do not restrict to the cache size limitation. The cache storage quota is responsible to determine the size of the application cache.', 'dotnet'),
(50, 'What are the enhancements in ClickOnce deployment in .NET 4.0?', 'In .NET 4.0, the ClickOnce deployment technology is enhanced with the following features: Support for .NET Framework 4.0 version - Creates applications by using Visual Studio 2010 that can target .NET Framework 4.0 and its new features. Support for multiple versions of the .NET Framework - Creates applications that are compatible with multiple versions of the .NET Framework. You can specify the target framework for an application as .NET Framework 3.5 or .NET Framework 4 while creating the application. Enhanced logging feature - Stores logging information that includes various parameters passed to the ClickOnce runtime, the browser settings, and ClickOnce security options. Custom Installer and User Interface - Allows you to create a custom graphical user interface for installing and updating the .exe applications. In addition, the custom installer can have custom dialog boxes for security and maintenance operations.', 'dotnet'),
(51, 'What is the difference between deploying and publishing an application?', 'In deployment, you can create a new setup and deployment project. In this project, you can add the project output and create a setup.exe file. After creating an executable file, you need to login into the server and execute the setup.exe file to install the application. On the other hand, in publishing, you need to right-click the application in the Solution Explorer and select Publish to publish the application. Then, you specify a location where the application is to be published. The users can then install the application from the location where you have published it and run locally even when the computer is offline.', 'dotnet'),
(52, 'What do you mean by Merge Module projects?', 'Merge Module projects are used to package the files and components that are shared between multiple applications. The Merge Module project file contains the .msm extension. The .msm file includes files, resources, registry entries, and setup logic. This file is merged with a Windows installer ( .msi ) file to correctly install the shared files. If a single merge module is used by more than one application, then you need to add that merge module in the package only once.', 'dotnet'),
(53, 'What is an assembly?', 'Assemblies are the basic building blocks required for any application to function in the .NET realm. They are partially compiled code libraries that form the fundamental unit of deployment, versioning, activation scoping, reuse, and security. Typically, assemblies provide a collection of types and resources that work together to form a logical unit of functionality. They are the smallest deployable units of code in .NET. Compared to the executable files assemblies are far more reliable, more secure, and easy to manage. An assembly contains a lot more than the Microsoft Intermediate Language (MSIL) code that is compiled and run by the Common Language Runtime (CLR). In other words, you can say that an assembly is a set of one or more modules and classes compiled in MSIL, and metadata that describes the assembly itself, as well as the functionalities of the assembly classes.', 'dotnet'),
(54, 'Name the different components of an assembly.', 'An assembly is a logical unit that is made up of the following four different types of components: Assembly manifest MSIL source code Type metadata Resources', 'dotnet'),
(55, 'What are the different types of assemblies? Explain them in detail.', 'The following are the two types of assemblies: Private Assembly - Refers to the assembly that is used by a single application. Private assemblies are kept in a local folder in which the client application has been installed. Public or Shared Assembly - Refers to the assembly that is allowed to be shared by multiple applications. A shared assembly must reside in Global Assembly Cache (GAC) with a strong name assigned to it. For example, imagine that you have created a DLL containing information about your business logic. This DLL can be used by your client application. In order to run the client application, the DLL must be included in the same folder in which the client application has been installed. This makes the assembly private to your application. Now suppose that the DLL needs to be reused in different applications. Therefore, instead of copying the DLL in every client application folder, it can be placed in the global assembly cache using the GAC tool. These assemblies are called shared assemblies.', 'dotnet'),
(56, 'Can one DLL file contain the compiled code of more than one .NET language?', 'No, a DLL file can contain the compiled code of only one programming language.', 'dotnet'),
(57, 'What is the maximum number of classes that can be contained in a DLL file?', 'There is no limit to the maximum number of classes that can be contained in a DLL file.', 'dotnet'),
(58, 'What is a satellite assembly?', 'Satellite assemblies are assemblies that are used to deploy language and culture specific resources for an application. In an application, a separate product ID is assigned to each language and a satellite assembly is installed in a language specific sub-directory.', 'dotnet'),
(59, 'Is versioning applicable to private assemblies?', 'No, versioning is not applicable to private assemblies as these assemblies reside in their individual folders. Versioning can be applied to GAC only.', 'dotnet'),
(60, 'What is metadata?', 'An assembly metadata describes every data type and member defined in the code. It stores the description of an assembly, such as name, version, culture, public key of an assembly along with the types exported, other assemblies dependent on this assembly, and security permissions needed to run the application. In addition, it stores the description of types, such as the name, visibility, base class, interfaces implemented, and members, such as methods, fields, properties, events, and nested types. It also stores attributes. Metadata is stored in binary format. Therefore, metadata of an assembly is sharable among applications that execute on various platforms. It can also be exported to other applications to give information about the services and various features of an application.', 'dotnet'),
(61, 'What is cloud computing?', 'The cloud computing is the computing which is completely based on the Internet. It can also be defined as the next stage in the evolution of the Internet. The cloud computing uses the cloud (Internet) that provides the way to deliver the services whenever and wherever the user of the cloud needs. Companies use the cloud computing to fulfill the needs of their customers, partners, and providers. The cloud computing includes vendors, partners, and business leaders as the three major contributors. The vendors are the one who provide applications and their related technology, infrastructure, hardware, and integration. The partners are those who offer cloud services demand and provide support service to the customers. The business leaders are the ones who use or evaluate the cloud service provided by the partners. The cloud computing enables the companies to treat their resources as a pool and not as independent resources.', 'dotnet'),
(62, 'What is a cloud?', 'A cloud is a combination of hardware, networks, storage, services, and interfaces that helps in delivering computing as a service. It has broadly three users which are end user, business management user, and cloud service provider. The end user is the one who uses the services provided by the cloud. The business management user in the cloud takes the responsibility of the data and the services provided by the cloud. The cloud service provider is the one who takes care or is responsible for the maintenance of the IT assets of the cloud. The cloud acts as a common center for its users to fulfill their computing needs.', 'dotnet'),
(63, 'What are the basic characteristics of cloud computing?', 'The four basic characteristics of cloud computing are given as follows: Elasticity and scalability. Self-service provisioning and automatic de-provisioning. Standardized interfaces. Billing self-service based usage model.', 'dotnet'),
(64, 'What is a Cloud Service?', 'A cloud service is a service that is used to build cloud applications. This service provides the facility of using the cloud application without installing it on the computer. It reduces the maintenance and support of the application as compared to those applications that are not developed using the cloud service. The different kinds of users can use the application from the cloud service, which may be public or private application.', 'dotnet'),
(65, 'What are main features of cloud services?', 'Some important features of the cloud service are given as follows: Accessing and managing the commercial software. Centralizing the activities of management of software in the Web environment. Developing applications that are capable of managing several clients. Centralizing the updating feature of software that eliminates the need of downloading the upgrades.', 'dotnet'),
(66, 'How many types of deployment models are used in cloud?', 'There are 4 types of deployment models used in cloud: Public cloud Private cloud Community cloud Hybrid cloud', 'dotnet'),
(67, 'What is the AppFabric component?', 'The AppFabric component is used to create access control and distribute messages across clouds and enterprises. It has a service-oriented architecture, and can be considered as the backbone of the Windows Azure platform. It provides connectivity and messaging among distributed applications. It also has the capabilities of integrating the applications and the business processes between cloud services and also between cloud services and global applications. The AppFabric component provides a development environment that is integrated with Visual Studio 2010.The Windows Communication Foundation (WCF) services built in VS 2010 can be published on cloud from the Visual Studio design environment. The two important services of AppFabric are as follows: Access Control Service (ACS) - Allows rules-driven and claims-based access control for distributed applications. These claims-based rules and authorization roles can be defined in the cloud for accessing on-premise and cloud services. The claim can be a user or application attribute, which the service application expects, such as e-mail address, phone number, password, and role, for appropriate access control. When any application wants to use the Web service, it sends the required claims to ACS for requesting a token. ACS converts the input claims into output claims by following the rules of mapping. These rules are created during the configuration of ACS. The ACS issues a token containing the output claims for the consumer application. This application uses this token in the request header and sends to the Web service. This service validates the claims in the token and gives suitable access to the user. Service bus - Provides messaging between cross-enterprise and cross-cloud scenarios. It provides publish/subscribe, point-to-point, and queues message patterns for exchange of messages across distributed applications in the cloud. It integrates with the Access Control service to establish secure relay and communication.', 'dotnet'),
(68, 'Why does an organization need to manage the workloads?', 'The workload can be defined as an independent service or a set of code that can be executed. It can be everything from a data-intensive workload to storage or a transaction processing workload and does not rely upon the outside elements. The workload can be considered as a small or complete application. The organization manages workloads because of the following reasons: To know how their applications are running. To know what functions they are performing. To know the charges of the individual department according to the use of the service.', 'dotnet'),
(69, 'Which services are provided by Window Azure operating system?', 'Windows Azure provides three core services which are given as follows: Compute Storage Management', 'dotnet'),
(70, 'Explain hybrid and community cloud.', 'The hybrid cloud consists of multiple service providers. This model integrates various cloud services for Hybrid Web hosting. It is basically a combination of private and public cloud features. It is used by the company when a company has requirements for both the private and public clouds. Consider an example when an organization wants to implement the SaaS (Software as a Service) application throughout the company. The implementation requires security that can be provided by the private cloud used inside the firewall. The additional security can be provided by the VPN on requirement. Now, the organization has both the private and public cloud features. The community cloud provides a number of benefits, such as privacy and security. This model, which is quite expensive, is used when the organizations having common goals and requirements are ready to share the benefits of the cloud service.', 'dotnet'),
(71, 'Explain public and private cloud.', 'The public cloud (or external cloud) is freely available for access. You can use a public cloud to collect data of the purchasing of items from a Web site on the Internet. You can also use public cloud for the reasons, which are given as follows: Helps when an application is to be used by a large number of people, such as an e-mail application, on the Internet. Helps when you want to test the application and also needs to develop the application code. Helps when you want to implement the security for the application. Helps when you want to increase the computing capacity. Helps when you are working on the projects in collaboration. Helps when you are developing the project on an ad-hoc basis by using PaaS. The private cloud allows the usage of services by a single client on a private network. The benefits of this model are data security, corporate governance, and reliability concerns. The private cloud is used by the organization when it has a huge, well-run data center having a lot of spare capacity. It is also used when an organization is providing IT services to its clients and the data of organization is highly important. It is best suited when the requirements are critical. The characteristics of this model are given as follows: Provides capability to internal users and allows provision of services. Automates the tasks of management and provides the billing of consumption of a particular service. Offers a well-managed environment. Enables the optimization of computational resources, such as servers. Manages the workload of the hardware. Offers self-service based provisioning of hardware resources and software.', 'dotnet'),
(72, 'Give a brief introduction of Windows Azure operating system.', 'The Windows Azure operating system is used for running cloud services on the Windows Azure platform, as it includes necessary features for hosting your services in the cloud. It also provides runtime environment that consists of Web server, computational services, basic storage, queues, management services, and load balancers. The operating system provides development. Fabric for development and testing of services before their deployment on the Windows Azure in the cloud.', 'dotnet'),
(73, 'What are the advantages of cloud services?', 'Some of the advantages of cloud service are given as follows: Helps in the utilization of investment in the corporate sector; and therefore, is cost saving. Helps in the developing scalable and robust applications. Previously, the scaling took months, but now, scaling takes less time. Helps in saving time in terms of deployment and maintenance.', 'dotnet');

-- --------------------------------------------------------

--
-- Table structure for table `embeddedc_questions`
--

CREATE TABLE `embeddedc_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `embeddedc_questions`
--

INSERT INTO `embeddedc_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Embedded C?', 'Embedded C is an extension of the C programming language used for programming microcontrollers and embedded systems.'),
(2, 'How is Embedded C different from standard C?', 'Embedded C includes hardware-specific optimizations and direct access to microcontroller registers.'),
(3, 'What are the basic components of an embedded system?', 'Microcontroller, memory, input/output peripherals, timers, and communication interfaces.'),
(4, 'What is the role of a microcontroller in an embedded system?', 'A microcontroller acts as the brain of an embedded system, executing programmed instructions to control hardware.'),
(5, 'What is the use of volatile keyword in Embedded C?', 'The volatile keyword prevents the compiler from optimizing variables that may change unexpectedly.'),
(6, 'What are registers in embedded systems?', 'Registers are small memory locations in a microcontroller used for fast data access and control.'),
(7, 'What are the types of memory in embedded systems?', 'RAM, ROM, Flash memory, and EEPROM.'),
(8, 'What is an interrupt in Embedded C?', 'An interrupt is a signal that temporarily stops the execution of the main program to execute a specific task.'),
(9, 'What is the purpose of the ISR (Interrupt Service Routine)?', 'ISR is a function that executes when a specific interrupt occurs.'),
(10, 'What are the different types of interrupts?', 'Hardware interrupts and software interrupts.'),
(11, 'What is polling in embedded systems?', 'Polling is continuously checking a condition in a loop instead of relying on interrupts.'),
(12, 'What is the use of a watchdog timer?', 'A watchdog timer resets the system if it becomes unresponsive, preventing crashes.'),
(13, 'What is bit manipulation in Embedded C?', 'Bit manipulation is directly modifying bits in registers to control hardware efficiently.'),
(14, 'How do you declare a constant in Embedded C?', 'Using #define or the const keyword.'),
(15, 'What is the significance of #pragma directives in Embedded C?', 'Pragma directives provide compiler-specific instructions for optimization and hardware interaction.'),
(16, 'What is the purpose of GPIO in embedded systems?', 'GPIO (General Purpose Input/Output) is used for interfacing with external devices like LEDs and sensors.'),
(17, 'What is a UART?', 'UART (Universal Asynchronous Receiver/Transmitter) is a serial communication protocol for data transfer.'),
(18, 'What is SPI in embedded systems?', 'SPI (Serial Peripheral Interface) is a synchronous communication protocol used for high-speed data exchange.'),
(19, 'What is I2C in embedded systems?', 'I2C (Inter-Integrated Circuit) is a communication protocol for connecting multiple devices with fewer wires.'),
(20, 'What is the difference between SPI and I2C?', 'SPI is faster and uses more wires, while I2C supports multiple devices with fewer wires.'),
(21, 'What is real-time operating system (RTOS)?', 'RTOS is an operating system designed for real-time applications with strict timing constraints.'),
(22, 'What are the advantages of using RTOS in embedded systems?', 'Task scheduling, multitasking, real-time response, and better resource management.'),
(23, 'What is PWM in embedded systems?', 'PWM (Pulse Width Modulation) is a technique used to control motor speed, brightness, and other parameters.'),
(24, 'What is debouncing in embedded systems?', 'Debouncing is the process of filtering out false signals caused by mechanical switch noise.'),
(25, 'What is memory-mapped I/O?', 'Memory-mapped I/O allows direct access to hardware registers using memory addresses.'),
(26, 'What is an embedded compiler?', 'An embedded compiler converts C code into machine code specific to a microcontroller.'),
(27, 'What is the purpose of linker scripts in Embedded C?', 'Linker scripts define memory layout and allocate sections in embedded applications.'),
(28, 'How do you optimize power consumption in embedded systems?', 'Using low-power modes, efficient coding, and disabling unused peripherals.'),
(29, 'What are some common debugging tools used in Embedded C?', 'JTAG, serial debugging, logic analyzers, and oscilloscopes.'),
(30, 'What is the role of a bootloader in embedded systems?', 'A bootloader initializes the microcontroller and loads the main application code.');

-- --------------------------------------------------------

--
-- Table structure for table `ethereum_questions`
--

CREATE TABLE `ethereum_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ethereum_questions`
--

INSERT INTO `ethereum_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Ethereum?', 'Ethereum is a decentralized blockchain with smart contract functionality.'),
(2, 'What is gas in Ethereum?', 'Gas is the unit of computational work required to execute operations on the Ethereum network.'),
(3, 'What is the Ethereum Virtual Machine (EVM)?', 'EVM is a runtime environment for executing smart contracts on Ethereum.'),
(4, 'What is an Ethereum node?', 'An Ethereum node is a computer that participates in the Ethereum network by maintaining a copy of the blockchain.'),
(5, 'What are ERC-20 tokens?', 'ERC-20 is a standard for fungible tokens on the Ethereum blockchain.'),
(6, 'What is the difference between ERC-20 and ERC-721?', 'ERC-20 is for fungible tokens, while ERC-721 is for non-fungible tokens (NFTs).'),
(7, 'How does Ethereum handle transactions?', 'Ethereum transactions are recorded on the blockchain and require gas fees.'),
(8, 'What is proof of stake in Ethereum?', 'Proof of stake is a consensus mechanism where validators are chosen based on the number of tokens they stake.'),
(9, 'What is a smart contract?', 'A smart contract is a self-executing contract with terms directly written in code.'),
(10, 'Which language is used to write Ethereum smart contracts?', 'Solidity.'),
(11, 'What are Ethereum gas fees?', 'Gas fees are transaction fees paid to Ethereum miners to process transactions.'),
(12, 'What is the purpose of MetaMask?', 'MetaMask is a browser extension that allows users to interact with the Ethereum blockchain.'),
(13, 'What is an Ethereum address?', 'An Ethereum address is a unique identifier for sending and receiving transactions on the Ethereum blockchain.'),
(14, 'What is an Ethereum block?', 'An Ethereum block contains a set of transactions and is added to the blockchain through mining or validation.'),
(15, 'What is an Ethereum mining pool?', 'A mining pool is a group of miners who combine computational resources to increase the chances of mining a block.'),
(16, 'How does Ethereum handle security?', 'Ethereum uses cryptographic hashing and decentralization to secure transactions.'),
(17, 'What is a hard fork in Ethereum?', 'A hard fork is a blockchain upgrade that makes previous blocks incompatible with the new version.'),
(18, 'What is the difference between Bitcoin and Ethereum?', 'Bitcoin is primarily a digital currency, while Ethereum supports smart contracts and dApps.'),
(19, 'What are Ethereum dApps?', 'dApps are decentralized applications that run on the Ethereum blockchain.'),
(20, 'What is the purpose of the Ethereum Foundation?', 'The Ethereum Foundation supports the development and adoption of Ethereum technology.'),
(21, 'What is Ethereum 2.0?', 'Ethereum 2.0 is an upgrade that improves scalability and security using proof of stake.'),
(22, 'How do Ethereum gas fees fluctuate?', 'Gas fees change based on network congestion and demand.'),
(23, 'What is an Ethereum token swap?', 'An Ethereum token swap is an exchange between different ERC-20 tokens using smart contracts.'),
(24, 'What are Layer 2 solutions in Ethereum?', 'Layer 2 solutions improve Ethereum scalability by processing transactions off-chain.'),
(25, 'What is a DAO in Ethereum?', 'A DAO (Decentralized Autonomous Organization) is an organization governed by smart contracts.'),
(26, 'What is the Ethereum Name Service (ENS)?', 'ENS is a decentralized domain name system for the Ethereum blockchain.'),
(27, 'What is an Ethereum validator?', 'An Ethereum validator is a participant who stakes ETH to validate transactions in proof of stake.'),
(28, 'What is an Ethereum block explorer?', 'An Ethereum block explorer is a tool that allows users to view transactions and blocks on the Ethereum blockchain.'),
(29, 'What is the role of staking in Ethereum?', 'Staking secures the network and allows participants to earn rewards by validating transactions.');

-- --------------------------------------------------------

--
-- Table structure for table `ethical_hacking_questions`
--

CREATE TABLE `ethical_hacking_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ethical_hacking_questions`
--

INSERT INTO `ethical_hacking_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is ethical hacking?', 'Ethical hacking involves legally testing and evaluating an organization\'s security system to identify vulnerabilities before malicious hackers can exploit them.'),
(2, 'What are the different types of hackers?', 'Hackers are categorized as White Hat (ethical), Black Hat (malicious), and Grey Hat (a mix of both).'),
(3, 'What are the five phases of ethical hacking?', 'The five phases are Reconnaissance, Scanning, Gaining Access, Maintaining Access, and Covering Tracks.'),
(4, 'What is penetration testing?', 'Penetration testing is a simulated cyberattack used to evaluate a system\'s security.'),
(5, 'What is the difference between vulnerability assessment and penetration testing?', 'Vulnerability assessment identifies security flaws, while penetration testing exploits them to assess their impact.'),
(6, 'What is footprinting in ethical hacking?', 'Footprinting is the process of gathering information about a target system to identify security weaknesses.'),
(7, 'What is social engineering in hacking?', 'Social engineering is manipulating people into revealing confidential information.'),
(8, 'What is phishing?', 'Phishing is a cyberattack where attackers impersonate trusted entities to steal sensitive information.'),
(9, 'What is a brute force attack?', 'A brute force attack is a trial-and-error method used to guess login credentials.'),
(10, 'What is a dictionary attack?', 'A dictionary attack uses a predefined list of words to crack passwords.'),
(11, 'What is SQL injection?', 'SQL injection is a vulnerability that allows attackers to manipulate a database by injecting malicious SQL code.'),
(12, 'What is cross-site scripting (XSS)?', 'XSS is an attack where malicious scripts are injected into trusted websites to steal user data.'),
(13, 'What is a keylogger?', 'A keylogger is a malicious software or hardware device that records keystrokes to capture sensitive information.'),
(14, 'What is ARP poisoning?', 'ARP poisoning is an attack that tricks a network by sending fake ARP messages to associate an attacker\'s MAC address with a legitimate IP.'),
(15, 'What is DNS spoofing?', 'DNS spoofing is an attack that redirects web traffic to malicious websites by altering DNS records.'),
(16, 'What is a botnet?', 'A botnet is a network of compromised computers controlled by a hacker to perform large-scale cyberattacks.'),
(17, 'What is an advanced persistent threat (APT)?', 'An APT is a prolonged and targeted cyberattack in which an attacker gains access to a network and remains undetected.'),
(18, 'What is a honeypot in cybersecurity?', 'A honeypot is a decoy system used to attract and analyze hackers.'),
(19, 'What is the difference between active and passive reconnaissance?', 'Active reconnaissance involves direct interaction with a target system, while passive reconnaissance gathers information without direct engagement.'),
(20, 'What are the common tools used in ethical hacking?', 'Popular tools include Nmap, Metasploit, Wireshark, Burp Suite, and John the Ripper.'),
(21, 'What is Kali Linux, and why is it used in ethical hacking?', 'Kali Linux is a Linux distribution with pre-installed penetration testing tools used for ethical hacking.'),
(22, 'What is a reverse shell?', 'A reverse shell allows an attacker to remotely control a compromised system.'),
(23, 'What is steganography?', 'Steganography is the practice of hiding data within other files, such as images or audio.'),
(24, 'What is a buffer overflow attack?', 'A buffer overflow attack occurs when an application writes more data to a buffer than it can hold, causing system crashes or vulnerabilities.'),
(25, 'What is the difference between black-box and white-box testing?', 'Black-box testing assesses security without internal system knowledge, while white-box testing has full system knowledge.'),
(26, 'What is session hijacking?', 'Session hijacking is an attack where an attacker takes control of a valid user session.'),
(27, 'What is ethical hacking certification?', 'Ethical hacking certifications, like CEH (Certified Ethical Hacker), validate expertise in penetration testing and cybersecurity.'),
(28, 'What is privilege escalation?', 'Privilege escalation exploits vulnerabilities to gain higher access privileges in a system.'),
(29, 'What is an exploit in ethical hacking?', 'An exploit is a piece of code or method used to take advantage of a vulnerability in a system.'),
(30, 'What are the legal considerations of ethical hacking?', 'Ethical hacking requires proper authorization and follows legal guidelines to ensure security testing does not harm the target.');

-- --------------------------------------------------------

--
-- Table structure for table `excel_questions`
--

CREATE TABLE `excel_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'excel'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `excel_questions`
--

INSERT INTO `excel_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is Microsoft Excel?', 'Microsoft Excel is a spreadsheet application used for organizing, analyzing, and visualizing data. It provides tools for creating calculations, charts, and data models, making it an essential tool for professionals in various industries.', 'excel'),
(2, 'What is a cell in Excel?', 'A cell is the smallest unit in an Excel worksheet, located at the intersection of a row and column. It’s where you enter data, which can be text, numbers, or formulas. Each cell is identified by its address, such as A1.', 'excel'),
(3, 'How do you save a file in Excel?', 'You can save your file using the excel shortcut Ctrl + S or by navigating to File > Save As. This allows you to save your work in various formats, including .xlsx, .xls, or .csv.', 'excel'),
(4, 'What is a workbook in Excel?', 'A workbook is an Excel file that contains one or more worksheets. It allows you to organize related data into multiple sheets for easier analysis and management.', 'excel'),
(5, 'How do you insert a new worksheet?', 'To insert a worksheet, click the + button at the bottom of the screen or use the shortcut Shift + F11. This creates a blank worksheet within the same workbook.', 'excel'),
(6, 'What is the Ribbon in Excel?', 'The Ribbon is the toolbar at the top of Excel that contains various tabs and commands. It is divided into sections like Home, Insert, Data, and Formulas, each offering specific tools for your tasks.', 'excel'),
(7, 'How do you use Undo and Redo in Excel?', 'Undo allows you to reverse your last action (Ctrl + Z), while Redo re-applies an undone action (Ctrl + Y). These shortcuts are useful for correcting mistakes or reapplying changes.', 'excel'),
(8, 'What is the shortcut for copying data?', 'Use Ctrl + C to copy and Ctrl + V to paste data. This is a quick way to duplicate data or formulas between cells.', 'excel'),
(9, 'What is the formula bar in Excel?', 'The formula bar is a field at the top of the Excel window that displays the contents of the selected cell. It’s especially useful for viewing and editing formulas.', 'excel'),
(10, 'How do you merge cells in Excel?', 'To merge cells, select the cells you want to combine and click Merge & Center in the Home tab. This is often used for creating headings or labels.', 'excel'),
(11, 'What is the difference between a column and a row?', 'Columns are vertical sections identified by letters (A, B, C), while rows are horizontal sections identified by numbers (1, 2, 3). Together, they form the grid of an Excel worksheet.', 'excel'),
(12, 'How do you wrap text in a cell?', 'To wrap text, select a cell and click Wrap Text in the Home tab. This adjusts the cell content to fit within its boundaries without spilling over into adjacent cells.', 'excel'),
(13, 'What are cell references in Excel?', 'Cell references specify a cell’s location in a formula. Relative references (e.g., A1) adjust when copied, absolute references (e.g., $A$1) remain fixed, and mixed references (e.g., $A1) partially adjust.', 'excel'),
(14, 'How do you delete a worksheet?', 'Right-click the sheet tab and select Delete. Deleting a sheet permanently removes its data, so it’s recommended to back up your workbook first.', 'excel'),
(15, 'How do you adjust column width?', 'Drag the boundary of a column header to resize it manually or double-click the boundary to auto-adjust based on the longest cell content.', 'excel'),
(16, 'What is a formula in Excel?', 'A formula is an expression that calculates the value of a cell. It begins with = and can include operators, cell references, and functions (e.g., =A1+B1).', 'excel'),
(17, 'What is conditional formatting in Excel?', 'Conditional formatting highlights cells based on rules you set. For example, you can apply red shading to cells with values less than 50 using Home > Conditional Formatting.', 'excel'),
(18, 'What is a Pivot Table?', 'A Pivot Table summarizes and analyzes large datasets by grouping, filtering, and aggregating data dynamically. It’s a powerful tool for creating reports and visual summaries.', 'excel'),
(19, 'How do you apply filters in Excel?', 'To filter data, select your dataset and click Data > Filter. Dropdown arrows appear, allowing you to filter rows based on specific criteria.', 'excel'),
(20, 'What is the VLOOKUP function?', 'VLOOKUP searches for a value in the first column of a table and returns a value from a specified column in the same row. For example, =VLOOKUP(\'Apple\', A1:C10, 2, FALSE) looks for \'Apple\' in column A and returns the corresponding value from column B.', 'excel'),
(21, 'What is the difference between COUNT and COUNTA?', 'COUNT counts numeric values, while COUNTA counts all non-empty cells, including text. For example, =COUNT(A1:A10) returns the count of numbers, and =COUNTA(A1:A10) includes text and numbers.', 'excel'),
(22, 'How do you create a chart in Excel?', 'Select your data, go to Insert > Chart, and choose a chart type. Charts visually represent data trends and patterns, making analysis more accessible.', 'excel'),
(23, 'What is the CONCATENATE function?', 'CONCATENATE combines text from multiple cells into one. For example, =CONCATENATE(\'Hello\', \' World\') results in \'Hello World.\'', 'excel'),
(24, 'How do you remove duplicates in Excel?', 'Select your data, then go to Data > Remove Duplicates. This helps clean datasets by eliminating redundant entries based on selected columns.', 'excel'),
(25, 'What is data validation?', 'Data validation restricts data entry to specified types or ranges. For instance, you can limit a cell to accept only whole numbers between 1 and 100.', 'excel'),
(26, 'What is Power Query?', 'Power Query automates data import, transformation, and cleaning tasks. It’s especially useful for consolidating data from multiple sources into one table.', 'excel'),
(27, 'What is the XLOOKUP function?', 'XLOOKUP is an improved lookup function that can search in any direction and return a value or array.', 'excel'),
(28, 'What is the purpose of macros in Excel?', 'Macros automate repetitive tasks by recording a series of steps. They are written in VBA (Visual Basic for Applications) and can save hours of manual work.', 'excel'),
(29, 'What is the IF function?', 'The IF function performs logical tests and returns different values based on the result. For instance, =IF(A1>10, \'Pass\', \'Fail\') returns \'Pass\' if A1 is greater than 10 and \'Fail\' otherwise.', 'excel'),
(30, 'How do INDEX and MATCH work together?', 'INDEX returns the value of a cell at a specified row and column, while MATCH finds the position of a value in a range. Combined, they perform advanced lookups.', 'excel');

-- --------------------------------------------------------

--
-- Table structure for table `express_questions`
--

CREATE TABLE `express_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `express_questions`
--

INSERT INTO `express_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Express.js?', 'Express.js is a fast, minimal, and flexible Node.js web framework used to build web applications and APIs.'),
(2, 'What are the key features of Express.js?', 'Key features include middleware support, routing, template engines, and easy integration with databases.'),
(3, 'How do you install Express.js?', 'You can install Express.js using npm with the command `npm install express`.'),
(4, 'How do you create a simple Express server?', 'Use `const express = require(\"express\"); const app = express(); app.listen(3000, () => console.log(\"Server running\"));`.'),
(5, 'What is middleware in Express.js?', 'Middleware functions are functions that execute during the request-response cycle and can modify request/response objects.'),
(6, 'What are the different types of middleware in Express?', 'Types of middleware include application-level, router-level, error-handling, and built-in middleware.'),
(7, 'How do you define routes in Express.js?', 'Routes are defined using `app.get()`, `app.post()`, `app.put()`, and `app.delete()`.'),
(8, 'What is the purpose of `app.use()` in Express?', '`app.use()` is used to apply middleware globally in an Express application.'),
(9, 'How do you handle errors in Express.js?', 'Use a middleware function with four parameters: `app.use((err, req, res, next) => { res.status(500).send(err.message); })`.'),
(10, 'What is the difference between `req.params` and `req.query`?', '`req.params` captures route parameters, while `req.query` captures query string parameters.'),
(11, 'What is the difference between `app.get()` and `app.post()`?', '`app.get()` handles GET requests, while `app.post()` handles POST requests used for data submission.'),
(12, 'How do you parse JSON data in Express?', 'Use the built-in middleware: `app.use(express.json())`.'),
(13, 'What is CORS in Express.js?', 'CORS (Cross-Origin Resource Sharing) is a security feature that allows or restricts requests from different origins.'),
(14, 'How do you enable CORS in Express.js?', 'Use the `cors` middleware: `const cors = require(\"cors\"); app.use(cors());`.'),
(15, 'How do you serve static files in Express.js?', 'Use `app.use(express.static(\"public\"))` to serve static files from a directory.'),
(16, 'What is the purpose of `next()` in Express middleware?', '`next()` is used to pass control to the next middleware function in the request-response cycle.'),
(17, 'How do you handle file uploads in Express.js?', 'Use `multer` middleware for handling file uploads in Express applications.'),
(18, 'What is Express Router?', 'Express Router allows organizing routes into separate modules using `express.Router()`.'),
(19, 'How do you use Express Router?', 'Define routes in a separate file, export the router, and use it in `app.js` with `app.use(\"/route\", router)`.'),
(20, 'How do you implement authentication in Express.js?', 'Use authentication strategies like JWT (jsonwebtoken), Passport.js, or session-based authentication.'),
(21, 'What is the difference between session-based and token-based authentication?', 'Session-based authentication stores session data on the server, while token-based authentication uses JWT to authenticate users.'),
(22, 'How do you create a RESTful API using Express.js?', 'Define routes for different HTTP methods (GET, POST, PUT, DELETE) and handle requests with middleware and controllers.'),
(23, 'How do you connect Express.js with MongoDB?', 'Use Mongoose: `const mongoose = require(\"mongoose\"); mongoose.connect(\"mongodb://localhost/dbname\")`.'),
(24, 'How do you handle form data in Express.js?', 'Use the `express.urlencoded({ extended: true })` middleware to parse URL-encoded form data.'),
(25, 'What is body-parser, and is it needed in Express.js?', '`body-parser` was used to parse request bodies but is now built into Express as `express.json()` and `express.urlencoded()`.'),
(26, 'How do you log requests in Express.js?', 'Use the `morgan` middleware for logging requests: `const morgan = require(\"morgan\"); app.use(morgan(\"dev\"));`.'),
(27, 'How do you protect Express routes?', 'Use middleware functions to check authentication before allowing access to protected routes.'),
(28, 'What is helmet in Express.js?', '`helmet` is a middleware that secures Express apps by setting various HTTP headers.'),
(29, 'How do you handle database connections in an Express app?', 'Use a database library (Mongoose for MongoDB, Sequelize for SQL) and manage connections efficiently.'),
(30, 'What are best practices for building secure Express applications?', 'Best practices include input validation, using HTTPS, sanitizing user input, handling errors properly, and implementing authentication and authorization.');

-- --------------------------------------------------------

--
-- Table structure for table `flutter_questions`
--

CREATE TABLE `flutter_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flutter_questions`
--

INSERT INTO `flutter_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Flutter?', 'Flutter is an open-source UI software development toolkit created by Google for building natively compiled applications for mobile, web, and desktop from a single codebase.'),
(2, 'What language is used to develop Flutter applications?', 'Dart.'),
(3, 'What is the widget tree in Flutter?', 'The widget tree is the hierarchy of widgets that make up the UI in a Flutter application.'),
(4, 'What is the difference between StatelessWidget and StatefulWidget?', 'StatelessWidget does not maintain state, while StatefulWidget maintains state that can change during the widget’s lifetime.'),
(5, 'What is a BuildContext in Flutter?', 'BuildContext is a handle to the location of a widget in the widget tree and is used to obtain theme, size, and other information.'),
(6, 'What is setState() in Flutter?', 'setState() is used to update the UI by notifying the framework that the state of the widget has changed.'),
(7, 'What is hot reload in Flutter?', 'Hot reload allows developers to see changes in the code immediately without restarting the application.'),
(8, 'What is a Future in Dart?', 'A Future represents an asynchronous operation that will return a value or an error in the future.'),
(9, 'What is an async/await in Dart?', 'async/await is used for handling asynchronous programming by waiting for the completion of Future operations.'),
(10, 'What is the purpose of the pubspec.yaml file?', 'pubspec.yaml defines the dependencies, assets, and metadata of a Flutter project.'),
(11, 'How do you navigate between screens in Flutter?', 'Using Navigator.push() and Navigator.pop() methods.'),
(12, 'What is the purpose of the MaterialApp widget?', 'MaterialApp is the root widget that provides navigation, themes, and localization support for Flutter applications.'),
(13, 'What is the Scaffold widget?', 'Scaffold is a basic structure in Flutter that provides a visual layout with AppBar, BottomNavigationBar, and other UI components.'),
(14, 'What is the difference between mainAxisAlignment and crossAxisAlignment?', 'mainAxisAlignment controls alignment along the main axis, while crossAxisAlignment controls alignment along the cross axis.'),
(15, 'How do you handle user input in Flutter?', 'Using TextField, TextEditingController, and onChanged callbacks.'),
(16, 'What is the difference between ListView and GridView?', 'ListView displays items in a scrollable list, while GridView arranges items in a grid layout.'),
(17, 'How do you make an HTTP request in Flutter?', 'Using the http package or Dio package for API requests.'),
(18, 'What is provider in Flutter?', 'Provider is a state management solution that simplifies dependency injection and state handling.'),
(19, 'What is the purpose of the initState() method?', 'initState() is called once when the StatefulWidget is first created and is used for initializing data.'),
(20, 'What are keys in Flutter widgets?', 'Keys are used to maintain widget state when the widget tree rebuilds.'),
(21, 'How do you use animations in Flutter?', 'Using the AnimationController, Tween, and AnimatedBuilder classes.'),
(22, 'What is the difference between named and positional parameters in Dart?', 'Named parameters require explicit parameter names, while positional parameters follow the order of definition.'),
(23, 'What is the purpose of the SafeArea widget?', 'SafeArea ensures that the UI avoids notches, status bars, and system overlays.'),
(24, 'How do you add custom fonts in Flutter?', 'Define the font in pubspec.yaml and use the TextStyle widget with fontFamily.'),
(25, 'How do you access native platform features in Flutter?', 'Using platform channels to communicate between Dart and native code (Java/Kotlin for Android, Swift/Objective-C for iOS).'),
(26, 'What is the difference between Expanded and Flexible widgets?', 'Expanded forces a widget to take all available space, while Flexible allows it to take up only necessary space.'),
(27, 'How do you implement dark mode in Flutter?', 'Using ThemeData.dark() and setting the theme dynamically.'),
(28, 'What is the use of FutureBuilder in Flutter?', 'FutureBuilder is used to build UI based on the result of a Future operation.'),
(29, 'What is the purpose of the ClipRRect widget?', 'ClipRRect is used to apply rounded corners to widgets.'),
(30, 'What is Riverpod in Flutter?', 'Riverpod is a state management library that is an improvement over Provider, offering better performance and testability.');

-- --------------------------------------------------------

--
-- Table structure for table `gamephysics_questions`
--

CREATE TABLE `gamephysics_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gamephysics_questions`
--

INSERT INTO `gamephysics_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is game physics?', 'Game physics is the simulation of physical laws in a game environment to create realistic movements, collisions, and interactions.'),
(2, 'What is rigid body physics?', 'Rigid body physics simulate objects that do not deform under forces, commonly used in game engines.'),
(3, 'What is the difference between kinematic and dynamic bodies in physics engines?', 'Kinematic bodies are controlled by the game logic, while dynamic bodies respond to forces and collisions.'),
(4, 'What is collision detection in game physics?', 'Collision detection determines if and when objects in a game world intersect or touch each other.'),
(5, 'What are hitboxes and hurtboxes?', 'Hitboxes define the attack range of an object, while hurtboxes define the area where an object can take damage.'),
(6, 'What is soft body physics?', 'Soft body physics simulate deformable objects like cloth, jelly, or muscles in a game.'),
(7, 'What is ragdoll physics?', 'Ragdoll physics is a technique that simulates realistic character movement by using connected rigid bodies.'),
(8, 'What is inverse kinematics in game physics?', 'Inverse kinematics is a method used to calculate joint positions in character animations to reach a target position.'),
(9, 'What is the role of friction in game physics?', 'Friction controls the resistance between surfaces, affecting movement, sliding, and stopping.'),
(10, 'What is restitution in physics simulations?', 'Restitution determines how much an object bounces back after colliding with another object.'),
(11, 'What is gravity in game physics?', 'Gravity is a force that pulls objects downward, simulating real-world physics in a game.'),
(12, 'What is the difference between a physics engine and a graphics engine?', 'A physics engine calculates motion and collisions, while a graphics engine renders images and animations.'),
(13, 'What is a physics timestep?', 'A physics timestep is the fixed time interval used to update physics simulations for stable and consistent results.'),
(14, 'What is the purpose of mass in game physics?', 'Mass affects an object’s acceleration and response to forces in a physics simulation.'),
(15, 'What is a hinge joint in physics simulations?', 'A hinge joint allows rotation around a single axis, like a door hinge or elbow joint.'),
(16, 'What is the purpose of damping in physics simulations?', 'Damping reduces velocity or oscillation in physics objects to prevent unnatural movements.'),
(17, 'What is continuous collision detection?', 'Continuous collision detection prevents fast-moving objects from passing through other objects due to missed collision checks.'),
(18, 'What is a physics constraint?', 'A physics constraint limits the movement of objects to simulate realistic behavior, such as a ball rolling inside a track.'),
(19, 'What are raycasts in game physics?', 'Raycasts are used to detect objects along a line, often for shooting mechanics or AI vision.'),
(20, 'What is cloth simulation?', 'Cloth simulation is a physics technique used to create realistic movement and behavior of fabrics.'),
(21, 'What is buoyancy in game physics?', 'Buoyancy simulates how objects float or sink in water by applying upward force.'),
(22, 'What is a spring joint in physics simulations?', 'A spring joint connects two objects with a flexible, bouncing force to simulate springs or ropes.'),
(23, 'What is angular velocity?', 'Angular velocity is the rate of rotation of an object around an axis.'),
(24, 'What is the difference between local and world space in physics simulations?', 'Local space refers to an object’s position relative to itself, while world space refers to its position in the game world.'),
(25, 'What is momentum in game physics?', 'Momentum is the product of an object’s mass and velocity, influencing its movement after collisions.'),
(26, 'What is a force field in game physics?', 'A force field applies directional force to multiple objects, often used for explosions or gravity wells.'),
(27, 'What is a physics material?', 'A physics material defines how objects interact with each other, including friction and bounciness.'),
(28, 'What is procedural animation in game physics?', 'Procedural animation is movement generated dynamically based on physics calculations instead of pre-made animations.'),
(29, 'What is a physics debug mode?', 'Physics debug mode visualizes collisions, forces, and object interactions to help developers fine-tune simulations.');

-- --------------------------------------------------------

--
-- Table structure for table `gd_topics`
--

CREATE TABLE `gd_topics` (
  `id` int(11) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `participant_name` varchar(255) NOT NULL,
  `dialogue` text NOT NULL
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
-- Table structure for table `general_knowledge_questions`
--

CREATE TABLE `general_knowledge_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_knowledge_questions`
--

INSERT INTO `general_knowledge_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is the capital city of France?', 'Paris'),
(2, 'Who wrote \'Romeo and Juliet\'?', 'William Shakespeare'),
(3, 'What is the largest planet in our solar system?', 'Jupiter'),
(4, 'What is the chemical symbol for water?', 'H2O'),
(5, 'Who painted the Mona Lisa?', 'Leonardo da Vinci'),
(6, 'Which continent is known as the \'Dark Continent\'?', 'Africa'),
(7, 'What is the tallest mountain in the world?', 'Mount Everest'),
(8, 'Who was the first President of the United States?', 'George Washington'),
(9, 'Which is the smallest country in the world?', 'Vatican City'),
(10, 'What is the hardest natural substance on Earth?', 'Diamond'),
(11, 'Who discovered gravity?', 'Isaac Newton'),
(12, 'Which planet is known as the Red Planet?', 'Mars'),
(13, 'Who is known as the Father of Computers?', 'Charles Babbage'),
(14, 'What is the capital of Japan?', 'Tokyo'),
(15, 'Which element has the atomic number 1?', 'Hydrogen'),
(16, 'Who invented the telephone?', 'Alexander Graham Bell'),
(17, 'What is the longest river in the world?', 'Nile'),
(18, 'Which organ in the human body is primarily responsible for detoxification?', 'Liver'),
(19, 'What is the main ingredient in traditional Japanese sushi?', 'Rice'),
(20, 'Who was the first man to step on the Moon?', 'Neil Armstrong'),
(21, 'Which ocean is the largest by area?', 'Pacific Ocean'),
(22, 'What is the national sport of Japan?', 'Sumo Wrestling'),
(23, 'Which planet has the most moons?', 'Saturn'),
(24, 'Who is the author of \'Harry Potter\' series?', 'J.K. Rowling'),
(25, 'Which country is known as the Land of the Rising Sun?', 'Japan'),
(26, 'What is the smallest bone in the human body?', 'Stapes'),
(27, 'What is the boiling point of water in Celsius?', '100°C'),
(28, 'Who was the first female Prime Minister of the UK?', 'Margaret Thatcher'),
(29, 'What is the hardest known natural material?', 'Diamond'),
(30, 'Which language is the most spoken worldwide?', 'Mandarin Chinese'),
(31, 'What is the capital of Australia?', 'Canberra'),
(32, 'Which mammal is known to lay eggs?', 'Platypus'),
(33, 'What is the largest mammal on Earth?', 'Blue Whale'),
(34, 'Who painted the Sistine Chapel ceiling?', 'Michelangelo'),
(35, 'Which metal is liquid at room temperature?', 'Mercury'),
(36, 'What is the longest bone in the human body?', 'Femur'),
(37, 'Who developed the theory of relativity?', 'Albert Einstein'),
(38, 'Which gas is most abundant in Earth\'s atmosphere?', 'Nitrogen'),
(39, 'Who founded Microsoft?', 'Bill Gates and Paul Allen'),
(40, 'What is the largest desert in the world?', 'Sahara'),
(41, 'Which is the only continent without snakes?', 'Antarctica'),
(42, 'Who wrote \'The Odyssey\'?', 'Homer'),
(43, 'What is the national currency of Japan?', 'Yen'),
(44, 'Which vitamin is produced when a person is exposed to sunlight?', 'Vitamin D'),
(45, 'What is the largest island in the world?', 'Greenland'),
(46, 'Who was the first woman to win a Nobel Prize?', 'Marie Curie'),
(47, 'Which sport is known as the \'King of Sports\'?', 'Soccer (Football)'),
(48, 'What is the speed of light?', '299,792 km/s'),
(49, 'Which country hosted the first modern Olympic Games?', 'Greece'),
(50, 'What is the world\'s most spoken language by number of native speakers?', 'Mandarin Chinese'),
(51, 'Which is the deepest ocean in the world?', 'Pacific Ocean'),
(52, 'Who invented the World Wide Web?', 'Tim Berners-Lee'),
(53, 'Which country won the FIFA World Cup in 2022?', 'Argentina'),
(54, 'Who is the CEO of Twitter as of 2023?', 'Elon Musk'),
(55, 'Which is the most downloaded app worldwide in 2023?', 'TikTok'),
(56, 'Which country launched the Chandrayaan-3 mission?', 'India'),
(57, 'Who won the Nobel Peace Prize in 2022?', 'Ales Bialiatski, Memorial, Center for Civil Liberties'),
(58, 'Which movie won the Best Picture Oscar in 2023?', 'Everything Everywhere All at Once'),
(59, 'What is the name of NASA\'s rover currently exploring Mars?', 'Perseverance'),
(60, 'Who became the King of the United Kingdom in 2022?', 'King Charles III'),
(61, 'Which is the most streamed song on Spotify as of 2023?', 'Blinding Lights by The Weeknd'),
(62, 'Which tech company unveiled the Vision Pro AR headset in 2023?', 'Apple'),
(63, 'Which city hosted the 2024 Summer Olympics?', 'Paris'),
(64, 'Who won the Women\'s Singles title at Wimbledon 2023?', 'Markéta Vondroušová'),
(65, 'What is the most valuable cryptocurrency after Bitcoin?', 'Ethereum'),
(66, 'Which company became the first to reach a $3 trillion market cap?', 'Apple'),
(67, 'Who wrote the book \'Spare\' released in 2023?', 'Prince Harry'),
(68, 'Which country recently joined BRICS in 2024?', 'Saudi Arabia'),
(69, 'Who is the current Secretary-General of the United Nations?', 'António Guterres'),
(70, 'Which streaming service released \'Squid Game: The Challenge\' in 2023?', 'Netflix'),
(71, 'What is the name of the AI model developed by OpenAI in 2024?', 'GPT-5'),
(72, 'Who won the Ballon d\'Or in 2023?', 'Lionel Messi'),
(73, 'Which country hosted the G20 summit in 2023?', 'India'),
(74, 'Which superhero movie became the highest-grossing film of 2023?', 'Spider-Man: Across the Spider-Verse'),
(75, 'Which space agency announced the Artemis II mission?', 'NASA'),
(76, 'Who became the youngest Prime Minister of Finland in 2022?', 'Sanna Marin'),
(77, 'Which video game won \'Game of the Year\' at The Game Awards 2023?', 'The Legend of Zelda: Tears of the Kingdom'),
(78, 'Which tech giant acquired Activision Blizzard?', 'Microsoft'),
(79, 'What is the world\'s tallest building as of 2024?', 'Burj Khalifa'),
(80, 'Who was awarded the Nobel Prize in Literature in 2023?', 'Jon Fosse'),
(81, 'Which country\'s team won the ICC Cricket World Cup in 2023?', 'India'),
(82, 'Who is the richest person in the world as of 2024?', 'Elon Musk'),
(83, 'Which country is the largest producer of electric vehicles?', 'China'),
(84, 'Which social media platform introduced Threads in 2023?', 'Instagram'),
(85, 'Who became the President of Brazil in 2023?', 'Luiz Inácio Lula da Silva'),
(86, 'Which movie won the Palme d\'Or at Cannes Film Festival 2023?', 'Anatomy of a Fall'),
(87, 'Which car manufacturer launched the first fully autonomous vehicle?', 'Tesla'),
(88, 'What is the name of the largest social media platform in China?', 'WeChat'),
(89, 'Which tennis player broke the record for most Grand Slam titles in 2023?', 'Novak Djokovic'),
(90, 'Who is the current head of the International Monetary Fund (IMF)?', 'Kristalina Georgieva'),
(91, 'Which country launched the XRISM space telescope in 2023?', 'Japan'),
(92, 'Which music album became the fastest-selling of all time in 2023?', 'Midnights by Taylor Swift'),
(93, 'What is the world\'s largest tech company by revenue in 2024?', 'Apple'),
(94, 'Which footballer moved to Al-Nassr club in Saudi Arabia?', 'Cristiano Ronaldo'),
(95, 'Who won the Best Actor award at the Oscars in 2023?', 'Brendan Fraser'),
(96, 'Which tech company developed ChatGPT?', 'OpenAI'),
(97, 'Which country hosted the 2023 Rugby World Cup?', 'France'),
(98, 'Who is the author of \'The Song of Ice and Fire\' series?', 'George R.R. Martin'),
(99, 'Which global event was held in Dubai in 2023?', 'COP28'),
(100, 'Who is the current CEO of Google?', 'Sundar Pichai'),
(101, 'Which streaming platform launched \'House of the Dragon\'?', 'HBO Max'),
(102, 'Which fashion brand became the most valuable in 2023?', 'Louis Vuitton'),
(103, 'Which company is the leading producer of electric batteries?', 'CATL'),
(104, 'Who is the lead singer of the band Coldplay?', 'Chris Martin');

-- --------------------------------------------------------

--
-- Table structure for table `hr_round_questions`
--

CREATE TABLE `hr_round_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
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
-- Table structure for table `html_questions`
--

CREATE TABLE `html_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `skills` varchar(20) DEFAULT 'html'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `html_questions`
--

INSERT INTO `html_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is the difference between HTML tags and elements?', 'HTML elements correspond to the browser to render text. When we enclose the elements by brackets <>, they form an HTML tag. Most of the time, tags are in a pair and hold content.', 'html'),
(2, 'What are empty elements?', 'HTML elements with no content are called empty elements. For example: <br>, <hr> etc.', 'html'),
(3, 'What are the entities in HTML?', 'We use the HTML entities to replace reserved characters in HTML. You can also replace characters not present on your keyboard with entities. We replace these characters because some characters are reserved in HTML.', 'html'),
(4, 'Is <!DOCTYPE html> tag an HTML tag?', 'No, the <!DOCTYPE> declaration is not an HTML tag. We use <!DOCTYPE> to instruct the web browser about the HTML page.', 'html'),
(5, 'What is the difference between the <link> and the <a> tag?', 'The <link> tag is used to define a link between the given URL and the HTML document, whereas the <a> tag is used to add a hyperlink to the webpage.', 'html'),
(6, 'What do you mean by alternative text?', 'You can use alternative text to add descriptive information to each hotspot connection when using picture maps.', 'html'),
(7, 'Is older HTML compatible with new browsers?', 'Yes, older HTML files are HTML standard compliant and are generally compatible with newer browsers, though some functions may not be available.', 'html'),
(8, 'Is a hyperlink only applicable to text?', 'No, hyperlinks can be used in both text and graphics. For example, an image can be a link that takes users to another page when clicked.', 'html'),
(9, 'What is HTML used for?', 'HTML, or Hypertext Markup Language, is used for creating web pages and structuring them. It describes the structure of the web page with text-based content such as paragraphs, links, lists, images, etc.', 'html'),
(10, 'What are the 4 basic tags of HTML?', '<html>, <head>, <title>, and <body> are the four basic tags of HTML used to define the document\'s structure.', 'html'),
(11, 'What do you mean by Image Maps?', 'An image map allows linking to multiple web pages using a single image. Shapes in the image are defined as clickable areas linked to different URLs.', 'html'),
(12, 'How do you create an email link using a hyperlink in HTML?', 'To create an email link, use the <a> tag with the mailto: protocol in the href attribute, e.g., <a href=\'mailto:example@example.com\'>Send an Email</a>.', 'html'),
(13, 'Which HTML tag is used to display data in tabular form?', 'The <table> tag is used to display data in a tabular format, with supporting tags like <tr>, <th>, <td>, <caption>, <colgroup>, <col>, <thead>, <tbody>, and <tfoot>.', 'html'),
(14, 'What is the use of a span tag?', 'The <span> tag is used for styling parts of text, such as changing color or background, and for highlighting specific text.', 'html'),
(15, 'What is the use of an iframe tag?', 'The <iframe> tag is used to embed another HTML document within the current webpage, allowing nested browsing contexts.', 'html'),
(16, 'What are some standard lists used when designing a page?', 'Ordered lists (<ol>), unordered lists (<ul>), and definition lists (<dl>, <dt>, <dd>) are standard lists used in HTML for organizing content.', 'html'),
(17, 'Explain some of the common lists to design a web page.', 'Common lists include ordered lists, unordered lists, definition lists, directory lists, and menu lists.', 'html'),
(18, 'How to create a nested webpage in HTML?', 'Using the <iframe> tag, you can display a nested webpage within the current document, allowing one webpage to be embedded inside another.', 'html'),
(19, 'To what values attribute can be set?', 'Some attributes accept predefined values, while others accept numeric values representing pixels or percentages for size and layout.', 'html'),
(20, 'What is the id attribute in HTML?', 'The id attribute uniquely identifies an HTML element on a page, useful for styling with CSS or accessing elements using JavaScript.', 'html'),
(21, 'What exactly are applets?', 'Applets are small programs embedded within web pages to perform specific tasks such as computations or animations. They are typically written in Java.', 'html'),
(22, 'How to indent list elements?', 'List elements can be indented using CSS properties like padding or margin to create hierarchical or nested list structures.', 'html'),
(23, 'How do you create a hyperlink in HTML?', 'Use the <a> tag with the href attribute to create a hyperlink. Example: <a href=\'https://example.com\'>Link Text</a>.', 'html'),
(24, 'Is it possible to modify the color of the bullets?', 'Yes, the color of bullets is controlled by the color of the first character of the list item. Use CSS for more customization.', 'html'),
(25, 'Does a hyperlink only apply to text?', 'No, hyperlinks can be applied to images and other HTML elements, not just text, using the <a> tag.', 'html'),
(26, 'What are the 5 basic parts of HTML?', 'Document Type Declaration, HTML tag, Head tag, Body tag, and Closing HTML tag are the 5 basic parts of an HTML document.', 'html'),
(27, 'What are the 3 main elements of HTML?', 'Tags, Attributes, and Text Content are the 3 main elements used to structure and display content in HTML.', 'html'),
(28, 'What exactly are style sheets?', 'Style sheets (CSS) define the look and feel of web pages by controlling the layout, color, and fonts used across multiple pages.', 'html'),
(29, 'How do you make the colorful text on a website?', 'Use the <span> or <font> tag with the style attribute, or use CSS for more flexible color styling of text elements.', 'html'),
(30, 'What is the connection between border and rule attributes?', 'If the border property is set to a nonzero value, default cell boundaries with a thickness of one pixel are automatically placed between cells. Similarly, if the rules property is added to the <table> tag but the border attribute is not provided, a defaul', 'html'),
(31, 'What distinguishes active links from regular links?', 'Blue is the default color for normal and active links. When the mouse pointer is over a link, some browsers recognize it as active; others recognize it as active when the link has the focus. Those that do not have the mouse cursor over the link are regard', 'html'),
(32, 'Do style sheets impose a restriction on the number of additional style definitions that can be inserted between the brackets?', 'The number of style definitions that can be inserted within the brackets for a particular selection is not limited by style sheets. However, each new style specification must be separated from the others by a semicolon symbol.', 'html'),
(33, 'What is the hierarchy that is followed in stylesheets?', 'If a single selector contains three alternative style declarations, the one closest to the actual tag takes precedence. Inline style takes precedence over embedded style sheets, which in turn take precedence over external style sheets.', 'html'),
(34, 'What happens if the external CSS file is opened in a browser?', 'It fails since the extension is different. The only way to use an external CSS file is to use the <link> tag within another HTML document.', 'html'),
(35, 'What if the list-style-type property is applied to a non-list element, such as a paragraph?', 'When the list-style-type property is applied to a non-list element, it has no effect on the paragraph.', 'html'),
(36, 'When is the use of frames appropriate?', 'Frames make it much easier to navigate through a website. If the primary site links are in a frame that displays at the top or along the edge of the browser, the information for those links can be displayed in the browser window\'s remaining space.', 'html'),
(37, 'What exactly is the Application Cache? What are the applications of it?', 'Application Cache in HTML5 allows a web application to store resources (like HTML, CSS, JavaScript, and images) locally on the user\'s device. This enables the application to function offline or with limited connectivity. Applications include Offline Acces', 'html'),
(38, 'What is the distinction between progress and a meter tag?', 'The <progress> tag represents the progress of a task or operation that is ongoing, while the <meter> tag represents a scalar measurement within a known range. <progress> is used for tasks like file downloads, whereas <meter> is used for static values like', 'html'),
(39, 'What is the difference between the \"id\" and \"class\" attributes in HTML?', 'The \"id\" attribute is used to uniquely identify a single element on a page, while the \"class\" attribute is used to group multiple elements together and apply styling or functionality to them collectively.', 'html'),
(40, 'What is the purpose of the \"alt\" attribute in an image tag in HTML?', 'The “alt” attribute is used for an alternative text description when the image is not displayed due to various reasons such as slow internet connectivity. It also helps visually impaired users understand the image with the help of screen readers.', 'html'),
(41, 'How does the browser handle invalid or poorly written HTML? Explain the concept of error tolerance in HTML parsers.', 'HTML browsers are designed with error tolerance to handle invalid or poorly written HTML. They make assumptions to display content as correctly as possible by inferring missing closing tags, ignoring incorrect attributes, and adjusting improper nesting of', 'html');

-- --------------------------------------------------------

--
-- Table structure for table `hyperledger_questions`
--

CREATE TABLE `hyperledger_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hyperledger_questions`
--

INSERT INTO `hyperledger_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Hyperledger?', 'Hyperledger is an open-source blockchain initiative hosted by the Linux Foundation to support enterprise blockchain development.'),
(2, 'What are the main Hyperledger projects?', 'Hyperledger Fabric, Hyperledger Sawtooth, Hyperledger Besu, Hyperledger Indy, Hyperledger Iroha, and Hyperledger Burrow.'),
(3, 'What is Hyperledger Fabric?', 'Hyperledger Fabric is a permissioned blockchain platform designed for enterprise solutions.'),
(4, 'How does Hyperledger differ from Ethereum?', 'Hyperledger is permissioned and enterprise-focused, while Ethereum is public and decentralized.'),
(5, 'What is a permissioned blockchain?', 'A permissioned blockchain restricts access to authorized participants, unlike public blockchains.'),
(6, 'What programming languages are used in Hyperledger?', 'Go, Java, JavaScript, and Python.'),
(7, 'What is a peer node in Hyperledger Fabric?', 'A peer node is responsible for executing and validating transactions in the blockchain network.'),
(8, 'What is a Hyperledger Fabric channel?', 'A channel is a private communication pathway that allows specific participants to conduct transactions.'),
(9, 'What is the role of an orderer in Hyperledger Fabric?', 'An orderer maintains transaction ordering and delivers them to peers for validation.'),
(10, 'What is the chaincode in Hyperledger Fabric?', 'Chaincode is the smart contract code that defines business logic and runs on peers.'),
(11, 'What is a Certificate Authority (CA) in Hyperledger Fabric?', 'A CA issues digital certificates to participants for authentication in the network.'),
(12, 'What consensus mechanisms are used in Hyperledger Fabric?', 'Raft and Kafka are the primary consensus mechanisms used.'),
(13, 'What is Hyperledger Sawtooth?', 'Hyperledger Sawtooth is a modular blockchain platform that supports multiple consensus mechanisms.'),
(14, 'What is Proof of Elapsed Time (PoET) in Hyperledger Sawtooth?', 'PoET is a consensus algorithm that assigns wait times randomly to participants to determine the next block proposer.'),
(15, 'How does Hyperledger Fabric handle privacy?', 'Fabric uses private channels and transaction encryption to ensure privacy.'),
(16, 'What is Hyperledger Besu?', 'Hyperledger Besu is an Ethereum-compatible blockchain client that supports both public and private networks.'),
(17, 'What is Hyperledger Indy?', 'Hyperledger Indy is a blockchain framework designed for decentralized identity management.'),
(18, 'What is Hyperledger Iroha?', 'Hyperledger Iroha is a blockchain framework optimized for simple use cases, such as identity and asset management.'),
(19, 'What is Hyperledger Burrow?', 'Hyperledger Burrow is a permissioned blockchain that implements Ethereum Virtual Machine (EVM) smart contracts.'),
(20, 'What are endorsement policies in Hyperledger Fabric?', 'Endorsement policies define which peers must validate and sign a transaction before it is committed to the ledger.'),
(21, 'How is data stored in Hyperledger Fabric?', 'Data is stored in a ledger composed of blocks, along with a state database (CouchDB or LevelDB).'),
(22, 'What is the difference between an MSP and a CA in Hyperledger Fabric?', 'An MSP (Membership Service Provider) defines authentication rules, while a CA issues digital certificates.'),
(23, 'What is a world state in Hyperledger Fabric?', 'The world state is a database that stores the latest values of blockchain assets.'),
(24, 'What are endorsing peers in Hyperledger Fabric?', 'Endorsing peers validate and sign transactions based on chaincode logic before sending them for ordering.'),
(25, 'What is a ledger in Hyperledger?', 'A ledger is an immutable record of all transactions that have occurred on the network.'),
(26, 'What is a transaction proposal in Hyperledger Fabric?', 'A transaction proposal is a request submitted to peers to invoke a chaincode function.'),
(27, 'What is Hyperledger Caliper?', 'Hyperledger Caliper is a benchmarking tool used to measure blockchain performance.'),
(28, 'What is a state database in Hyperledger Fabric?', 'A state database stores the latest asset values for efficient querying and retrieval.'),
(29, 'What is the function of an anchor peer?', 'An anchor peer is a designated peer that enables communication across different organizations within a channel.'),
(30, 'What is the role of a chaincode endorsement policy?', 'An endorsement policy defines the conditions required for a transaction to be considered valid.');

-- --------------------------------------------------------

--
-- Table structure for table `integrationtesting_questions`
--

CREATE TABLE `integrationtesting_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `integrationtesting_questions`
--

INSERT INTO `integrationtesting_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Integration Testing?', 'Integration Testing is a type of software testing where individual modules are combined and tested as a group.'),
(2, 'What is the main goal of Integration Testing?', 'The main goal is to verify that different modules work together correctly.'),
(3, 'What are the types of Integration Testing?', 'Types include Big Bang, Incremental (Top-Down, Bottom-Up), and Sandwich Testing.'),
(4, 'What is the difference between Unit Testing and Integration Testing?', 'Unit Testing tests individual components in isolation, while Integration Testing checks their interactions.'),
(5, 'What is Big Bang Integration Testing?', 'Big Bang Testing integrates all modules at once and tests them as a whole.'),
(6, 'What is Incremental Integration Testing?', 'Incremental Testing integrates and tests modules step by step.'),
(7, 'What is Top-Down Integration Testing?', 'Top-Down Testing starts with higher-level modules and integrates lower-level ones gradually.'),
(8, 'What is Bottom-Up Integration Testing?', 'Bottom-Up Testing starts with lower-level modules and integrates higher-level ones progressively.'),
(9, 'What is Sandwich Integration Testing?', 'Sandwich Testing combines both Top-Down and Bottom-Up approaches.'),
(10, 'What is a stub in Integration Testing?', 'A stub is a dummy module that mimics the behavior of a missing lower-level component.'),
(11, 'What is a driver in Integration Testing?', 'A driver is a dummy program that simulates the behavior of a higher-level module.'),
(12, 'What is continuous integration in testing?', 'Continuous Integration is a practice where code changes are automatically tested to detect integration issues early.'),
(13, 'What is the importance of Integration Testing?', 'It ensures that different components work together as expected and prevents integration failures.'),
(14, 'How do you perform Integration Testing?', 'By defining test cases, setting up test environments, executing tests, and verifying outputs.'),
(15, 'What are the challenges in Integration Testing?', 'Challenges include handling dependencies, debugging failures, and managing complex system interactions.'),
(16, 'What is an integration test case?', 'An integration test case is a scenario designed to verify data flow and interactions between components.'),
(17, 'What is an API in Integration Testing?', 'An API (Application Programming Interface) allows different software components to communicate with each other.'),
(18, 'What is API Testing in Integration Testing?', 'API Testing ensures that APIs send and receive data correctly between integrated components.'),
(19, 'What is service virtualization in Integration Testing?', 'Service virtualization simulates dependent services that are unavailable for testing.'),
(20, 'What is middleware in Integration Testing?', 'Middleware is software that enables communication between different modules in an integrated system.'),
(21, 'What is system integration testing (SIT)?', 'SIT verifies that an entire system functions correctly after integrating all its modules.'),
(22, 'How do you write an Integration Test?', 'Define the components to be tested, create test cases, set up test environments, execute tests, and validate results.'),
(23, 'What is end-to-end (E2E) testing in Integration Testing?', 'E2E testing verifies the entire application workflow from start to finish.'),
(24, 'What are common tools for Integration Testing?', 'Common tools include Selenium, Postman, JUnit, TestNG, and SoapUI.'),
(25, 'What is regression testing in Integration Testing?', 'Regression Testing ensures that new changes do not break existing integrated functionalities.'),
(26, 'What is an integration defect?', 'An integration defect is an issue that arises due to incorrect interactions between modules.'),
(27, 'What is mock testing in Integration Testing?', 'Mock testing uses fake modules to test integration without relying on real dependencies.'),
(28, 'What is a contract test in Integration Testing?', 'A contract test ensures that an API or module adheres to agreed-upon data structures and behaviors.'),
(29, 'Why is data consistency important in Integration Testing?', 'Data consistency ensures that information remains accurate and synchronized across integrated modules.'),
(30, 'What is the role of a database in Integration Testing?', 'Databases store and manage data shared between integrated components, requiring thorough validation in testing.');

-- --------------------------------------------------------

--
-- Table structure for table `iotprotocols_questions`
--

CREATE TABLE `iotprotocols_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `iotprotocols_questions`
--

INSERT INTO `iotprotocols_questions` (`id`, `question`, `answer`) VALUES
(1, 'What are IoT protocols?', 'IoT protocols are communication standards that enable devices to exchange data in an IoT ecosystem.'),
(2, 'What is MQTT?', 'MQTT (Message Queuing Telemetry Transport) is a lightweight messaging protocol designed for IoT devices.'),
(3, 'What are the key features of MQTT?', 'Lightweight, low bandwidth, publish-subscribe model, and QoS levels for message delivery.'),
(4, 'What is CoAP?', 'CoAP (Constrained Application Protocol) is a lightweight web protocol optimized for constrained IoT devices.'),
(5, 'How does CoAP differ from HTTP?', 'CoAP is designed for low-power devices, supports multicast, and uses UDP instead of TCP.'),
(6, 'What is HTTP and why is it used in IoT?', 'HTTP (HyperText Transfer Protocol) is used in IoT for web-based communication, though it is more resource-intensive than other protocols.'),
(7, 'What is AMQP?', 'AMQP (Advanced Message Queuing Protocol) is a messaging protocol used in IoT for secure and reliable communication.'),
(8, 'How does AMQP differ from MQTT?', 'AMQP is more feature-rich and supports message queuing, while MQTT is lightweight and designed for low-power devices.'),
(9, 'What is XMPP?', 'XMPP (Extensible Messaging and Presence Protocol) is a real-time messaging protocol used for device communication.'),
(10, 'What is DDS in IoT?', 'DDS (Data Distribution Service) is a middleware protocol for high-performance and real-time data exchange.'),
(11, 'What is Zigbee?', 'Zigbee is a low-power wireless communication protocol used for IoT applications like smart homes and industrial automation.'),
(12, 'What are the advantages of Zigbee?', 'Low power consumption, mesh networking, secure communication, and scalability.'),
(13, 'What is Z-Wave?', 'Z-Wave is a wireless communication protocol designed for home automation and IoT applications.'),
(14, 'How does Z-Wave differ from Zigbee?', 'Z-Wave operates at lower frequencies (900 MHz) and has better range, while Zigbee works on 2.4 GHz and supports more nodes.'),
(15, 'What is Bluetooth Low Energy (BLE)?', 'BLE is a power-efficient version of Bluetooth designed for IoT applications like wearable devices.'),
(16, 'What is LoRaWAN?', 'LoRaWAN (Long Range Wide Area Network) is a low-power, long-range IoT communication protocol.'),
(17, 'What are the benefits of LoRaWAN?', 'Long-range coverage, low power consumption, and support for large-scale IoT deployments.'),
(18, 'What is NB-IoT?', 'NB-IoT (Narrowband IoT) is a cellular IoT technology designed for low-power, wide-area applications.'),
(19, 'How does NB-IoT differ from LoRaWAN?', 'NB-IoT operates on licensed cellular networks, while LoRaWAN uses unlicensed spectrum for longer range but lower data rates.'),
(20, 'What is Sigfox?', 'Sigfox is a low-power, long-range IoT communication protocol designed for small data transmissions.'),
(21, 'What are the advantages of Sigfox?', 'Low power consumption, global coverage, and cost-effectiveness for IoT applications.'),
(22, 'What is RFID and how is it used in IoT?', 'RFID (Radio Frequency Identification) is used for tracking objects in IoT applications.'),
(23, 'What is NFC and how is it different from RFID?', 'NFC (Near Field Communication) is a short-range communication protocol, while RFID works at longer distances.'),
(24, 'What is OPC UA?', 'OPC UA (Open Platform Communications Unified Architecture) is a protocol for secure and reliable IoT communication.'),
(25, 'What is the role of IPv6 in IoT?', 'IPv6 enables a larger address space for IoT devices and improves network efficiency.'),
(26, 'What is 6LoWPAN?', '6LoWPAN (IPv6 over Low-Power Wireless Personal Area Networks) is a protocol that allows IoT devices to communicate over IPv6.'),
(27, 'What is BACnet?', 'BACnet is a communication protocol used for building automation and IoT applications.'),
(28, 'What is Modbus?', 'Modbus is a serial communication protocol used for industrial automation and IoT.'),
(29, 'What is LPWAN?', 'LPWAN (Low-Power Wide-Area Network) is a category of wireless protocols designed for long-range IoT communication.'),
(30, 'What are the security concerns in IoT protocols?', 'Data encryption, authentication, secure key management, and protection against cyberattacks.');

-- --------------------------------------------------------

--
-- Table structure for table `javascript_questions`
--

CREATE TABLE `javascript_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `javascript_questions`
--

INSERT INTO `javascript_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is JavaScript?', 'JavaScript is a high-level, interpreted programming language used to create dynamic web pages.'),
(2, 'What are JavaScript data types?', 'JavaScript has primitive data types: String, Number, Boolean, Null, Undefined, Symbol, and BigInt.'),
(3, 'What is the difference between `let`, `const`, and `var`?', '`var` is function-scoped, while `let` and `const` are block-scoped. `const` prevents reassignment.'),
(4, 'What is hoisting in JavaScript?', 'Hoisting is JavaScript’s default behavior of moving variable and function declarations to the top of their scope before execution.'),
(5, 'What is closure in JavaScript?', 'A closure is a function that remembers its outer scope even after the outer function has finished executing.'),
(6, 'What is the difference between `==` and `===`?', '`==` checks for value equality with type conversion, while `===` checks for both value and type equality.'),
(7, 'What is an Immediately Invoked Function Expression (IIFE)?', 'An IIFE is a function that runs immediately after it is defined, using syntax: `(function() {})();`.'),
(8, 'What is the difference between `null` and `undefined`?', '`null` is an assigned value representing no value, whereas `undefined` means a variable has been declared but not assigned a value.'),
(9, 'What are promises in JavaScript?', 'Promises are objects representing the eventual completion or failure of an asynchronous operation.'),
(10, 'What is the difference between synchronous and asynchronous JavaScript?', 'Synchronous JavaScript runs code sequentially, while asynchronous JavaScript allows execution to continue while waiting for a task to complete.'),
(11, 'What is the event loop in JavaScript?', 'The event loop is a mechanism that handles asynchronous callbacks by moving them from the task queue to the call stack.'),
(12, 'What is a callback function?', 'A callback is a function passed as an argument to another function to be executed later.'),
(13, 'What is `this` keyword in JavaScript?', '`this` refers to the object that is executing the current function.'),
(14, 'What is the difference between function declaration and function expression?', 'Function declarations are hoisted, while function expressions are not.'),
(15, 'What is an arrow function in JavaScript?', 'An arrow function is a shorthand syntax for defining functions using `=>`.'),
(16, 'What are template literals in JavaScript?', 'Template literals allow embedded expressions using backticks (`) and `${}` syntax.'),
(17, 'What is destructuring in JavaScript?', 'Destructuring allows extracting values from arrays or objects into distinct variables.'),
(18, 'What is the spread operator in JavaScript?', 'The spread operator (`...`) expands elements of an array or object into individual elements.'),
(19, 'What is the rest parameter in JavaScript?', 'The rest parameter (`...args`) collects multiple arguments into an array.'),
(20, 'What are JavaScript modules?', 'Modules allow code reuse by exporting and importing functions, objects, or variables between files.'),
(21, 'What is localStorage in JavaScript?', '`localStorage` allows storing key-value pairs persistently in the browser.'),
(22, 'What is sessionStorage in JavaScript?', '`sessionStorage` stores key-value pairs only for the session duration.'),
(23, 'What is the difference between `forEach`, `map`, `filter`, and `reduce`?', '`forEach` iterates through an array, `map` returns a new array, `filter` returns filtered elements, and `reduce` accumulates a single value.'),
(24, 'What is `setTimeout` in JavaScript?', '`setTimeout` is a function that executes a function after a specified time delay.'),
(25, 'What is `setInterval` in JavaScript?', '`setInterval` repeatedly executes a function at a specified time interval.'),
(26, 'What is the difference between `apply()`, `call()`, and `bind()`?', '`call()` invokes a function with a given `this`, `apply()` does the same but with an array of arguments, and `bind()` returns a new function.'),
(27, 'What is JSON in JavaScript?', 'JSON (JavaScript Object Notation) is a lightweight data format used for storing and exchanging data.'),
(28, 'What is AJAX?', 'AJAX (Asynchronous JavaScript and XML) allows updating parts of a webpage without reloading.'),
(29, 'What is Fetch API in JavaScript?', 'Fetch API is a modern replacement for AJAX, used to make HTTP requests.'),
(30, 'What is async/await in JavaScript?', '`async/await` provides a cleaner way to handle promises and asynchronous code.'),
(31, 'What is the difference between shallow copy and deep copy in JavaScript?', 'A shallow copy copies only references, while a deep copy duplicates all nested objects.'),
(32, 'What are weak references in JavaScript?', 'Weak references, like `WeakMap` and `WeakSet`, allow garbage collection of unused objects.'),
(33, 'What are generators in JavaScript?', 'Generators are functions that can pause execution and yield values using `function*` and `yield`.'),
(34, 'What is `typeof` operator in JavaScript?', '`typeof` returns the type of a variable, e.g., `typeof \"Hello\"` returns `\"string\"`.'),
(35, 'What is `instanceof` in JavaScript?', '`instanceof` checks if an object is an instance of a particular class or constructor.'),
(36, 'What is a symbol in JavaScript?', 'A symbol is a unique, immutable primitive data type.'),
(37, 'What is memoization in JavaScript?', 'Memoization is an optimization technique for caching function results to avoid redundant calculations.'),
(38, 'What is debouncing in JavaScript?', 'Debouncing delays function execution until a specified time has passed since the last call.'),
(39, 'What is throttling in JavaScript?', 'Throttling ensures a function executes at most once in a specified period.'),
(40, 'What is the difference between prototypal and classical inheritance?', 'Prototypal inheritance is based on object prototypes, while classical inheritance uses classes.'),
(41, 'What is an event delegation in JavaScript?', 'Event delegation allows handling events at a parent level instead of individual child elements.'),
(42, 'What is a higher-order function in JavaScript?', 'A higher-order function is a function that takes another function as an argument or returns a function.'),
(43, 'What is the difference between `document.querySelector` and `document.getElementById`?', '`querySelector` selects elements using CSS selectors, while `getElementById` selects an element by its ID.'),
(44, 'What is DOM in JavaScript?', 'The DOM (Document Object Model) represents an HTML document as a tree structure.'),
(45, 'What is event bubbling and event capturing?', 'Event bubbling propagates events from child to parent, while event capturing propagates from parent to child.'),
(46, 'What is `use strict` in JavaScript?', '`use strict` enforces stricter parsing and error handling in JavaScript.'),
(47, 'What is garbage collection in JavaScript?', 'Garbage collection automatically frees up memory used by objects that are no longer needed.');

-- --------------------------------------------------------

--
-- Table structure for table `java_questions`
--

CREATE TABLE `java_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `skills` varchar(255) DEFAULT 'java'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `java_questions`
--

INSERT INTO `java_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is the most important feature of Java?', 'Java is a platform independent language.', 'java'),
(2, 'What do you mean by platform independence?', 'Platform independence means that we can write and compile the java code in one platform (eg Windows) and can execute the class in any other supported platform eg (Linux,Solaris,etc).', 'java'),
(3, 'What is a JVM?', 'JVM is Java Virtual Machine which is a run time environment for the compiled java class files.', 'java'),
(4, 'Are JVM\'s platform independent?', 'JVM\'s are not platform independent. JVM\'s are platform specific run time implementation provided by the vendor.', 'java'),
(5, 'What is the difference between a JDK and a JVM?', 'JDK is Java Development Kit which is for development purpose and it includes execution environment also. But JVM is purely a run time environment and hence you will not be able to compile your source files using a JVM.', 'java'),
(6, 'What is a pointer and does Java support pointers?', 'Pointer is a reference handle to a memory location. Improper handling of pointers leads to memory leaks and reliability issues hence Java doesn\'t support the usage of pointers.', 'java'),
(7, 'What is the base class of all classes?', 'java.lang.Object', 'java'),
(8, 'Does Java support multiple inheritance?', 'Java doesn\'t support multiple inheritance.', 'java'),
(9, 'Is Java a pure object oriented language?', 'Java uses primitive data types and hence is not a pure object oriented language.', 'java'),
(10, 'Are arrays primitive data types?', 'In Java, Arrays are objects.', 'java'),
(11, 'What is difference between Path and Classpath?', 'Path and Classpath are operating system level environment variales. Path is used define where the system can find the executables(.exe) files and classpath is used to specify the location .class files.', 'java'),
(12, 'What are local variables?', 'Local varaiables are those which are declared within a block of code like methods. Local variables should be initialised before accessing them.', 'java'),
(13, 'What are instance variables?', 'Instance variables are those which are defined at the class level. Instance variables need not be initialized before using them as they are automatically initialized to their default values.', 'java'),
(14, 'How to define a constant variable in Java?', 'The variable should be declared as static and final . So only one copy of the variable exists for all instances of the class and the value can\'t be changed also. static final int MAX_LENGTH = 50; is an example for constant.', 'java'),
(15, 'Should a main() method be compulsorily declared in all java classes?', 'No not required. main() method should be defined only if the source class is a java application.', 'java'),
(16, 'What is the return type of the main() method?', 'Main() method doesn\'t return anything hence declared void .', 'java'),
(17, 'Why is the main() method declared static?', 'main() method is called by the JVM even before the instantiation of the class hence it is declared as static .', 'java'),
(18, 'What is the arguement of main() method?', 'main() method accepts an array of String object as arguement.', 'java'),
(19, 'Can a main() method be overloaded?', 'Yes. You can have any number of main() methods with different method signature and implementation in the class.', 'java'),
(20, 'Can a main() method be declared final?', 'Yes. Any inheriting class will not be able to have it\'s own default main() method.', 'java'),
(21, 'What is the difference between a constructor and a method?', 'The important difference between constructors and methods are: Constructors create and initialize objects that don\'t exist yet, while methods perform operations on objects that already exist. Constructors can\'t be called directly; they are called implicitly when the new keyword creates an object. Methods can be called directly on an object that has already been created with new keyword. Constructors must be named with the same name as the class name. They can\'t return anything, even void (the object itself is the implicit return). Methods must be declared to return something, although it can be void.', 'java'),
(22, 'What is the purpose of garbage collection in Java, and when is it used?', 'The purpose of garbage collection is to identify and discard objects that are no longer needed by a program so that their resources can be reclaimed and reused. A Java object is subject to garbage collection when it becomes unreachable to the program in which it is used.', 'java'),
(23, 'Describe synchronization in respect to multithreading.', 'With respect to multithreading, synchronization is the capability to control the access of multiple threads to shared resources. Without synchonization, it is possible for one thread to modify a shared variable while another thread is in the process of using or updating same shared variable. This usually leads to significant errors.', 'java'),
(24, 'What is an abstract class?', 'Abstract class must be extended/subclassed (to be useful). It serves as a template. A class that is abstract may not be instantiated (ie. you may not call its constructor), abstract class may contain static data. Any class with an abstract method is automatically abstract itself, and must be declared as such. A class may be declared abstract even if it has no abstract methods. This prevents it from being instantiated.', 'java'),
(25, 'What is the difference between an Interface and an Abstract class?', 'An abstract class can have instance methods that implement a default behavior. An Interface can only declare constants and instance methods, but cannot implement default behavior and all methods are implicitly abstract. An interface has all public members and no implementation. An abstract class is a class which may have the usual flavors of class members ( private, protected , etc.), but has some abstract methods.', 'java'),
(26, 'Explain different way of using thread?', 'The thread could be implemented by using runnable interface or by inheriting from the Thread class. The former is more advantageous, \'cause when you are going for multiple inheritance, the only interface can help.', 'java'),
(27, 'What is an Iterator?', 'Some of the collection classes provide traversal of their contents via a java.util.Iterator interface. This interface allows you to walk through a collection of objects, operating on each object in turn. Remember when using Iterators that they contain a snapshot of the collection at the time the Iterator was obtained; generally it is not advisable to modify the collection itself while traversing an Iterator.', 'java'),
(28, 'State the significance of public, private, protected, default modifiers both singly and in combination and state the effect of package relationships on declared items qualified by these modifiers.', 'public: Public class is visible in other packages, field is visible everywhere (class must be public too) private : Private variables or methods may be used only by an instance of the same class that declares the variable or method, A private feature may only be accessed by the class that owns the feature. protected : Is available to all classes in the same package and also available to all subclasses of the class that owns the protected feature. This access is provided even to subclasses that reside in a different package from the class that owns the protected feature. What you get by default ie, without any access modifier (ie, public private or protected). It means that it is visible to all within a particular package.', 'java'),
(29, 'What is static in java?', 'Static means one per class, not one for each object no matter how many instance of a class might exist. This means that you can use them without creating an instance of a class.Static methods are implicitly final, because overriding is done based on the type of the object, and static methods are attached to a class, not an object. A static method in a superclass can be shadowed by another static method in a subclass, as long as the original method was not declared final. However, you can\'t override a static method with a nonstatic method. In other words, you can\'t change a static method into an instance method in a subclass.', 'java'),
(30, 'What is final class?', 'A final class can\'t be extended ie., final class may not be subclassed. A final method can\'t be overridden when its class is inherited. You can\'t change value of a final variable (is a constant).', 'java'),
(31, 'What if the main() method is declared as private?', 'The program compiles properly but at runtime it will give \" main() method not public.\" message.', 'java'),
(32, 'What if the static modifier is removed from the signature of the main() method?', 'Program compiles. But at runtime throws an error \"NoSuchMethodError\".', 'java'),
(33, 'What if I write static public void instead of public static void?', 'Program compiles and runs properly.', 'java'),
(34, 'What if I do not provide the String array as the argument to the method?', 'Program compiles but throws a runtime error \"NoSuchMethodError\".', 'java'),
(35, 'What is the first argument of the String array in main() method?', 'The String array is empty. It does not have any element. This is unlike C/C++ where the first element by default is the program name.', 'java'),
(36, 'If I do not provide any arguments on the command line, then the String array of main() method will be empty or null?', 'It is empty. But not null.', 'java'),
(37, 'How can one prove that the array is not null but empty using one line of code?', 'Print args.length . It will print 0. That means it is empty. But if it would have been null then it would have thrown a NullPointerException on attempting to print args.length .', 'java'),
(38, 'What environment variables do I need to set on my machine in order to be able to run Java programs?', 'CLASSPATH and PATH are the two variables.', 'java'),
(39, 'Can an application have multiple classes having main() method?', 'Yes it is possible. While starting the application we mention the class name to be run. The JVM will look for the Main method only in the class whose name you have mentioned. Hence there is not conflict amongst the multiple classes having main() method.', 'java'),
(40, 'Can I have multiple main() methods in the same class?', 'No the program fails to compile. The compiler says that the main() method is already defined in the class.', 'java'),
(41, 'What is a transient variable?', 'A transient variable is a variable that may not be serialized.', 'java'),
(42, 'Which containers use a border Layout as their default layout?', 'The Window , Frame and Dialog classes use a border layout as their default layout.', 'java'),
(43, 'Why do threads block on I/O?', 'Threads block on I/O (that is enters the waiting state) so that other threads may execute while the I/O Operation is performed.', 'java'),
(44, 'How are Observer and Observable used?', 'Objects that subclass the Observable class maintain a list of observers. When an Observable object is updated it invokes the update() method of each of its observers to notify the observers that it has changed state. The Observer interface is implemented by objects that observe Observable objects.', 'java'),
(45, 'What is synchronization and why is it important?', 'With respect to multithreading, synchronization is the capability to control the access of multiple threads to shared resources. Without synchronization, it is possible for one thread to modify a shared object while another thread is in the process of using or updating that object\'s value. This often leads to significant errors.', 'java'),
(46, 'Can a lock be acquired on a class?', 'Yes, a lock can be acquired on a class. This lock is acquired on the class\'s Class object..', 'java'),
(47, 'What\'s new with the stop(), suspend() and resume() methods in JDK 1.2?', 'The stop() , suspend() and resume() methods have been deprecated in JDK 1.2.', 'java'),
(48, 'Is null a keyword?', 'The null is not a keyword.', 'java'),
(49, 'What is the preferred size of a component?', 'The preferred size of a component is the minimum component size that will allow the component to display normally.', 'java'),
(50, 'What method is used to specify a container\'s layout?', 'The setLayout() method is used to specify a container\'s layout.', 'java'),
(51, 'Which containers use a FlowLayout as their default layout?', 'The Panel and Applet classes use the FlowLayout as their default layout.', 'java'),
(52, 'What state does a thread enter when it terminates its processing?', 'When a thread terminates its processing, it enters the dead state.', 'java'),
(53, 'What is the Collections API?', 'The Collections API is a set of classes and interfaces that support operations on collections of objects.', 'java'),
(54, 'Which characters may be used as the second character of an identifier, but not as the first character of an identifier?', 'The digits 0 through 9 may not be used as the first character of an identifier but they may be used after the first character of an identifier.', 'java'),
(55, 'What is the List interface?', 'The List interface provides support for ordered collections of objects.', 'java'),
(56, 'How does Java handle integer overflows and underflows?', 'It uses those low order bytes of the result that can fit into the size of the type allowed by the operation.', 'java');

-- --------------------------------------------------------

--
-- Table structure for table `junit_questions`
--

CREATE TABLE `junit_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'junit'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `junit_questions`
--

INSERT INTO `junit_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is Testing?', 'Testing is the process of checking the functionality of the application whether it fulfills the requirement or not.', 'junit'),
(2, 'What is JUnit?', 'JUnit is the testing framework, it is used for unit testing of Java code. JUnit = Java + Unit Testing.', 'junit'),
(3, 'What is unit testing?', 'The process of testing individual functionality (known as a unit) of the application is called unit testing.', 'junit'),
(4, 'What is the difference between manual testing and automated testing?', 'Manual testing is performed by Human, so it is time-consuming and costly. Automated testing is performed by testing tools or programs, so it is fast and less costly.', 'junit'),
(5, 'Give some disadvantages of manual testing.', 'The testing is very time consuming and is very tiring. The testing demands a very big investment in the human resources. The testing is less reliable. The testing cannot be programmed.', 'junit'),
(6, 'List out some advantages of automated testing.', 'It is very fast. Investment is very less. Testing is more reliable. The testing can be programmed.', 'junit'),
(7, 'Is it necessary to write the test case for every logic?', 'No, we should write the test case only for that logic that can be reasonably broken.', 'junit'),
(8, 'What are the useful JUnit extensions?', 'JWebUnit, XMLUnit, Cactus, MockObject.', 'junit'),
(9, 'What are the features of JUnit?', 'Opensource, Annotation support for test cases, Assertion support for checking the expected result, Test runner support to execute the test case.', 'junit'),
(10, 'How is the testing of the protected method done?', 'To test the protected method, the test class is declared in the same package as the target class.', 'junit'),
(11, 'How is the testing of private method done?', 'There is no direct way for testing of the private method; hence manual testing is to be performed, or the method is changed to protected method.', 'junit'),
(12, 'If the JUnit method\'s return type is string, what will happen?', 'JUnit test methods are designed to return void. So the execution will fail.', 'junit'),
(13, 'Is the use of main method possible for unit testing?', 'Yes.', 'junit'),
(14, 'Is it necessary to write the test class to test every class?', 'No.', 'junit'),
(15, 'What does XMLUnit provide?', 'Junit extension class, XMLTestCase and set of supporting classes is provided by the XMLUnit.', 'junit'),
(16, 'List the core components of Cactus.', 'Cactus Framework, Cactus Integration Module.', 'junit'),
(17, 'What are the methods in fixtures?', 'setup, tearDown.', 'junit'),
(18, 'What is the Unit Test Case?', 'A Unit Test Case is the combination of input data and expected output result. It is defined to test the functionality of a unit.', 'junit'),
(19, 'What is the use of @Test annotation?', 'The @Test annotation is used to mark the method as the test method.', 'junit'),
(20, 'What is the test suit?', 'The test suit allows us to group multiple test cases so that it can be run together. TestSuit is the container class under junit.framework.TestSuite package.', 'junit'),
(21, 'What does test runner?', 'The test runner is used to execute the test cases.', 'junit'),
(22, 'What are the important JUnit annotations?', '@Test, @BeforeClass, @Before, @After, @AfterClass.', 'junit');

-- --------------------------------------------------------

--
-- Table structure for table `kotlin_questions`
--

CREATE TABLE `kotlin_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kotlin_questions`
--

INSERT INTO `kotlin_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Kotlin?', 'Kotlin is a modern, statically typed programming language developed by JetBrains and officially supported by Google for Android development.'),
(2, 'How does Kotlin differ from Java?', 'Kotlin has null safety, extension functions, concise syntax, and improved type inference compared to Java.'),
(3, 'What are the key features of Kotlin?', 'Key features include null safety, type inference, coroutines, extension functions, data classes, and interoperability with Java.'),
(4, 'What is type inference in Kotlin?', 'Type inference allows Kotlin to determine variable types automatically without explicit declaration.'),
(5, 'What is a nullable type in Kotlin?', 'A nullable type allows a variable to hold a null value, denoted by adding a question mark (?) after the type.'),
(6, 'How do you handle null values in Kotlin?', 'Using safe calls (?.), the Elvis operator (?:), and the !! operator for forced unwrapping.'),
(7, 'What is the Elvis operator in Kotlin?', 'The Elvis operator (?:) provides a default value when a nullable expression evaluates to null.'),
(8, 'What are extension functions in Kotlin?', 'Extension functions allow adding new functionality to existing classes without modifying their source code.'),
(9, 'What is a data class in Kotlin?', 'A data class is a class primarily used to hold data, automatically generating useful methods like equals() and toString().'),
(10, 'What are sealed classes in Kotlin?', 'Sealed classes restrict inheritance and allow defining a fixed set of subclasses.'),
(11, 'What is a companion object in Kotlin?', 'A companion object allows defining static methods and properties inside a class.'),
(12, 'What is the difference between val and var in Kotlin?', 'val is used for immutable variables (read-only), while var is used for mutable variables.'),
(13, 'What is the difference between List and MutableList in Kotlin?', 'List is immutable, while MutableList allows modification of elements.'),
(14, 'What is a lambda expression in Kotlin?', 'A lambda expression is an anonymous function that can be assigned to a variable or passed as an argument.'),
(15, 'What are higher-order functions in Kotlin?', 'Higher-order functions take functions as parameters or return functions as results.'),
(16, 'What is the difference between apply, let, run, and with in Kotlin?', 'These are scope functions used for executing code within a particular object context.'),
(17, 'What is the purpose of coroutines in Kotlin?', 'Coroutines provide a way to handle asynchronous programming efficiently.'),
(18, 'What is the difference between launch and async in Kotlin coroutines?', 'launch starts a coroutine that does not return a result, while async returns a Deferred result.'),
(19, 'What are suspend functions in Kotlin?', 'Suspend functions are functions that can be paused and resumed within coroutines.'),
(20, 'What is the difference between lateinit and lazy in Kotlin?', 'lateinit is used for initializing non-null properties later, while lazy is used for lazy initialization.'),
(21, 'What is the difference between == and === in Kotlin?', '== checks structural equality, while === checks referential equality.'),
(22, 'How does Kotlin handle exception handling?', 'Using try-catch blocks, similar to Java.'),
(23, 'What is an inline function in Kotlin?', 'An inline function is a function that gets inlined at the call site to reduce function call overhead.'),
(24, 'What is a singleton in Kotlin?', 'A singleton is implemented using the object keyword to create a single instance of a class.'),
(25, 'What is the purpose of the when expression in Kotlin?', 'when is a powerful alternative to switch statements in other languages.'),
(26, 'What are smart casts in Kotlin?', 'Smart casts automatically cast variables after type checking using is.');

-- --------------------------------------------------------

--
-- Table structure for table `kubernetes_questions`
--

CREATE TABLE `kubernetes_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kubernetes_questions`
--

INSERT INTO `kubernetes_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Kubernetes?', 'Kubernetes is an open-source container orchestration platform for automating deployment, scaling, and management of containerized applications.'),
(2, 'What are the key components of Kubernetes?', 'Key components include the API server, etcd, controller manager, scheduler, kubelet, and kube-proxy.'),
(3, 'What is a Kubernetes Pod?', 'A Pod is the smallest deployable unit in Kubernetes, consisting of one or more containers sharing storage and network.'),
(4, 'What is a Kubernetes Node?', 'A Node is a worker machine in Kubernetes that runs Pods and contains the necessary services to manage containers.'),
(5, 'What is a Kubernetes Cluster?', 'A Cluster is a set of nodes that run containerized applications, managed by a control plane.'),
(6, 'What is the role of the API Server in Kubernetes?', 'The API Server acts as the front-end for the Kubernetes control plane and handles communication between components.'),
(7, 'What is etcd in Kubernetes?', '`etcd` is a distributed key-value store used to store cluster configuration and state information.'),
(8, 'What is a Deployment in Kubernetes?', 'A Deployment is a higher-level abstraction that manages ReplicaSets and provides declarative updates to applications.'),
(9, 'What is a ReplicaSet in Kubernetes?', 'A ReplicaSet ensures a specified number of identical Pods are running at all times.'),
(10, 'What is a Service in Kubernetes?', 'A Service provides stable network access to a set of Pods, ensuring load balancing and discovery.'),
(11, 'What are the types of Kubernetes Services?', 'Types include ClusterIP, NodePort, LoadBalancer, and ExternalName.'),
(12, 'What is a ConfigMap in Kubernetes?', 'A ConfigMap stores configuration data as key-value pairs that can be used by Pods.'),
(13, 'What is a Secret in Kubernetes?', 'A Secret stores sensitive data such as passwords and API keys securely within Kubernetes.'),
(14, 'What is a Namespace in Kubernetes?', 'A Namespace is a logical partition within a Kubernetes cluster for isolating resources.'),
(15, 'What is a StatefulSet in Kubernetes?', 'A StatefulSet manages stateful applications, ensuring each Pod has a unique identity and persistent storage.'),
(16, 'What is a DaemonSet in Kubernetes?', 'A DaemonSet ensures that a specific Pod runs on all or some nodes in the cluster.'),
(17, 'What is a Job in Kubernetes?', 'A Job runs a short-lived, one-time task and ensures completion of a specified workload.'),
(18, 'What is a CronJob in Kubernetes?', 'A CronJob runs scheduled tasks at predefined times, similar to cron jobs in Linux.'),
(19, 'What is a Persistent Volume (PV) in Kubernetes?', 'A Persistent Volume is a storage resource provisioned for Kubernetes Pods, managed independently of Pods.'),
(20, 'What is a Persistent Volume Claim (PVC) in Kubernetes?', 'A Persistent Volume Claim is a request for storage by a Pod, binding to a Persistent Volume.'),
(21, 'What is Ingress in Kubernetes?', 'Ingress manages external HTTP/S access to services, providing routing and load balancing.'),
(22, 'What is a Kubernetes Helm chart?', 'A Helm chart is a package of pre-configured Kubernetes resources used for managing applications.'),
(23, 'What is the difference between a Deployment and a StatefulSet?', 'Deployments manage stateless applications, while StatefulSets manage stateful applications with unique identities.'),
(24, 'What is kubelet in Kubernetes?', 'Kubelet is an agent running on nodes, responsible for managing container lifecycles.'),
(25, 'What is kube-proxy in Kubernetes?', 'Kube-proxy maintains network rules on nodes and enables communication between services.'),
(26, 'What is a Kubernetes Admission Controller?', 'An Admission Controller intercepts requests to the API Server and enforces security and resource policies.'),
(27, 'What is Horizontal Pod Autoscaler (HPA)?', 'HPA automatically scales the number of Pods based on CPU or memory usage.'),
(28, 'What is Vertical Pod Autoscaler (VPA)?', 'VPA adjusts the resource requests and limits of running Pods based on actual usage.'),
(29, 'What is Kubernetes RBAC?', 'Role-Based Access Control (RBAC) is used to control user and application permissions in Kubernetes.'),
(30, 'What is a Sidecar container in Kubernetes?', 'A Sidecar container runs alongside the main container in a Pod, providing supplementary functionality such as logging or monitoring.');

-- --------------------------------------------------------

--
-- Table structure for table `linux_questions`
--

CREATE TABLE `linux_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `linux_questions`
--

INSERT INTO `linux_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Linux?', 'Linux is an open-source, Unix-like operating system based on the Linux kernel.'),
(2, 'What is the difference between Linux and Unix?', 'Linux is an open-source OS inspired by Unix, whereas Unix is a proprietary OS developed by AT&T.'),
(3, 'What are the different types of Linux distributions?', 'Popular Linux distributions include Ubuntu, CentOS, Fedora, Debian, and Arch Linux.'),
(4, 'What is the Linux kernel?', 'The Linux kernel is the core component of the Linux operating system that manages hardware and system processes.'),
(5, 'What is the purpose of the \"ls\" command?', 'The \"ls\" command lists files and directories in the current directory.'),
(6, 'What does the \"pwd\" command do?', 'The \"pwd\" command prints the current working directory.'),
(7, 'How do you create a file in Linux?', 'Use the \"touch filename\" command to create a new file.'),
(8, 'How do you create a directory in Linux?', 'Use the \"mkdir directory_name\" command to create a directory.'),
(9, 'What is the difference between absolute and relative paths?', 'Absolute paths specify the full path from root, while relative paths are based on the current directory.'),
(10, 'How do you move or rename a file in Linux?', 'Use the \"mv source destination\" command to move or rename a file.'),
(11, 'How do you delete a file in Linux?', 'Use the \"rm filename\" command to remove a file.'),
(12, 'How do you delete a directory in Linux?', 'Use the \"rm -r directory_name\" command to remove a directory and its contents.'),
(13, 'What does the \"chmod\" command do?', 'The \"chmod\" command changes file permissions in Linux.'),
(14, 'What does the \"chown\" command do?', 'The \"chown\" command changes the ownership of a file or directory.'),
(15, 'How do you view running processes in Linux?', 'Use the \"ps\" or \"top\" command to view active processes.'),
(16, 'What is the purpose of the \"kill\" command?', 'The \"kill\" command terminates a process by its process ID (PID).'),
(17, 'How do you find the process ID of a running program?', 'Use the \"ps aux\" or \"pidof program_name\" command.'),
(18, 'What is a shell in Linux?', 'A shell is a command-line interface that allows users to interact with the operating system.'),
(19, 'What is the difference between bash and sh?', 'Bash is an improved version of the original Bourne shell (sh) with additional features.'),
(20, 'How do you search for a file in Linux?', 'Use the \"find\" or \"locate\" command to search for files.'),
(21, 'What is the purpose of the \"grep\" command?', 'The \"grep\" command searches for text patterns in files.'),
(22, 'How do you check disk space usage in Linux?', 'Use the \"df -h\" command to check disk space usage.'),
(23, 'How do you check memory usage in Linux?', 'Use the \"free -m\" command to check memory usage.'),
(24, 'What is a symbolic link?', 'A symbolic link is a shortcut that points to another file or directory.'),
(25, 'How do you create a symbolic link?', 'Use the \"ln -s target link_name\" command.'),
(26, 'What is the difference between hard and soft links?', 'Hard links reference the same inode, while soft links are pointers to files.'),
(27, 'How do you switch users in Linux?', 'Use the \"su username\" or \"sudo -i\" command.'),
(28, 'What is the root user in Linux?', 'The root user is the superuser with full administrative privileges.'),
(29, 'How do you update packages in Linux?', 'Use \"apt-get update && apt-get upgrade\" in Debian-based systems or \"yum update\" in Red Hat-based systems.'),
(30, 'How do you check the Linux version?', 'Use the \"uname -a\" or \"cat /etc/os-release\" command.');

-- --------------------------------------------------------

--
-- Table structure for table `logical_quesions`
--

CREATE TABLE `logical_quesions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logical_quesions`
--

INSERT INTO `logical_quesions` (`id`, `question`, `answer`) VALUES
(1, 'A farmer needs to cross a river with a wolf, a goat, and a cabbage. He has a small boat that can carry only him and one other item at a time. How can he safely get everything across?', '1. Take the goat across first and leave it on the other side.\r\n2. Go back alone and take the wolf across.\r\n3. Bring the goat back with him.\r\n4. Take the cabbage across and leave it with the wolf.\r\n5. Finally, return alone and bring the goat across.'),
(2, 'A rope burns completely in 60 minutes, but it does not burn at a uniform rate. How can you measure exactly 45 minutes?', '1. Light one rope from both ends and another from one end simultaneously.\r\n2. The first rope will burn completely in 30 minutes.\r\n3. When it finishes, light the second rope from the other end as well.\r\n4. The remaining part of the second rope will burn in 15 minutes.'),
(3, 'Find the missing number in the sequence: 2, 6, 12, 20, __, 42, 56', 'Answer: 30. The pattern follows n^2 + n. Example: 1^2+1=2, 2^2+2=6, 3^2+3=12, etc.'),
(4, 'A man starts climbing a 30-meter well. He climbs 3 meters during the day but slips down 2 meters at night. How many days will it take him to get out?', 'Answer: 28 days. On the 27th day, he reaches 27 meters. On the 28th day, he climbs 3 meters and gets out without slipping down.'),
(5, 'What comes next in the pattern: 3, 6, 11, 18, 27, __?', 'Answer: 38. The pattern follows n^2 + n: 1^2+2=3, 2^2+2=6, 3^2+2=11, 4^2+2=18, etc.'),
(6, 'You see a house with all four walls facing south, and a bear is walking around it. What color is the bear?', 'Answer: White. The only place on Earth where all walls face south is the North Pole, meaning the bear is a polar bear.'),
(7, 'A clock shows the time as 3:15. What is the angle between the hour and minute hands?', 'Answer: 7.5 degrees. The hour hand moves 30 degrees per hour, so at 3:15, it has moved (3 × 30) + (15/60 × 30) = 97.5 degrees. The minute hand is at 90 degrees. The difference is 97.5 - 90 = 7.5 degrees.'),
(8, 'A man gave one son 10 cents and another son was given 15 cents. What time is it?', 'Answer: 1:50 (A play on words: \"ten to two\").'),
(9, 'What comes next in the series: 1, 4, 9, 16, 25, __?', 'Answer: 36. The sequence follows n^2 (1^2, 2^2, 3^2, etc.).'),
(10, 'If a bat and a ball together cost $1.10, and the bat costs $1.00 more than the ball, how much does the ball cost?', 'Answer: $0.05. If the ball were $0.10, then the bat would be $1.10, totaling $1.20. The correct answer is $0.05 and $1.05.'),
(11, 'If you rearrange the letters of \"NEW DOOR,\" what other word can be made?', 'Answer: \"ONE WORD\".'),
(12, 'Which number is missing? 8, 27, __, 125, 216', 'Answer: 64. The pattern follows n^3 (2^3, 3^3, 4^3, etc.).'),
(13, 'Two fathers and two sons go fishing. They catch three fish. How is this possible?', 'Answer: They are a grandfather, father, and son (three people total).'),
(14, 'What is the next letter in the series: J, F, M, A, M, J, J, A, S, O, __?', 'Answer: N (The first letter of each month: January, February, etc.).'),
(15, 'There are three light switches outside a room. Inside the room, there are three bulbs. You can enter the room only once. How do you determine which switch controls which bulb?', 'Answer: Turn on the first switch for a few minutes, then turn it off. Turn on the second switch and enter the room. The hot bulb is from the first switch, the lit bulb is from the second switch, and the remaining one is from the third switch.'),
(16, 'How can you make 1000 by using eight 8s?', 'Answer: 888 + 88 + 8 + 8 + 8 = 1000.'),
(17, 'What comes next in the pattern: 1, 1, 2, 3, 5, 8, __?', 'Answer: 13 (Fibonacci sequence: each term is the sum of the two previous terms).'),
(18, 'A horse is tied to a 10-foot rope, but it still manages to eat grass 20 feet away. How?', 'Answer: The rope isn’t tied to anything.'),
(19, 'A man stands on one side of a river. His dog is on the other. The man calls his dog, who immediately crosses the river without getting wet or using a bridge or boat. How?', 'Answer: The river was frozen.'),
(20, 'A train 150 meters long is moving at 60 km/h. How long will it take to pass a pole?', 'Answer: 9 seconds. Convert 60 km/h to meters per second: (60 × 1000) / 3600 = 16.67 m/s. Time = Distance / Speed = 150 / 16.67 = 9 seconds.'),
(21, 'Which number comes next: 2, 6, 12, 20, __?', 'Answer: 30. The pattern follows n^2 + n.'),
(22, 'A plane crashes on the border of the USA and Canada. Where do they bury the survivors?', 'Answer: Nowhere, because survivors are not buried!'),
(23, 'What has keys but can’t open locks?', 'Answer: A piano.');

-- --------------------------------------------------------

--
-- Table structure for table `manualtesting_questions`
--

CREATE TABLE `manualtesting_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manualtesting_questions`
--

INSERT INTO `manualtesting_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Manual Testing?', 'Manual Testing is the process of testing software manually to identify defects without using automation tools.'),
(2, 'What are the advantages of Manual Testing?', 'Manual Testing is cost-effective, flexible, and allows for exploratory testing.'),
(3, 'What are the disadvantages of Manual Testing?', 'It is time-consuming, error-prone, and not suitable for large-scale repetitive tests.'),
(4, 'What are the types of Manual Testing?', 'Types include Black Box Testing, White Box Testing, Functional Testing, and Exploratory Testing.'),
(5, 'What is Black Box Testing?', 'Black Box Testing focuses on testing software functionality without knowing the internal code structure.'),
(6, 'What is White Box Testing?', 'White Box Testing examines the internal workings of an application, including its code and logic.'),
(7, 'What is Grey Box Testing?', 'Grey Box Testing is a mix of Black Box and White Box Testing where the tester has partial knowledge of the system.'),
(8, 'What is Exploratory Testing?', 'Exploratory Testing involves testers exploring the application without predefined test cases to find defects.'),
(9, 'What is Functional Testing?', 'Functional Testing verifies that the application meets functional requirements.'),
(10, 'What is Non-Functional Testing?', 'Non-Functional Testing checks aspects like performance, security, and usability.'),
(11, 'What is a Test Case?', 'A Test Case is a document containing test inputs, execution conditions, and expected results.'),
(12, 'What is a Test Scenario?', 'A Test Scenario is a high-level test condition that covers multiple test cases.'),
(13, 'What is a Test Plan?', 'A Test Plan is a document outlining the testing approach, scope, schedule, and resources.'),
(14, 'What is the difference between Test Case and Test Scenario?', 'A Test Case is a step-by-step process, while a Test Scenario is a broader concept covering multiple test cases.'),
(15, 'What is Regression Testing?', 'Regression Testing ensures that new changes do not affect existing functionality.'),
(16, 'What is Smoke Testing?', 'Smoke Testing is a basic test to check whether the application is stable enough for further testing.'),
(17, 'What is Sanity Testing?', 'Sanity Testing verifies specific functionality after minor changes to ensure the system is working as expected.'),
(18, 'What is Ad-hoc Testing?', 'Ad-hoc Testing is an informal, unstructured testing approach conducted without test cases.'),
(19, 'What is Usability Testing?', 'Usability Testing evaluates how user-friendly and intuitive an application is.'),
(20, 'What is Compatibility Testing?', 'Compatibility Testing ensures that the application works across different devices, browsers, and operating systems.'),
(21, 'What is Acceptance Testing?', 'Acceptance Testing checks whether the software meets business requirements and is ready for release.'),
(22, 'What is Alpha Testing?', 'Alpha Testing is conducted by testers in a controlled environment before releasing the software to users.'),
(23, 'What is Beta Testing?', 'Beta Testing is performed by real users in a live environment to gather feedback before full deployment.'),
(24, 'What is System Testing?', 'System Testing verifies that the entire application functions as expected with all integrated components.'),
(25, 'What is End-to-End Testing?', 'End-to-End Testing validates the entire workflow of an application from start to finish.'),
(26, 'What is Defect Life Cycle?', 'The Defect Life Cycle refers to the various stages a bug goes through from identification to resolution.'),
(27, 'What is Severity in Testing?', 'Severity indicates the impact of a defect on the application, ranging from critical to minor.'),
(28, 'What is Priority in Testing?', 'Priority defines the order in which defects should be fixed based on business needs.'),
(29, 'What is the difference between Verification and Validation?', 'Verification checks whether the product is built correctly, while Validation ensures it meets user requirements.'),
(30, 'What are some common Manual Testing tools?', 'Common tools include TestRail, Jira, Bugzilla, and Mantis for test management and defect tracking.');

-- --------------------------------------------------------

--
-- Table structure for table `mongodb_questions`
--

CREATE TABLE `mongodb_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'mongodb'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mongodb_questions`
--

INSERT INTO `mongodb_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What are some of the advantages of MongoDB?', 'Some advantages of MongoDB are as follows: MongoDB supports field, range-based, string pattern matching type queries for searching the data in the database. MongoDB supports primary and secondary index on any fields. MongoDB uses JavaScript objects in place of procedures. MongoDB uses a dynamic database schema. MongoDB is very easy to scale up or down. MongoDB has inbuilt support for data partitioning (Sharding).', 'mongodb'),
(2, 'When to use MongoDB?', 'You should use MongoDB when building internet and business applications that need to evolve quickly and scale elegantly. MongoDB is popular with developers building scalable applications using agile methodologies. Use MongoDB when you need to: Support rapid iterative development, Scale to high levels of read and write traffic, Scale your data repository to a massive size, Evolve deployment as the business changes, Store, manage, and search data with text, geospatial, or time-series dimensions.', 'mongodb'),
(3, 'What are the data types in MongoDB?', 'MongoDB supports a wide range of data types in documents. Some common data types are: Null, Boolean, Number, String, Date, Regular expression, Array, Embedded document, Object ID, Binary Data, and Code.', 'mongodb'),
(4, 'How to perform queries in MongoDB?', 'The find method is used to perform queries in MongoDB. It returns a subset of documents in a collection based on the query criteria. Example: db.users.find({\"age\": 24})', 'mongodb'),
(5, 'How do you Delete a Document?', 'MongoDB provides deleteOne and deleteMany methods for deleting documents. They take a filter document as a parameter. Example: db.books.deleteOne({\"_id\": 3})', 'mongodb'),
(6, 'How do you Update a Document?', 'Documents can be updated using updateOne, updateMany, or replaceOne. Example of replaceOne: db.users.replaceOne({\"_id\": ObjectId(\"4b2b9f67a1f631733d917a7a\")}, {\"name\": \"alice\", \"friends\": 24, \"enemies\": 2})', 'mongodb'),
(7, 'How to add data in MongoDB?', 'Use insertOne for a single document or insertMany for multiple documents. Example: db.books.insertOne({\"title\": \"Start With Why\"})', 'mongodb'),
(8, 'What are some features of MongoDB?', 'Features include Indexing, Aggregation, Special collection and index types, File storage, and Sharding.', 'mongodb'),
(9, 'How does Scale-Out occur in MongoDB?', 'MongoDB uses sharding to split data across multiple servers. It automatically redistributes documents. mongos acts as a query router and config servers store metadata and configuration settings for the cluster.', 'mongodb'),
(10, 'What is the Mongo Shell?', 'The Mongo Shell is a JavaScript shell for interacting with a MongoDB instance from the command line. Example: Start the shell with $ mongo.', 'mongodb'),
(11, 'What are Databases in MongoDB?', 'MongoDB groups collections into databases. Reserved database names include admin, local, and config.', 'mongodb'),
(12, 'What is a Collection in MongoDB?', 'A collection is a group of documents, similar to a table in a relational database. Collections have dynamic schemas, allowing documents with different structures.', 'mongodb'),
(13, 'What is a Document in MongoDB?', 'A Document is an ordered set of keys with associated values, represented as objects in JavaScript. Example: {\"greeting\": \"Hello world!\", \"views\": 3}', 'mongodb'),
(14, 'How is Querying done in MongoDB?', 'The find method is used for querying. Example: db.users.find({\"username\": \"alice\"})', 'mongodb'),
(15, 'Explain the SET Modifier in MongoDB?', '\"$set\" is used to update or add a field. Example: db.users.updateOne({\"_id\": ObjectId(\"4b253b067525f35f94b60a31\")}, {\"$set\": {\"favorite book\": \"Start with Why\"}})', 'mongodb'),
(16, 'Explain the process of Sharding.', 'Sharding splits data across machines for scalability. In MongoDB, shards are clusters of machines storing subsets of data.', 'mongodb'),
(17, 'What are Geospatial Indexes in MongoDB?', 'MongoDB supports 2dsphere and 2d indexes for geospatial queries. 2dsphere indexes model the earth\'s surface for accurate distance calculations.', 'mongodb'),
(18, 'Explain the term \'Indexing\' in MongoDB.', 'Indexes help efficiently resolve queries by storing an ordered list of values for specific fields. Example: db.users.createIndex({\"username\": 1})', 'mongodb'),
(19, 'What do you mean by Transactions?', 'Transactions ensure consistency in MongoDB. There are two APIs: Core API (start_transaction, commit_transaction) and Call-back API (recommended).', 'mongodb'),
(20, 'What are MongoDB Charts?', 'MongoDB Charts is a data visualization tool for MongoDB databases, offering PaaS and Server implementations.', 'mongodb'),
(21, 'What is the Aggregation Framework in MongoDB?', 'The aggregation framework performs analytics on documents using a pipeline of stages to process input data.', 'mongodb'),
(22, 'Explain the concept of pipeline in the MongoDB aggregation framework.', 'A pipeline stage processes each input document and produces an output document stream.', 'mongodb'),
(23, 'What is a Replica Set in MongoDB?', 'A replica set is a group of servers with one primary (handling writes) and multiple secondaries (keeping copies). It provides redundancy and high availability.', 'mongodb'),
(24, 'Explain the Replication Architecture in MongoDB.', 'Primary nodes save changes in the Oplog, and secondary nodes replicate changes from the Oplog, maintaining data consistency.', 'mongodb'),
(25, 'What are some utilities for backup and restore in MongoDB?', 'Utilities include mongoimport, mongoexport, mongodump, and mongorestore for data backup and restoration.', 'mongodb');

-- --------------------------------------------------------

--
-- Table structure for table `mysql_questions`
--

CREATE TABLE `mysql_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mysql_questions`
--

INSERT INTO `mysql_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is MySQL?', 'MySQL is an open-source relational database management system (RDBMS) based on SQL.'),
(2, 'What are the key features of MySQL?', 'High performance, scalability, open-source, ACID compliance, and strong security.'),
(3, 'What is the default storage engine in MySQL?', 'InnoDB.'),
(4, 'What is the difference between MyISAM and InnoDB?', 'InnoDB supports transactions and foreign keys, while MyISAM does not but offers faster read performance.'),
(5, 'What is ACID in MySQL?', 'ACID (Atomicity, Consistency, Isolation, Durability) ensures reliable transactions in MySQL.'),
(6, 'What is normalization in MySQL?', 'Normalization is the process of structuring a database to reduce redundancy and improve efficiency.'),
(7, 'What are the different types of joins in MySQL?', 'INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN.'),
(8, 'What is the difference between INNER JOIN and LEFT JOIN?', 'INNER JOIN returns only matching records, while LEFT JOIN returns all records from the left table and matching records from the right table.'),
(9, 'What is a primary key?', 'A primary key is a unique identifier for a row in a table.'),
(10, 'What is a foreign key?', 'A foreign key is a column that establishes a relationship between two tables.'),
(11, 'What is an index in MySQL?', 'An index is a database structure that improves the speed of queries.'),
(12, 'What are the different types of indexes in MySQL?', 'Primary index, unique index, full-text index, and composite index.'),
(13, 'What is a stored procedure?', 'A stored procedure is a precompiled set of SQL statements stored in the database.'),
(14, 'What is a trigger in MySQL?', 'A trigger is a set of SQL statements that execute automatically when a specified event occurs.'),
(15, 'What is a view in MySQL?', 'A view is a virtual table based on a SELECT query.'),
(16, 'What is the difference between DELETE and TRUNCATE?', 'DELETE removes specific rows and can be rolled back, while TRUNCATE removes all rows and cannot be rolled back.'),
(17, 'What is the difference between CHAR and VARCHAR?', 'CHAR has a fixed length, while VARCHAR has a variable length.'),
(18, 'What is the difference between NOW() and CURRENT_TIMESTAMP?', 'Both return the current date and time, but NOW() returns a string while CURRENT_TIMESTAMP() returns a timestamp.'),
(19, 'What is the difference between GROUP BY and ORDER BY?', 'GROUP BY groups rows with the same values, while ORDER BY sorts rows.'),
(20, 'How do you optimize a MySQL query?', 'Use indexes, optimize joins, avoid SELECT *, limit results, and analyze query execution plans.'),
(21, 'What is the use of the EXPLAIN statement in MySQL?', 'EXPLAIN provides insights into how MySQL executes a query, helping in optimization.'),
(22, 'What is the difference between UNION and UNION ALL?', 'UNION removes duplicates, while UNION ALL includes all records.'),
(23, 'What is the purpose of the AUTO_INCREMENT attribute?', 'AUTO_INCREMENT generates unique sequential numbers for a column.'),
(24, 'What is a transaction in MySQL?', 'A transaction is a sequence of SQL statements that are executed as a single unit.'),
(25, 'What are the different transaction isolation levels in MySQL?', 'READ UNCOMMITTED, READ COMMITTED, REPEATABLE READ, and SERIALIZABLE.'),
(26, 'What is a deadlock in MySQL?', 'A deadlock occurs when two or more transactions are waiting for each other to release locks.'),
(27, 'How do you create a backup of a MySQL database?', 'Use mysqldump or MySQL Workbench export features.'),
(28, 'How do you restore a MySQL database from a backup?', 'Use the mysql command-line tool to import the backup file.'),
(29, 'How do you improve MySQL performance?', 'Use indexing, optimize queries, enable caching, and partition large tables.');

-- --------------------------------------------------------

--
-- Table structure for table `networking_questions`
--

CREATE TABLE `networking_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `networking_questions`
--

INSERT INTO `networking_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is networking?', 'Networking refers to the practice of connecting computers and other devices to share resources and communicate.'),
(2, 'What is the difference between a hub, switch, and router?', 'A hub broadcasts data to all devices, a switch directs data only to the intended recipient, and a router connects different networks.'),
(3, 'What is an IP address?', 'An IP address is a unique identifier assigned to devices on a network to facilitate communication.'),
(4, 'What is the difference between IPv4 and IPv6?', 'IPv4 uses 32-bit addresses (e.g., 192.168.1.1), while IPv6 uses 128-bit addresses for a larger address space.'),
(5, 'What is a subnet mask?', 'A subnet mask defines which portion of an IP address is the network part and which part is for hosts.'),
(6, 'What is the difference between TCP and UDP?', 'TCP (Transmission Control Protocol) is connection-oriented and reliable, while UDP (User Datagram Protocol) is connectionless and faster but less reliable.'),
(7, 'What is DNS and how does it work?', 'DNS (Domain Name System) translates domain names into IP addresses to locate websites and services.'),
(8, 'What is DHCP and how does it work?', 'DHCP (Dynamic Host Configuration Protocol) automatically assigns IP addresses to devices on a network.'),
(9, 'What is NAT (Network Address Translation)?', 'NAT allows multiple devices on a private network to share a single public IP address for internet access.'),
(10, 'What is a VLAN?', 'A VLAN (Virtual Local Area Network) is a segmented network that groups devices logically instead of physically.'),
(11, 'What is a MAC address?', 'A MAC (Media Access Control) address is a unique identifier assigned to a network interface card (NIC).'),
(12, 'What is the OSI model?', 'The OSI (Open Systems Interconnection) model is a framework that standardizes networking into seven layers.'),
(13, 'What are the seven layers of the OSI model?', 'Physical, Data Link, Network, Transport, Session, Presentation, and Application.'),
(14, 'What is a firewall?', 'A firewall is a security device or software that monitors and controls incoming and outgoing network traffic.'),
(15, 'What is a proxy server?', 'A proxy server acts as an intermediary between a client and the internet, improving security and performance.'),
(16, 'What is a VPN and how does it work?', 'A VPN (Virtual Private Network) encrypts internet traffic to secure communication over public networks.'),
(17, 'What is the difference between LAN, WAN, and MAN?', 'LAN (Local Area Network) covers a small area, WAN (Wide Area Network) covers large areas, and MAN (Metropolitan Area Network) covers cities.'),
(18, 'What is bandwidth?', 'Bandwidth is the maximum data transfer rate of a network connection, measured in bits per second (bps).'),
(19, 'What is latency in networking?', 'Latency is the time taken for data to travel from the source to the destination, measured in milliseconds.'),
(20, 'What is a default gateway?', 'A default gateway is a device (typically a router) that connects a local network to external networks.'),
(21, 'What is the difference between unicast, multicast, and broadcast?', 'Unicast sends data to one device, multicast sends data to multiple devices, and broadcast sends data to all devices on a network.'),
(22, 'What is an access point?', 'An access point is a device that provides wireless connectivity to a network.'),
(23, 'What is a collision domain?', 'A collision domain is a network segment where data packets can collide, affecting performance.'),
(24, 'What is a broadcast domain?', 'A broadcast domain is a network segment where a broadcast packet can be received by all devices.'),
(25, 'What is an ARP (Address Resolution Protocol)?', 'ARP resolves an IP address to a MAC address for communication on a local network.'),
(26, 'What is a routing table?', 'A routing table is a database in a router that stores paths to different network destinations.'),
(27, 'What is BGP (Border Gateway Protocol)?', 'BGP is an internet routing protocol that determines the best paths for data transmission between networks.'),
(28, 'What is QoS (Quality of Service)?', 'QoS prioritizes certain types of network traffic to ensure better performance for critical applications.'),
(29, 'What is port forwarding?', 'Port forwarding is a technique used to redirect incoming network traffic to a specific device or service.'),
(30, 'What is ICMP (Internet Control Message Protocol)?', 'ICMP is used for error reporting and diagnostics, such as in ping commands.');

-- --------------------------------------------------------

--
-- Table structure for table `network_questions`
--

CREATE TABLE `network_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `skills` varchar(255) DEFAULT 'network'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `network_questions`
--

INSERT INTO `network_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'Define Network?', 'A network is a set of devices connected by physical media links. A network is recursively is a connection of two or more nodes by a physical link or two or more networks connected by one or more nodes.', 'network'),
(2, 'What is a Link?', 'At the lowest level, a network can consist of two or more computers directly connected by some physical medium such as coaxial cable or optical fiber. Such a physical medium is called as Link.', 'network'),
(3, 'What is a node?', 'A network can consist of two or more computers directly connected by some physical medium such as coaxial cable or optical fiber. Such a physical medium is called as Links and the computer it connects is called as Nodes.', 'network'),
(4, 'What is a gateway or Router?', 'A node that is connected to two or more networks is commonly called as router or Gateway. It generally forwards message from one network to another.', 'network'),
(5, 'What is point-point link?', 'If the physical links are limited to a pair of nodes it is said to be point-point link.', 'network'),
(6, 'What is Multiple Access?', 'If the physical links are shared by more than two nodes, it is said to be Multiple Access.', 'network'),
(7, 'What are the advantages of Distributed Processing?', 'a. Security/Encapsulation b. Distributed database c. Faster Problem solving d. Security through redundancy e. Collaborative Processing', 'network'),
(8, 'What are the criteria necessary for an effective and efficient network?', 'a. Performance It can be measured in many ways, including transmit time and response time. b. Reliability It is measured by frequency of failure, the time it takes a link to recover from a failure, and the network\'s robustness. c. Security Security issues includes protecting data from unauthorized access and virues.', 'network'),
(9, 'Name the factors that affect the performance of the network?', 'a. Number of Users b. Type of transmission medium c. Hardware d. Software', 'network'),
(10, 'Name the factors that affect the reliability of the network?', 'a. Frequency of failure b. Recovery time of a network after a failure', 'network'),
(11, 'Name the factors that affect the security of the network?', 'a. Unauthorized Access b. Viruses', 'network'),
(12, 'What is Protocol?', 'A protocol is a set of rules that govern all aspects of information communication.', 'network'),
(13, 'What are the key elements of protocols?', 'The key elements of protocols are a. Syntax It refers to the structure or format of the data, that is the order in which they are presented. b. Semantics It refers to the meaning of each section of bits. c. Timing Timing refers to two characteristics: When data should be sent and how fast they can be sent.', 'network'),
(14, 'What are the key design issues of a computer Network?', 'a. Connectivity b. Cost-effective Resource Sharing c. Support for common Services d. Performance', 'network'),
(15, 'Define Bandwidth and Latency?', 'Network performance is measured in Bandwidth (throughput) and Latency (Delay). Bandwidth of a network is given by the number of bits that can be transmitted over the network in a certain period of time. Latency corresponds to how long it takes a message to travel from one end off a network to the other. It is strictly measured in terms of time.', 'network'),
(16, 'Define Routing?', 'The process of determining systematically how to forward messages toward the destination nodes based on its address is called routing.', 'network'),
(17, 'What is a peer-peer process?', 'The processes on each machine that communicate at a given layer are called peer-peer process.', 'network'),
(18, 'When a switch is said to be congested?', 'It is possible that a switch receives packets faster than the shared link can accommodate and stores in its memory, for an extended period of time, then the switch will eventually run out of buffer space, and some packets will have to be dropped and in this state is said to congested state.', 'network'),
(19, 'What is semantic gap?', 'Defining a useful channel involves both understanding the applications requirements and recognizing the limitations of the underlying technology. The gap between what applications expects and what the underlying technology can provide is called semantic gap.', 'network'),
(20, 'What is Round Trip Time?', 'The duration of time it takes to send a message from one end of a network to the other and back, is called RTT.', 'network'),
(21, 'Define the terms Unicasting, Multiccasting and Broadcasting?', 'If the message is sent from a source to a single destination node, it is called Unicasting. If the message is sent to some subset of other nodes, it is called Multicasting. If the message is sent to all the m nodes in the network it is called Broadcasting.', 'network'),
(22, 'What is Multiplexing?', 'Multiplexing is the set of techniques that allows the simultaneous transmission of multiple signals across a single data link.', 'network'),
(23, 'Name the categories of Multiplexing?', 'a. Frequency Division Multiplexing (FDM) b. Time Division Multiplexing (TDM) i. Synchronous TDM ii. ASynchronous TDM Or Statistical TDM. c. Wave Division Multiplexing (WDM)', 'network'),
(24, 'What is FDM?', 'FDM is an analog technique that can be applied when the bandwidth of a link is greater than the combined bandwidths of the signals to be transmitted.', 'network'),
(25, 'What is WDM?', 'WDM is conceptually the same as FDM, except that the multiplexing and demultiplexing involve light signals transmitted through fiber optics channel.', 'network'),
(26, 'What is TDM?', 'TDM is a digital process that can be applied when the data rate capacity of the transmission medium is greater than the data rate required by the sending and receiving devices.', 'network'),
(27, 'What is Synchronous TDM?', 'In STDM, the multiplexer allocates exactly the same time slot to each device at all times, whether or not a device has anything to transmit.', 'network'),
(28, 'List the layers of OSI', 'a. Physical Layer b. Data Link Layer c. Network Layer d. Transport Layer e. Session Layer f. Presentation Layer g. Application Layer', 'network'),
(29, 'Which layers are network support layers?', 'a. Physical Layer b. Data link Layer and c. Network Layers', 'network'),
(30, 'Which layers are user support layers?', 'a. Session Layer b. Presentation Layer and c. Application Layer', 'network'),
(31, 'Which layer links the network support layers and user support layers?', 'The Transport layer links the network support layers and user support layers.', 'network'),
(32, 'What are the concerns of the Physical Layer?', 'Physical layer coordinates the functions required to transmit a bit stream over a physical medium. a. Physical characteristics of interfaces and media b. Representation of bits c. Data rate d. Synchronization of bits e. Line configuration f. Physical topology g. Transmission mode', 'network'),
(33, 'What are the responsibilities of Data Link Layer?', 'The Data Link Layer transforms the physical layer, a raw transmission facility, to a reliable link and is responsible for node-node delivery. a. Framing b. Physical Addressing c. Flow Control d. Error Control e. Access Control', 'network'),
(34, 'What are the responsibilities of Network Layer?', 'The Network Layer is responsible for the source-to-destination delivery of packet possibly across multiple networks (links). a. Logical Addressing b. Routing', 'network'),
(35, 'What are the responsibilities of Transport Layer?', 'The Transport Layer is responsible for source-to-destination delivery of the entire message. a. Service-point Addressing b. Segmentation and reassembly c. Connection Control d. Flow Control e. Error Control', 'network'),
(36, 'What are the responsibilities of Session Layer?', 'The Session layer is the network dialog Controller. It establishes, maintains and synchronizes the interaction between the communicating systems. a. Dialog control b. Synchronization', 'network'),
(37, 'What are the responsibilities of Presentation Layer?', 'The Presentation layer is concerned with the syntax and semantics of the information exchanged between two systems. a. Translation b. Encryption c. Compression', 'network'),
(38, 'What are the responsibilities of Application Layer?', 'The Application Layer enables the user, whether human or software, to access the network. It provides user interfaces and support for services such as e-mail, shared database management and other types of distributed information services. a. Network virtual Terminal b. File transfer, access and Management (FTAM) c. Mail services d. Directory Services', 'network'),
(39, 'What are the two classes of hardware building blocks?', 'Nodes and Links.', 'network'),
(40, 'What are the different link types used to build a computer network?', 'a. Cables b. Leased Lines c. Last-Mile Links d. Wireless Links', 'network'),
(41, 'What are the categories of Transmission media?', 'a. Guided Media i. Twisted - Pair cable 1. Shielded TP 2. Unshielded TP ii. Coaxial Cable iii. Fiber-optic cable b. Unguided Media i. Terrestrial microwave ii. Satellite Communication', 'network'),
(42, 'What are the types of errors?', 'a. Single-Bit error In a single-bit error, only one bit in the data unit has changed b. Burst Error A Burst error means that two or more bits in the data have changed.', 'network'),
(43, 'What is Error Detection? What are its methods?', 'Data can be corrupted during transmission. For reliable communication errors must be deducted and Corrected. Error Detection uses the concept of redundancy, which means adding extra bits for detecting errors at the destination. The common Error Detection methods are a. Vertical Redundancy Check (VRC) b. Longitudinal Redundancy Check (VRC) c. Cyclic Redundancy Check (VRC) d. Checksum', 'network'),
(44, 'What is Redundancy?', 'The concept of including extra information in the transmission solely for the purpose of comparison. This technique is called redundancy.', 'network'),
(45, 'What is VRC?', 'It is the most common and least expensive mechanism for Error Detection. In VRC, a parity bit is added to every data unit so that the total number of 1s becomes even for even parity. It can detect all single-bit errors. It can detect burst errors only if the total number of errors in each data unit is odd.', 'network'),
(46, 'What is LRC?', 'In LRC, a block of bits is divided into rows and a redundant row of bits is added to the whole block. It can detect burst errors. If two bits in one data unit are damaged and bits in exactly the same positions in another data unit are also damaged, the LRC checker will not detect an error. In LRC a redundant data unit follows n data units.', 'network'),
(47, 'What is CRC?', 'CRC, is the most powerful of the redundancy checking techniques, is based on binary division.', 'network'),
(48, 'What is Checksum?', 'Checksum is used by the higher layer protocols (TCP/IP) for error detection', 'network');

-- --------------------------------------------------------

--
-- Table structure for table `network_security_questions`
--

CREATE TABLE `network_security_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `network_security_questions`
--

INSERT INTO `network_security_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is network security?', 'Network security refers to measures taken to protect a network from cyber threats, unauthorized access, and data breaches.'),
(2, 'What are the three main goals of network security?', 'The three main goals are Confidentiality, Integrity, and Availability (CIA triad).'),
(3, 'What is the difference between symmetric and asymmetric encryption?', 'Symmetric encryption uses the same key for encryption and decryption, while asymmetric encryption uses a public and private key pair.'),
(4, 'What is a firewall?', 'A firewall is a security device that monitors and filters incoming and outgoing network traffic based on security rules.'),
(5, 'What is the difference between hardware and software firewalls?', 'Hardware firewalls are physical devices placed between networks, while software firewalls run on computers and servers.'),
(6, 'What is an Intrusion Detection System (IDS)?', 'An IDS monitors network traffic for suspicious activities and generates alerts.'),
(7, 'What is an Intrusion Prevention System (IPS)?', 'An IPS detects and blocks malicious network traffic in real-time.'),
(8, 'What is a VPN and how does it enhance security?', 'A VPN (Virtual Private Network) encrypts internet traffic, ensuring secure communication over public networks.'),
(9, 'What are common types of network attacks?', 'Common attacks include DDoS, Man-in-the-Middle, Phishing, and Spoofing.'),
(10, 'What is a Denial-of-Service (DoS) attack?', 'A DoS attack floods a network or system with excessive requests, making it unavailable to users.'),
(11, 'What is a Distributed Denial-of-Service (DDoS) attack?', 'A DDoS attack uses multiple compromised systems to launch a large-scale attack on a target.'),
(12, 'What is port scanning?', 'Port scanning is a technique used to identify open ports and services running on a network.'),
(13, 'What is a MAC address?', 'A MAC (Media Access Control) address is a unique identifier assigned to a network interface for communication.'),
(14, 'What is IP spoofing?', 'IP spoofing is an attack where an attacker disguises their IP address to impersonate another system.'),
(15, 'What is ARP spoofing?', 'ARP spoofing is an attack where an attacker sends fake ARP messages to associate their MAC address with a legitimate IP address.'),
(16, 'What is a Man-in-the-Middle (MITM) attack?', 'A MITM attack occurs when an attacker intercepts and manipulates communication between two parties.'),
(17, 'What is WPA2 and how does it enhance Wi-Fi security?', 'WPA2 (Wi-Fi Protected Access 2) is a security protocol that provides strong encryption and authentication for wireless networks.'),
(18, 'What is two-factor authentication (2FA)?', '2FA is a security measure that requires two forms of authentication before granting access.'),
(19, 'What is an access control list (ACL)?', 'An ACL is a set of rules that control network traffic by allowing or denying access based on IP addresses and protocols.'),
(20, 'What is network segmentation?', 'Network segmentation divides a network into smaller, isolated segments to improve security and performance.'),
(21, 'What is a honeypot in network security?', 'A honeypot is a decoy system used to attract and analyze attackers.'),
(22, 'What is a DMZ (Demilitarized Zone) in network security?', 'A DMZ is a separate network segment that provides an extra layer of security between public and internal networks.'),
(23, 'What is the difference between blacklisting and whitelisting?', 'Blacklisting blocks known malicious entities, while whitelisting allows only pre-approved entities.'),
(24, 'What is social engineering in network security?', 'Social engineering is a technique where attackers manipulate people into revealing confidential information.'),
(25, 'What is SSL/TLS and why is it important?', 'SSL/TLS (Secure Sockets Layer / Transport Layer Security) encrypts communication between web servers and clients to ensure secure data transmission.'),
(26, 'What is penetration testing in network security?', 'Penetration testing is a simulated attack used to identify and fix vulnerabilities in a network.'),
(27, 'What is endpoint security?', 'Endpoint security protects devices like computers and mobile phones from cyber threats.'),
(28, 'What is Zero Trust security?', 'Zero Trust is a security model that assumes no one is trusted by default, even within the network.'),
(29, 'What is the difference between authentication and authorization?', 'Authentication verifies identity, while authorization determines what actions a user is allowed to perform.'),
(30, 'What are best practices for network security?', 'Best practices include using strong passwords, enabling firewalls, keeping software updated, and using encryption.');

-- --------------------------------------------------------

--
-- Table structure for table `nlp_questions`
--

CREATE TABLE `nlp_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nlp_questions`
--

INSERT INTO `nlp_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Natural Language Processing (NLP)?', 'NLP is a branch of AI that enables computers to understand, interpret, and generate human language.'),
(2, 'What are the main components of NLP?', 'The main components of NLP are syntax analysis, semantics, discourse, and pragmatics.'),
(3, 'What is tokenization in NLP?', 'Tokenization is the process of breaking text into individual words or sentences.'),
(4, 'What is stemming in NLP?', 'Stemming is the process of reducing words to their root form, such as \'running\' to \'run\'.'),
(5, 'What is lemmatization in NLP?', 'Lemmatization reduces words to their base form using linguistic rules, such as \'better\' to \'good\'.'),
(6, 'What is the difference between stemming and lemmatization?', 'Stemming removes suffixes using heuristic rules, while lemmatization uses vocabulary-based rules.'),
(7, 'What is stopword removal?', 'Stopword removal eliminates common words like \'the\', \'is\', and \'and\' that do not contribute to meaning.'),
(8, 'What is Named Entity Recognition (NER)?', 'NER identifies entities such as names, dates, and locations in text.'),
(9, 'What is POS tagging?', 'POS tagging assigns part-of-speech labels (noun, verb, adjective, etc.) to words in a sentence.'),
(10, 'What is a Bag of Words (BoW) model?', 'BoW represents text as a collection of word frequencies without considering word order.'),
(11, 'What is TF-IDF in NLP?', 'TF-IDF (Term Frequency-Inverse Document Frequency) measures word importance in a document.'),
(12, 'What is word embedding?', 'Word embedding is a technique that represents words as dense vectors in a high-dimensional space.'),
(13, 'What are Word2Vec and GloVe?', 'Word2Vec and GloVe are popular word embedding models that capture semantic relationships.'),
(14, 'What is sentiment analysis?', 'Sentiment analysis determines the emotional tone of a text, such as positive, negative, or neutral.'),
(15, 'What is topic modeling in NLP?', 'Topic modeling is an unsupervised technique to identify topics within a large collection of text.'),
(16, 'What is Latent Dirichlet Allocation (LDA)?', 'LDA is a generative model used for topic modeling by grouping words into topics.'),
(17, 'What is the difference between N-grams and skip-grams?', 'N-grams capture consecutive words, while skip-grams allow gaps between words.'),
(18, 'What is an attention mechanism in NLP?', 'Attention mechanisms help models focus on relevant words in a sentence.'),
(19, 'What is Transformer architecture?', 'Transformers are deep learning models that use self-attention mechanisms for NLP tasks.'),
(20, 'What is BERT?', 'BERT (Bidirectional Encoder Representations from Transformers) is a pre-trained NLP model that processes text bidirectionally.'),
(21, 'What is GPT in NLP?', 'GPT (Generative Pre-trained Transformer) is a language model designed for text generation.'),
(22, 'What is Named Entity Recognition (NER)?', 'NER identifies and classifies entities such as names, locations, and dates in text.'),
(23, 'What is the difference between Rule-based NLP and Machine Learning-based NLP?', 'Rule-based NLP relies on predefined grammar rules, while ML-based NLP learns patterns from data.'),
(24, 'What is text classification?', 'Text classification categorizes text into predefined labels, such as spam detection or sentiment analysis.'),
(25, 'What is a language model in NLP?', 'A language model predicts the probability of a sequence of words in a sentence.'),
(26, 'What is BLEU score?', 'BLEU (Bilingual Evaluation Understudy) score measures the accuracy of machine-generated translations.'),
(27, 'What is cosine similarity in NLP?', 'Cosine similarity measures the similarity between two text documents based on vector representation.'),
(28, 'What is information retrieval?', 'Information retrieval is the process of searching and retrieving relevant documents from a large dataset.'),
(29, 'What is speech-to-text conversion?', 'Speech-to-text conversion uses NLP to convert spoken words into written text.'),
(30, 'What are the common applications of NLP?', 'Common applications include chatbots, machine translation, sentiment analysis, speech recognition, and text summarization.');

-- --------------------------------------------------------

--
-- Table structure for table `node_questions`
--

CREATE TABLE `node_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `skills` varchar(255) DEFAULT 'node'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `node_questions`
--

INSERT INTO `node_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is Node.js and Where can you use it?', 'Node.js is an open-source, cross-platform JavaScript runtime environment and library to run web applications outside the client’s browser. It is used to create server-side web applications. Node.js is perfect for data-intensive applications as it uses an ', 'node'),
(2, 'Why use Node.js?', 'Node.js makes building scalable network programs easy. Some of its advantages include: It is generally fast, It rarely blocks, It offers a unified programming language and data type, Everything is asynchronous, It yields great concurrency.', 'node'),
(3, 'How does Node.js work?', 'Node.js processes incoming requests by adding them to the Event Queue. The Event Loop checks if requests are simple (non-blocking) or complex (blocking). Simple requests are processed by the Event Loop, while complex requests are assigned to a Thread Pool', 'node'),
(4, 'Why is Node.js Single-threaded?', 'Node.js is single-threaded for async processing. This design provides better performance and scalability under typical web loads compared to thread-based implementations.', 'node'),
(5, 'If Node.js is single-threaded, then how does it handle concurrency?', 'Node.js uses a Single-Threaded Event Loop Model influenced by JavaScript\'s event-based and callback system. This allows Node.js to handle more concurrent client requests efficiently.', 'node'),
(6, 'Explain callback in Node.js.', 'A callback function is executed after a given task, allowing other code to run concurrently. Node.js relies heavily on callbacks for asynchronous operations.', 'node'),
(7, 'What are the advantages of using promises instead of callbacks?', 'Advantages of promises include: More structured control flow for asynchronous logic, Low coupling, Built-in error handling, and Improved readability.', 'node'),
(8, 'How would you define the term I/O?', 'I/O refers to any program, operation, or device that transfers data from one medium to another, such as physical devices, networks, or files within a system.', 'node'),
(9, 'How is Node.js most frequently used?', 'Node.js is used in real-time chats, Internet of Things, Complex SPAs, Real-time collaboration tools, Streaming applications, and Microservices architecture.', 'node'),
(10, 'Explain the difference between frontend and backend development?', 'Frontend refers to the client-side, dealing with visual aspects that users interact with. Backend is the server-side, managing data and server logic. Frontend technologies include HTML, CSS, and JavaScript, while backend technologies include Node.js, PHP,', 'node'),
(11, 'What is NPM?', 'NPM stands for Node Package Manager, which manages packages and modules for Node.js. It offers online repositories and a command-line utility for managing dependencies.', 'node'),
(12, 'What are the modules in Node.js?', 'Modules are like JavaScript libraries used to include functions in a Node.js application. Core modules include HTTP, util, fs, url, query string, stream, and zlib.', 'node'),
(13, 'What is the purpose of the module.exports?', 'module.exports allows you to export a module in Node.js, enabling its functions to be imported into another file.', 'node'),
(14, 'Why is Node.js preferred over other backend technologies like Java and PHP?', 'Node.js is preferred because it is fast, has a vast package ecosystem, handles real-time data well, synchronizes server and client code, and is easy for web developers to adopt.', 'node'),
(15, 'What is the difference between Angular and Node.js?', 'Angular is a frontend framework written in TypeScript for building SPAs, while Node.js is a server-side environment written in C/C++ for building scalable networking applications.', 'node'),
(16, 'Which database is more popularly used with Node.js?', 'MongoDB is the most commonly used database with Node.js, known for its high performance, availability, and scalability.', 'node'),
(17, 'What are some of the most commonly used libraries in Node.js?', 'Common libraries include ExpressJS for web applications and Mongoose for connecting to databases.', 'node'),
(18, 'What are the pros and cons of Node.js?', 'Pros: Fast processing, event-based model, familiar to JavaScript developers, vast package ecosystem, and ideal for data streaming. Cons: Not suitable for heavy computational tasks, complex callback management, relational databases support is limited, and ', 'node'),
(19, 'What is the command used to import external libraries?', 'The \'require\' command is used, e.g., var http = require(\'http\');.', 'node'),
(20, 'What does event-driven programming mean?', 'Event-driven programming uses events to trigger functions. Callbacks are registered with elements and executed when the event occurs.', 'node');

-- --------------------------------------------------------

--
-- Table structure for table `oracledb_questions`
--

CREATE TABLE `oracledb_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oracledb_questions`
--

INSERT INTO `oracledb_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Oracle Database?', 'Oracle Database is a multi-model, scalable, and secure enterprise database management system.'),
(2, 'What are the key features of Oracle DB?', 'Scalability, high availability, data security, multi-tenancy, and in-memory processing.'),
(3, 'What is the difference between Oracle and MySQL?', 'Oracle is an enterprise-level RDBMS with advanced features, while\r\nMySQL is an open-source database with simpler features.'),
(4, 'What is an Oracle Tablespace?', 'A tablespace is a storage location in an Oracle database that holds datafiles.'),
(5, 'What is an Oracle Datafile?', 'A datafile is a physical storage unit in Oracle DB that stores database objects.'),
(6, 'What is an Oracle Instance?', 'An instance is a combination of memory structures and background processes required to run an Oracle database.'),
(7, 'What is an Oracle Schema?', 'A schema is a collection of database objects, including tables, views, and stored procedures, owned by a user.'),
(8, 'What is the System Global Area (SGA)?', 'SGA is a shared memory region that contains data and control information for an Oracle instance.'),
(9, 'What is the Program Global Area (PGA)?', 'PGA is a memory region containing data and control information for a single Oracle server process.'),
(10, 'What is the difference between SGA and PGA?', 'SGA is shared among users, while PGA is dedicated to a single user session.'),
(11, 'What are Oracle Redo Logs?', 'Redo logs record changes made to the database and help recover data in case of failure.'),
(12, 'What is an Oracle Archive Log?', 'An archive log stores redo log entries for database recovery and backup purposes.'),
(13, 'What is an Oracle Undo Tablespace?', 'Undo tablespace stores undo data, which allows rollback of uncommitted transactions.'),
(14, 'What is Oracle RAC (Real Application Clusters)?', 'Oracle RAC allows multiple instances to run on different servers while accessing a shared database.'),
(15, 'What is Oracle ASM (Automatic Storage Management)?', 'ASM simplifies database storage management by automating the distribution of data across disks.'),
(16, 'What is Oracle Flashback Technology?', 'Flashback allows users to restore data to a previous state without traditional backup recovery.'),
(17, 'What are Oracle Indexes?', 'Indexes improve the performance of queries by enabling faster retrieval of rows.'),
(18, 'What are different types of indexes in Oracle?', 'B-tree, Bitmap, Clustered, Function-Based, and Reverse Key indexes.'),
(19, 'What is the difference between Clustered and Non-Clustered Indexes in Oracle?', 'Oracle does not support clustered indexes; all indexes in Oracle are non-clustered.'),
(20, 'What is an Oracle Materialized View?', 'A materialized view stores query results for faster access and can be refreshed periodically.'),
(21, 'What are the types of Materialized View refreshes?', 'Complete, Fast, and Force refresh methods.'),
(22, 'What is Oracle Partitioning?', 'Partitioning divides large tables into smaller, manageable pieces to improve performance.'),
(23, 'What are the types of Partitioning in Oracle?', 'Range, List, Hash, Composite, and Interval Partitioning.'),
(24, 'What is Oracle PL/SQL?', 'PL/SQL is Oracle’s procedural extension to SQL that allows writing of functions, triggers, and stored procedures.'),
(25, 'What is the difference between Stored Procedure and Function in Oracle?', 'Stored procedures do not return values, whereas functions return a single value.'),
(26, 'What are Oracle Triggers?', 'Triggers are automatic database actions executed when specified events occur, such as INSERT, UPDATE, or DELETE.'),
(27, 'What is Oracle Data Guard?', 'Data Guard provides disaster recovery by maintaining standby copies of databases.'),
(28, 'What is Oracle GoldenGate?', 'GoldenGate is a real-time data replication and integration tool for Oracle databases.'),
(29, 'What is the difference between Oracle 11g, 12c, and 19c?', '11g introduced new compression techniques, 12c introduced multi-tenancy, and 19c focused on automation and AI-driven optimizations.'),
(30, 'What are Oracle Sequences?', 'Sequences generate unique numeric values, often used for primary key generation.');

-- --------------------------------------------------------

--
-- Table structure for table `os_questions`
--

CREATE TABLE `os_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `skills` varchar(255) DEFAULT 'os'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `os_questions`
--

INSERT INTO `os_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'Explain the concept of Reentrancy?', 'It is a useful, memory-saving technique for multiprogrammed timesharing systems. A Reentrant Procedure is one in which multiple users can share a single copy of a program during the same period. Reentrancy has 2 key aspects: The program code cannot modify itself, and the local data for each user process must be stored separately. Thus, the permanent part is the code, and the temporary part is the pointer back to the calling program and local variables used by that program. Each execution instance is called activation. It executes the code in the permanent part, but has its own copy of local variables/parameters. The temporary part associated with each activation is the activation record. Generally, the activation record is kept on the stack. Note : A reentrant procedure can be interrupted and called by an interrupting program, and still execute correctly on returning to the procedure.', 'os'),
(2, 'Explain Belady\'s Anomaly?', 'Also called FIFO anomaly. Usually, on increasing the number of frames allocated to a process virtual memory, the process execution is faster, because fewer page faults occur. Sometimes, the reverse happens, i.e., the execution time increases even when more frames are allocated to the process. This is Belady\'s Anomaly. This is true for certain page reference patterns.', 'os'),
(3, 'What is a binary semaphore? What is its use?', 'A binary semaphore is one, which takes only 0 and 1 as values. They are used to implement mutual exclusion and synchronize concurrent processes.', 'os'),
(4, 'What is thrashing?', 'It is a phenomenon in virtual memory schemes when the processor spends most of its time swapping pages, rather than executing instructions. This is due to an inordinate number of page faults.', 'os'),
(5, 'List the Coffman\'s conditions that lead to a deadlock.', 'Mutual Exclusion : Only one process may use a critical resource at a time. Hold & Wait : A process may be allocated some resources while waiting for others. No Pre-emption : No resource can be forcible removed from a process holding it. Circular Wait : A closed chain of processes exist such that each process holds at least one resource needed by another process in the chain.', 'os'),
(6, 'What are short, long and medium-term scheduling?', 'Long term scheduler determines which programs are admitted to the system for processing. It controls the degree of multiprogramming. Once admitted, a job becomes a process. Medium term scheduling is part of the swapping function. This relates to processes that are in a blocked or suspended state. They are swapped out of real-memory until they are ready to execute. The swapping-in decision is based on memory-management criteria. Short term scheduler , also know as a dispatcher executes most frequently, and makes the finest-grained decision of which process should execute next. This scheduler is invoked whenever an event occurs. It may lead to interruption of one process by preemption.', 'os'),
(7, 'What are turnaround time and response time?', 'Turnaround time is the interval between the submission of a job and its completion. Response time is the interval between submission of a request, and the first response to that request.', 'os'),
(8, 'What are the typical elements of a process image?', 'User data : Modifiable part of user space. May include program data, user stack area, and programs that may be modified. User program : The instructions to be executed. System Stack : Each process has one or more LIFO stacks associated with it. Used to store parameters and calling addresses for procedure and system calls. Process control Block (PCB): Info needed by the OS to control processes.', 'os'),
(9, 'What is the Translation Lookaside Buffer (TLB)?', 'In a cached system, the base addresses of the last few referenced pages is maintained in registers called the TLB that aids in faster lookup. TLB contains those page-table entries that have been most recently used. Normally, each virtual memory reference causes 2 physical memory accesses- one to fetch appropriate page-table entry, and one to fetch the desired data. Using TLB in-between, this is reduced to just one physical memory access in cases of TLB-hit.', 'os'),
(10, 'What is the resident set and working set of a process?', 'Resident set is that portion of the process image that is actually in real-memory at a particular instant. Working set is that subset of resident set that is actually needed for execution. (Relate this to the variable-window size method for swapping techniques.)', 'os'),
(11, 'When is a system in safe state?', 'The set of dispatchable processes is in a safe state if there exists at least one temporal order in which all processes can be run to completion without resulting in a deadlock.', 'os'),
(12, 'What is cycle stealing?', 'We encounter cycle stealing in the context of Direct Memory Access (DMA). Either the DMA controller can use the data bus when the CPU does not need it, or it may force the CPU to temporarily suspend operation. The latter technique is called cycle stealing. Note that cycle stealing can be done only at specific break points in an instruction cycle.', 'os'),
(13, 'What is meant by arm-stickiness?', 'If one or a few processes have a high access rate to data on one track of a storage disk, then they may monopolize the device by repeated requests to that track. This generally happens with most common device scheduling algorithms (LIFO, SSTF, C-SCAN, etc). High-density multisurface disks are more likely to be affected by this than low density ones.', 'os'),
(14, 'What are the stipulations of C2 level security?', 'C2 level security provides for: Discretionary Access Control Identification and Authentication Auditing Resource reuse', 'os'),
(15, 'What is busy waiting?', 'The repeated execution of a loop of code while waiting for an event to occur is called busy-waiting. The CPU is not engaged in any real productive activity during this period, and the process does not progress toward completion.', 'os'),
(16, 'Explain the popular multiprocessor thread-scheduling strategies.', 'Load Sharing : Processes are not assigned to a particular processor. A global queue of threads is maintained. Each processor, when idle, selects a thread from this queue. Note that load balancing refers to a scheme where work is allocated to processors on a more permanent basis. Gang Scheduling : A set of related threads is scheduled to run on a set of processors at the same time, on a 1-to-1 basis. Closely related threads / processes may be scheduled this way to reduce synchronization blocking, and minimize process switching. Group scheduling predated this strategy. Dedicated processor assignment : Provides implicit scheduling defined by assignment of threads to processors. For the duration of program execution, each program is allocated a set of processors equal in number to the number of threads in the program. Processors are chosen from the available pool. Dynamic scheduling : The number of thread in a program can be altered during the course of execution.', 'os'),
(17, 'When does the condition \'rendezvous\' arise?', 'In message passing, it is the condition in which, both, the sender and receiver are blocked until the message is delivered.', 'os'),
(18, 'What is a trap and trapdoor?', 'Trapdoor is a secret undocumented entry point into a program used to grant access without normal methods of access authentication. A trap is a software interrupt, usually the result of an error condition.', 'os'),
(19, 'What are local and global page replacements?', 'Local replacement means that an incoming page is brought in only to the relevant process address space. Global replacement policy allows any page frame from any process to be replaced. The latter is applicable to variable partitions model only.', 'os'),
(20, 'Define latency, transfer and seek time with respect to disk I/O.', 'Seek time is the time required to move the disk arm to the required track. Rotational delay or latency is the time it takes for the beginning of the required sector to reach the head. Sum of seek time (if any) and latency is the access time. Time taken to actually transfer a span of data is transfer time.', 'os'),
(21, 'Describe the Buddy system of memory allocation.', 'Free memory is maintained in linked lists, each of equal sized blocks. Any such block is of size 2^k. When some memory is required by a process, the block size of next higher order is chosen, and broken into two. Note that the two such pieces differ in address only in their kth bit. Such pieces are called buddies. When any used block is freed, the OS checks to see if its buddy is also free. If so, it is rejoined, and put into the original free-block linked-list.', 'os'),
(22, 'What is time-stamping?', 'It is a technique proposed by Lamport, used to order events in a distributed system without the use of clocks. This scheme is intended to order events consisting of the transmission of messages. Each system \'i\' in the network maintains a counter Ci. Every time a system transmits a message, it increments its counter by 1 and attaches the time-stamp Ti to the message. When a message is received, the receiving system \'j\' sets its counter Cj to 1 more than the maximum of its current value and the incoming time-stamp Ti. At each site, the ordering of messages is determined by the following rules: For messages x from site i and y from site j, x precedes y if one of the following conditions holds....(a) if Ti<Tj or (b) if Ti=Tj and i<j.', 'os'),
(23, 'How are the wait/signal operations for monitor different from those for semaphores?', 'If a process in a monitor signal and no task is waiting on the condition variable, the signal is lost. So this allows easier program design. Whereas in semaphores, every operation affects the value of the semaphore, so the wait and signal operations should be perfectly balanced in the program.', 'os'),
(24, 'In the context of memory management, what are placement and replacement algorithms?', 'Placement algorithms determine where in available real-memory to load a program. Common methods are first-fit, next-fit, best-fit. Replacement algorithms are used when memory is full, and one process (or part of a process) needs to be swapped out to accommodate a new program. The replacement algorithm determines which are the partitions to be swapped out.', 'os'),
(25, 'In loading programs into memory, what is the difference between load-time dynamic linking and run-time dynamic linking?', 'For load-time dynamic linking : Load module to be loaded is read into memory. Any reference to a target external module causes that module to be loaded and the references are updated to a relative address from the start base address of the application module. With run-time dynamic loading : Some of the linking is postponed until actual reference during execution. Then the correct module is loaded and linked.', 'os'),
(26, 'What are demand-paging and pre-paging?', 'With demand paging, a page is brought into memory only when a location on that page is actually referenced during execution. With pre-paging, pages other than the one demanded by a page fault are brought in. The selection of such pages is done based on common access patterns, especially for secondary memory devices.', 'os'),
(27, 'Paging a memory management function, while multiprogramming a processor management function, are the two interdependent?', 'Yes.', 'os'),
(28, 'What is page cannibalizing?', 'Page swapping or page replacements are called page cannibalizing.', 'os'),
(29, 'What has triggered the need for multitasking in PCs?', 'Increased speed and memory capacity of microprocessors together with the support fir virtual memory and Growth of client server computing', 'os'),
(30, 'What are the four layers that Windows NT have in order to achieve independence?', 'Hardware abstraction layer Kernel Subsystems System Services.', 'os'),
(31, 'What is SMP?', 'To achieve maximum efficiency and reliability a mode of operation known as symmetric multiprocessing is used. In essence, with SMP any process or threads can be assigned to any processor.', 'os'),
(32, 'What are the key object oriented concepts used by Windows NT?', 'Encapsulation, Object class and instance.', 'os'),
(33, 'Is Windows NT a full blown object oriented operating system? Give reasons.', 'No Windows NT is not so, because its not implemented in object oriented language and the data structures reside within one executive component and are not represented as objects and it does not support object oriented capabilities.', 'os'),
(34, 'What is a drawback of MVT?', 'It does not have the features like ability to support multiple processors virtual storage source level debugging', 'os'),
(35, 'What is process spawning?', 'When the OS at the explicit request of another process creates a process, this action is called process spawning.', 'os'),
(36, 'How many jobs can be run concurrently on MVT?', '15 jobs.', 'os'),
(37, 'List out some reasons for process termination.', 'Normal completion Time limit exceeded Memory unavailable Bounds violation Protection error Arithmetic error Time overrun I/O failure Invalid instruction Privileged instruction Data misuse Operator or OS intervention Parent termination.', 'os'),
(38, 'What are the reasons for process suspension?', 'swapping interactive user request timing parent process request', 'os'),
(39, 'What is process migration?', 'It is the transfer of sufficient amount of the state of process from one machine to the target machine.', 'os'),
(40, 'What is mutant?', 'In Windows NT a mutant provides kernel mode or user mode mutual exclusion with the notion of ownership.', 'os'),
(41, 'What is an idle thread?', 'The special thread a dispatcher will execute when no ready thread is found.', 'os'),
(42, 'What is FtDisk?', 'It is a fault tolerance disk driver for Windows NT.', 'os'),
(43, 'What are the possible threads a thread can have?', 'Ready Standby Running Waiting Transition Terminated', 'os'),
(44, 'What are rings in Windows NT?', 'Windows NT uses protection mechanism called rings provides by the process to implement separation between the user mode and kernel mode.', 'os'),
(45, 'What is Executive in Windows NT?', 'In Windows NT, executive refers to the operating system code that runs in kernel mode.', 'os'),
(46, 'What are the sub-components of I/O manager in Windows NT?', 'Network redirector/ Server Cache manager. File systems Network driver Device driver', 'os'),
(47, 'What are DDks? Name an operating system that includes this feature.', 'DDks are device driver kits, which are equivalent to SDKs for writing device drivers. Windows NT includes DDks.', 'os'),
(48, 'What level of security does Windows NT meets?', 'C2 level security.', 'os');

-- --------------------------------------------------------

--
-- Table structure for table `pentest_questions`
--

CREATE TABLE `pentest_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pentest_questions`
--

INSERT INTO `pentest_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is penetration testing?', 'Penetration testing is a simulated cyber attack used to identify and fix security vulnerabilities in a system.'),
(2, 'What are the different types of penetration testing?', 'Types include black-box, white-box, and gray-box testing.'),
(3, 'What is the difference between vulnerability assessment and penetration testing?', 'Vulnerability assessment identifies security weaknesses, while penetration testing exploits them to understand their impact.'),
(4, 'What are the key phases of a penetration test?', 'Planning, reconnaissance, scanning, exploitation, post-exploitation, and reporting.'),
(5, 'What is reconnaissance in penetration testing?', 'Reconnaissance is the process of gathering information about a target system before launching an attack.'),
(6, 'What is the difference between passive and active reconnaissance?', 'Passive reconnaissance gathers data without interacting with the target, while active reconnaissance involves direct engagement.'),
(7, 'What tools are commonly used for penetration testing?', 'Popular tools include Metasploit, Nmap, Burp Suite, Wireshark, and SQLmap.'),
(8, 'What is the purpose of Metasploit in penetration testing?', 'Metasploit is used to develop, test, and execute exploit code against a target system.'),
(9, 'How does SQL injection work?', 'SQL injection occurs when an attacker manipulates an application\'s SQL query to access or modify the database.'),
(10, 'What is Cross-Site Scripting (XSS)?', 'XSS is a vulnerability where an attacker injects malicious scripts into a website to execute in a user\'s browser.'),
(11, 'What is a buffer overflow attack?', 'A buffer overflow attack happens when more data is written to a buffer than it can hold, leading to memory corruption.'),
(12, 'What is privilege escalation in penetration testing?', 'Privilege escalation is the process of exploiting vulnerabilities to gain higher access within a system.'),
(13, 'What is an exploit?', 'An exploit is a piece of code or technique used to take advantage of a vulnerability in a system.'),
(14, 'What is the importance of post-exploitation in penetration testing?', 'Post-exploitation helps assess the impact of a breach, maintain access, and exfiltrate data.'),
(15, 'What are common web application vulnerabilities?', 'Common vulnerabilities include SQL injection, XSS, CSRF, and insecure authentication.'),
(16, 'What is social engineering in penetration testing?', 'Social engineering involves manipulating people into revealing confidential information.'),
(17, 'How can you prevent SQL injection attacks?', 'By using prepared statements, parameterized queries, and input validation.'),
(18, 'What is the OWASP Top 10?', 'The OWASP Top 10 is a list of the ten most critical web application security risks.'),
(19, 'What is a zero-day exploit?', 'A zero-day exploit is an attack that takes advantage of a vulnerability before a fix is available.'),
(20, 'What is a honeypot in cybersecurity?', 'A honeypot is a decoy system used to attract and detect attackers.'),
(21, 'What is lateral movement in penetration testing?', 'Lateral movement is the process of an attacker moving deeper into a network after gaining initial access.'),
(22, 'What is password spraying?', 'Password spraying is an attack where a few common passwords are tested across multiple accounts.'),
(23, 'What is a red team in cybersecurity?', 'A red team is a group of ethical hackers that simulate attacks to test an organization\'s defenses.'),
(24, 'What is a blue team in cybersecurity?', 'A blue team is responsible for detecting, responding, and defending against cyber attacks.'),
(25, 'What is a purple team in cybersecurity?', 'A purple team collaborates with both red and blue teams to improve security.'),
(26, 'What is an IDS and IPS?', 'An IDS (Intrusion Detection System) detects threats, while an IPS (Intrusion Prevention System) blocks them.'),
(27, 'What is brute-force attack prevention?', 'Using strong passwords, account lockout policies, and multi-factor authentication.'),
(28, 'What is network penetration testing?', 'Network penetration testing evaluates security weaknesses in an organization\'s network.'),
(29, 'What is a shellcode?', 'Shellcode is a small piece of malicious code used to exploit vulnerabilities.'),
(30, 'What is the difference between black-box and white-box testing?', 'Black-box testing simulates an external attack with no prior knowledge, while white-box testing has full system knowledge.');

-- --------------------------------------------------------

--
-- Table structure for table `performancetesting_questions`
--

CREATE TABLE `performancetesting_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `performancetesting_questions`
--

INSERT INTO `performancetesting_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Performance Testing?', 'Performance Testing is a type of testing used to determine how a system performs under a specific workload.'),
(2, 'What are the key types of Performance Testing?', 'Key types include Load Testing, Stress Testing, Endurance Testing, Spike Testing, and Scalability Testing.'),
(3, 'What is Load Testing?', 'Load Testing measures how the system handles expected user loads under normal conditions.'),
(4, 'What is Stress Testing?', 'Stress Testing determines the breaking point of a system by testing it beyond its normal capacity.'),
(5, 'What is Spike Testing?', 'Spike Testing evaluates system performance under sudden increases in load.'),
(6, 'What is Scalability Testing?', 'Scalability Testing assesses how well a system can scale up or down in response to demand.'),
(7, 'What is Endurance Testing?', 'Endurance Testing evaluates system performance over an extended period under expected loads.'),
(8, 'What is Volume Testing?', 'Volume Testing checks system performance when handling a large volume of data.'),
(9, 'What are some common Performance Testing tools?', 'Common tools include JMeter, LoadRunner, Gatling, and k6.'),
(10, 'What is the difference between Load and Stress Testing?', 'Load Testing checks system behavior under expected loads, while Stress Testing pushes the system beyond its limits.'),
(11, 'What is a performance bottleneck?', 'A performance bottleneck is a point in the system that limits performance, such as CPU, memory, or network constraints.'),
(12, 'How do you identify performance bottlenecks?', 'Bottlenecks can be identified using monitoring tools like New Relic, Dynatrace, and AppDynamics.'),
(13, 'What are key Performance Testing metrics?', 'Metrics include response time, throughput, latency, error rate, and CPU/memory utilization.'),
(14, 'What is Response Time?', 'Response Time is the total time taken from sending a request to receiving a response.'),
(15, 'What is Throughput in Performance Testing?', 'Throughput measures the number of transactions processed per second.'),
(16, 'What is Latency?', 'Latency is the delay between a request and the first response from the server.'),
(17, 'What is Think Time?', 'Think Time is the time a user waits before performing the next action in a test scenario.'),
(18, 'What is the 90th percentile response time?', 'It means 90% of the responses are below this time, indicating system stability under load.'),
(19, 'How do you conduct a Performance Test?', 'A Performance Test involves planning, designing test scripts, executing tests, analyzing results, and optimizing performance.'),
(20, 'What are the challenges in Performance Testing?', 'Challenges include setting realistic loads, handling dynamic data, and accurately analyzing test results.'),
(21, 'What is Baseline Testing?', 'Baseline Testing establishes a benchmark for system performance before optimization.'),
(22, 'What is Concurrency in Performance Testing?', 'Concurrency refers to multiple users executing transactions simultaneously.'),
(23, 'What are Warm-up and Cool-down periods?', 'Warm-up stabilizes the system before testing, while Cool-down ensures proper resource release after testing.'),
(24, 'What is the role of caching in Performance Testing?', 'Caching improves response times by storing frequently accessed data to reduce database queries.'),
(25, 'What is a Service Level Agreement (SLA) in Performance Testing?', 'An SLA defines expected performance levels such as response time and uptime.'),
(26, 'What is Capacity Planning in Performance Testing?', 'Capacity Planning determines the required resources to handle future workloads efficiently.'),
(27, 'What is Auto-Scaling?', 'Auto-Scaling dynamically adjusts system resources based on load to maintain performance.'),
(28, 'How do you analyze Performance Test results?', 'Results are analyzed by reviewing response times, system logs, resource utilization, and user experience.'),
(29, 'What are best practices for Performance Testing?', 'Best practices include testing in a production-like environment, using realistic scenarios, and continuously monitoring performance.'),
(30, 'What is Continuous Performance Testing?', 'Continuous Performance Testing integrates performance checks into CI/CD pipelines to ensure ongoing system efficiency.');

-- --------------------------------------------------------

--
-- Table structure for table `postgresql_questions`
--

CREATE TABLE `postgresql_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `postgresql_questions`
--

INSERT INTO `postgresql_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is PostgreSQL?', 'PostgreSQL is an open-source, object-relational database management system (ORDBMS).'),
(2, 'What are the key features of PostgreSQL?', 'ACID compliance, extensibility, JSON support, full-text search, and advanced indexing.'),
(3, 'What is the difference between PostgreSQL and MySQL?', 'PostgreSQL supports advanced features like JSONB, window functions, and full ACID compliance, while MySQL is known for its speed and simplicity.'),
(4, 'What is a schema in PostgreSQL?', 'A schema is a logical container for database objects like tables, views, and functions.'),
(5, 'What are the different types of indexes in PostgreSQL?', 'B-tree, Hash, GIN, GiST, BRIN, and SP-GiST indexes.'),
(6, 'What is a tablespace in PostgreSQL?', 'A tablespace is a storage location where database objects are stored.'),
(7, 'What is the difference between VARCHAR and TEXT in PostgreSQL?', 'VARCHAR has an optional length limit, while TEXT has unlimited length.'),
(8, 'What is the purpose of the SERIAL data type in PostgreSQL?', 'SERIAL is used to generate auto-incrementing primary key values.'),
(9, 'How does PostgreSQL handle transactions?', 'PostgreSQL ensures ACID compliance with BEGIN, COMMIT, and ROLLBACK statements.'),
(10, 'What is the difference between INNER JOIN and OUTER JOIN?', 'INNER JOIN returns only matching rows, while OUTER JOIN includes unmatched rows from one or both tables.'),
(11, 'What is the use of the EXPLAIN statement in PostgreSQL?', 'EXPLAIN shows the execution plan of a query for optimization.'),
(12, 'What are Common Table Expressions (CTEs) in PostgreSQL?', 'CTEs provide a temporary result set that can be referenced within a query using WITH.'),
(13, 'What is the purpose of the JSONB data type in PostgreSQL?', 'JSONB stores JSON data in a binary format for faster querying.'),
(14, 'How do you perform full-text search in PostgreSQL?', 'Using the tsvector and tsquery data types along with GIN indexes.'),
(15, 'What is a window function in PostgreSQL?', 'A window function performs calculations across a set of table rows related to the current row.'),
(16, 'What is the difference between DELETE and TRUNCATE?', 'DELETE removes specific rows and can be rolled back, while TRUNCATE removes all rows and cannot be rolled back.'),
(17, 'What is MVCC in PostgreSQL?', 'MVCC (Multi-Version Concurrency Control) allows multiple transactions to access the database without conflicts.'),
(18, 'What is a materialized view in PostgreSQL?', 'A materialized view stores the result of a query and can be refreshed periodically.'),
(19, 'What is the difference between UNION and UNION ALL?', 'UNION removes duplicates, while UNION ALL includes all records.'),
(20, 'What is the role of WAL (Write-Ahead Logging) in PostgreSQL?', 'WAL ensures data durability by writing changes to a log before committing them to the database.'),
(21, 'What are stored procedures in PostgreSQL?', 'Stored procedures are precompiled sets of SQL statements that can be executed with CALL.'),
(22, 'How do you create a backup of a PostgreSQL database?', 'Use pg_dump for backups and pg_restore to restore them.'),
(23, 'What is a foreign key constraint in PostgreSQL?', 'A foreign key enforces referential integrity between tables.'),
(24, 'What are sequence objects in PostgreSQL?', 'Sequence objects generate unique numeric values, often used for primary keys.'),
(25, 'What is the difference between GROUP BY and PARTITION BY?', 'GROUP BY groups rows into aggregated results, while PARTITION BY divides rows for window functions.'),
(26, 'How do you improve PostgreSQL query performance?', 'Use indexing, query optimization, connection pooling, and EXPLAIN ANALYZE.'),
(27, 'What is the role of the pg_stat_activity view?', 'pg_stat_activity provides information about active database connections.'),
(28, 'What is the purpose of the pg_hba.conf file?', 'pg_hba.conf controls authentication and access to the PostgreSQL database.'),
(29, 'How does PostgreSQL handle concurrency?', 'PostgreSQL uses MVCC to allow multiple transactions without blocking reads.');

-- --------------------------------------------------------

--
-- Table structure for table `powerbi_questions`
--

CREATE TABLE `powerbi_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'powerbi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `powerbi_questions`
--

INSERT INTO `powerbi_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'How would you explain what Power BI is?', 'In simple terms, Power BI is an enterprise Microsoft app for business analytics. Using Power BI enables you to convert several data sources unrelated to each other into comprehensive, structured data that provides you with valuable insights. The data might then be stored in an Excel spreadsheet or on the cloud, and you can share it with others.', 'powerbi'),
(2, 'What are some benefits of Power BI?', 'There are a few key benefits of using Power BI:\r\n- Its data visualization feature allows you to share insights and interactable data with others.\r\n- Data can be analyzed quickly with Excel queries.\r\n- You can carry out report queries with ease.\r\n- It provides precise solutions and analysis.', 'powerbi'),
(3, 'What are some disadvantages of Power BI?', 'Power BI doesn’t let you use large files, as its maximum file size is 1GB. You also can’t use many data sources that function with real-time connections, and the data cannot be cleaned easily.', 'powerbi'),
(4, 'Who are the typical users of Power BI?', 'In addition to business owners, Power BI is also used by business developers and business analysts. Business analysts analyze data and create graphs, business owners view and examine the data, and business developers incorporate data into different apps.', 'powerbi'),
(5, 'Explain what GetData is.', 'GetData is a feature of Power BI that enables the user to import data from its original source.', 'powerbi'),
(6, 'How is Tableau different from Power BI?', 'Tableau can handle large data sets and is ideal for experts with an intricate user interface and cloud compatibility. Power BI is suitable for both experts and beginners with a simpler interface but doesn’t easily support cloud integrations.', 'powerbi'),
(7, 'How would you explain what DAX is?', 'DAX stands for data analysis expressions. These are formula languages used to carry out calculations and analyze data in Power Pivot. DAX is used for calculated columns, measures, and fields.', 'powerbi'),
(8, 'How would you explain the CALCULATE function in DAX?', 'CALCULATE enables the user to assess the total value of a table column and evaluates expressions in modified filter contexts, allowing users to adjust the table and calculate revenue or sales for specific subsets.', 'powerbi'),
(9, 'What is the function of filters in Power BI?', 'Filters enable the user to separate out critical data in columns and rows and use logical principles to filter data. Types of filters include auto, manual, drill-down, drill through, and URL filters.', 'powerbi'),
(10, 'What does Power BI Desktop do?', 'Power BI Desktop is a free downloadable application for local computers that allows users to visualize, transform, and share data in report form, similar to the SaaS product Power BI.', 'powerbi'),
(11, 'Which connectivity modes can you access in Power BI?', 'The three critical connectivity modes are:\r\n- Direct Query: Connects to specific data sources and stores metadata exclusively.\r\n- Live Connection: Supported by sources like SQL Server Analysis Services and Azure Analysis Services.\r\n- SQL Server Import: Allows the use of the entire Power BI Desktop range.', 'powerbi'),
(12, 'How would you define what Power Query is and what it does?', 'Power Query is a business intelligence tool by Microsoft that enables users to import, clean, and transform data by writing and running queries. It supports data import from various sources.', 'powerbi'),
(13, 'Explain what custom visuals are and how they are created.', 'Custom visuals in Power BI are packages that include code for data visualization. They are created using programming languages like JQuery and JavaScript.', 'powerbi'),
(14, 'How is data modeling different in Power BI Desktop compared to Pivot?', 'Power Pivot supports an import model and single directional relationships, while Power BI Desktop offers two-way connectivity and combines Pivot and Power Query functions with better-quality visualizations.', 'powerbi'),
(15, 'Describe what a dashboard is.', 'A Power BI dashboard displays critical data insights on a single page, featuring tiles that users can pin to present key data elements concisely.', 'powerbi'),
(16, 'Which types of data sources can be connected to Power BI?', 'Power BI supports connections to databases like Access, Oracle, MySQL, SQL Server, Teradata, and PostgreSQL.', 'powerbi'),
(17, 'How are manual table relationships different from automatic relationships?', 'Manual relationships require defining foreign and primary keys, while automatic relationships are defined by Power BI.', 'powerbi'),
(18, 'How many active relationships are possible between tables in Power Pivot models, and how many inactive ones can they have?', 'Only one active relationship is possible, represented by continuous lines, while multiple inactive relationships are allowed, shown as dotted lines.', 'powerbi'),
(19, 'Which skills can help you use Power BI?', 'Skills needed for Power BI include analytical skills, technical knowledge, coding, numerical reasoning, mathematical skills, and an understanding of business intelligence principles.', 'powerbi'),
(20, 'Can you describe how and where data is stored when using Power BI?', 'Data is typically stored on the cloud, often in Azure, using Azure Blob Storage or Azure SQL Database.', 'powerbi'),
(21, 'What are the critical features of Power BI?', 'Key features of Power BI include data visualization, sharing visualized data, omni-view for viewing gathered data, and displaying output across multiple devices.', 'powerbi'),
(22, 'Can you name three crucial DAX rules or concepts?', 'Key DAX concepts include:\r\n- Context: Row context affects a particular row, while filter context applies to filtered calculations.\r\n- Function: Refers to values or arguments used in order for computation, including statistical, date/time, and logical functions.\r\n- Syntax: Rules for creating formulas to avoid errors.', 'powerbi'),
(23, 'When are custom visual files required?', 'Custom visual files are needed when pre-packaged visuals don’t meet requirements. Developers may be hired to build custom visuals for critical information visualization.', 'powerbi'),
(24, 'Can you name some data category types used in Power BI?', 'Data categories in Power BI include:\r\n- Text (data string)\r\n- Boolean (true/false)\r\n- Number (for functions like average or fraction)\r\n- Date and Time (to extract time, year, and month)', 'powerbi'),
(25, 'What is grouping in Power BI?', 'Grouping in Power BI Desktop allows users to gather data together by selecting elements and choosing the group option. It is also useful for modifying existing groups.', 'powerbi');

-- --------------------------------------------------------

--
-- Table structure for table `python_questions`
--

CREATE TABLE `python_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `expected_output` text NOT NULL,
  `language` varchar(10) NOT NULL DEFAULT 'python'
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
-- Table structure for table `pytorch_questions`
--

CREATE TABLE `pytorch_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'pytorch'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pytorch_questions`
--

INSERT INTO `pytorch_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is PyTorch?', 'PyTorch is a part of computer software based on the torch library, which is an open-source Machine learning library for Python. It is a deep learning framework developed by Facebook AI research. It is used for applications such as Natural Language Processing and Computer Vision.', 'pytorch'),
(2, 'What are the essential elements of PyTorch?', 'The essential elements of PyTorch include: PyTorch tensors, PyTorch NumPy, Mathematical operations, Autograd Module, Optim Module, and nn Module.', 'pytorch'),
(3, 'What are Tensors?', 'Tensors play an important role in deep learning with PyTorch. They are generalized matrices that can be 1D (vector), 2D (matrix), 3D (cube), or 4D (cube vector).', 'pytorch'),
(4, 'What are the levels of abstraction?', 'The three levels of abstraction in PyTorch are: Tensor (n-dimensional array running on GPU), Variable (node in computational graph storing data and gradient), and Module (neural network layer storing learnable weights).', 'pytorch'),
(5, 'Are tensor and matrix the same?', 'Tensor and matrix are not the same, though they share some mathematical operations. Tensors have dynamic transformation properties that differentiate them from matrices.', 'pytorch'),
(6, 'What is the use of torch.from_numpy()?', 'torch.from_numpy() is used to create a tensor from a numpy.ndarray. The tensor and the ndarray share the same memory, so changes to one reflect in the other.', 'pytorch'),
(7, 'What is Variable and autograd.Variable?', 'Variable is a package for wrapping tensors. autograd.Variable is the core class for automatic differentiation in torch.autograd.', 'pytorch'),
(8, 'How do we find the derivatives of the function in PyTorch?', 'Derivatives are calculated using gradients in four steps: Initialize the function, set variable values, compute derivative with backward(), and print the result using grad.', 'pytorch'),
(9, 'What is Linear Regression?', 'Linear Regression finds the linear relation between dependent and independent variables using a supervised learning approach.', 'pytorch'),
(10, 'What is Loss Function?', 'A Loss Function evaluates how well an algorithm models a dataset by outputting a higher number for incorrect predictions and a lower number for accurate predictions.', 'pytorch'),
(11, 'What is the use of MSELoss, CTCLoss, and BCELoss function?', 'MSELoss measures mean squared error, CTCLoss calculates loss between continuous time series and target sequence, and BCELoss measures Binary Cross Entropy between target and output.', 'pytorch'),
(12, 'What is the difference between torch.nn and torch.nn.functional?', 'torch.nn provides classes and modules for neural networks, while torch.nn.functional contains useful functions like activation functions and convolution operations.', 'pytorch'),
(13, 'What is Mean Squared Error?', 'Mean Squared Error measures how close a regression line is to data points by calculating the squared distance between them.', 'pytorch'),
(14, 'What is Perceptron?', 'Perceptron is a single-layer neural network used as a binary classifier in supervised learning. It is a simple model of a biological neuron.', 'pytorch'),
(15, 'What is Activation Function?', 'An Activation Function determines whether a neuron should be activated, mapping values between 0 to 1 or -1 to 1.', 'pytorch'),
(16, 'How Neural Network differs from Deep Neural Network?', 'A Neural Network has one hidden layer, while a Deep Neural Network has more than one hidden layer, enabling more accurate predictions.', 'pytorch'),
(17, 'Why it is difficult for the network to show the problem?', 'Artificial Neural Networks work with numeric values, so problems are translated into numeric values, making them hard to visualize.', 'pytorch'),
(18, 'Why do we use Activation Function in Neural Networks?', 'Activation Functions determine the output of neural networks by mapping values between 0 to 1 or -1 to 1, using Linear or Non-linear functions.', 'pytorch'),
(19, 'Why do we prefer the Sigmoid Activation Function?', 'The Sigmoid function is preferred for models predicting probabilities because its output exists between 0 and 1.', 'pytorch'),
(20, 'What is Feed-Forward?', 'Feed-Forward is a process of receiving input to produce output for prediction, used in neural networks like CNN and DNN.', 'pytorch'),
(21, 'What is the difference between Conv1d, Conv2d, and Conv3d?', 'Conv1d applies 1D convolution, Conv2d applies 2D convolution, and Conv3d applies 3D convolution over input signals.', 'pytorch'),
(22, 'What is Backpropagation?', 'Backpropagation is an algorithm to calculate the gradient of the error function in neural networks, using gradient descent and the chain rule.', 'pytorch'),
(23, 'What is Convolutional Neural Network (CNN)?', 'CNN is used for image classification and recognition, taking an image as input and categorizing it into specific classes.', 'pytorch'),
(24, 'What is the difference between DNN and CNN?', 'DNN is a neural network with multiple layers, while CNN has convolution layers that detect important features in input data.', 'pytorch'),
(25, 'What are the advantages of PyTorch?', 'Advantages of PyTorch include: easy debugging, dynamic graph computation, faster training than TensorFlow, increased developer productivity, and simpler coding.', 'pytorch');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `program_language` enum('c','cpp','python') NOT NULL,
  `test_input` varchar(255) NOT NULL,
  `expected_output` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `program_language`, `test_input`, `expected_output`) VALUES
(1, 'Write a program to reverse a string.', 'c', 'hello', 'olleh');

-- --------------------------------------------------------

--
-- Table structure for table `raspberrypi_questions`
--

CREATE TABLE `raspberrypi_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raspberrypi_questions`
--

INSERT INTO `raspberrypi_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Raspberry Pi?', 'Raspberry Pi is a small, affordable, single-board computer used for various projects and learning.'),
(2, 'What are the main components of a Raspberry Pi board?', 'Processor, RAM, GPIO pins, HDMI port, USB ports, microSD card slot, power input.'),
(3, 'Which operating system is officially supported by Raspberry Pi?', 'Raspberry Pi OS (formerly Raspbian).'),
(4, 'What is the default user and password for Raspberry Pi OS?', 'Default user: pi, Default password: raspberry.'),
(5, 'How do you power a Raspberry Pi?', 'Using a micro-USB or USB-C power adapter, depending on the model.'),
(6, 'What programming languages can be used on Raspberry Pi?', 'Python, C, C++, Java, Scratch, and many more.'),
(7, 'How do you enable SSH on Raspberry Pi?', 'By running sudo raspi-config and enabling SSH under the \"Interfacing Options\".'),
(8, 'What is GPIO in Raspberry Pi?', 'General Purpose Input/Output (GPIO) allows controlling external devices like LEDs, sensors, and motors.'),
(9, 'Which command is used to update Raspberry Pi OS?', 'sudo apt update && sudo apt upgrade.'),
(10, 'What is the function of the Raspberry Pi’s microSD card?', 'It acts as the primary storage and contains the operating system.'),
(11, 'How do you connect Raspberry Pi to Wi-Fi?', 'Using the Raspberry Pi Configuration tool or editing the wpa_supplicant.conf file.'),
(12, 'What is the maximum RAM available in Raspberry Pi models?', 'Raspberry Pi 4 offers up to 8GB of RAM.'),
(13, 'Which Raspberry Pi model introduced USB 3.0 support?', 'Raspberry Pi 4.'),
(14, 'How can you run a Python script on Raspberry Pi?', 'Using the command python3 script.py.'),
(15, 'What is the function of the \"raspi-config\" command?', 'It opens a configuration tool to manage settings like networking, interfaces, and localization.'),
(16, 'How do you install new software on Raspberry Pi?', 'Using the apt package manager (e.g., sudo apt install package-name).'),
(17, 'What is the purpose of a heat sink on a Raspberry Pi?', 'To dissipate heat and prevent overheating.'),
(18, 'What are some common uses of Raspberry Pi?', 'Home automation, robotics, media center, IoT projects, and network security.'),
(19, 'What is the difference between Raspberry Pi and Arduino?', 'Raspberry Pi is a full computer running an OS, while Arduino is a microcontroller for simple tasks.'),
(20, 'What is the purpose of the \"GPIO Zero\" library in Python?', 'It simplifies controlling GPIO pins using Python.'),
(21, 'How do you interface a camera with Raspberry Pi?', 'Using the Raspberry Pi Camera Module and enabling it via raspi-config.'),
(22, 'Which software is used to flash an OS onto a Raspberry Pi microSD card?', 'Raspberry Pi Imager or Balena Etcher.'),
(23, 'What is the primary function of the Raspberry Pi 400?', 'It is a compact computer built into a keyboard for education and general use.'),
(24, 'How do you enable VNC on Raspberry Pi?', 'By enabling it through raspi-config under \"Interfacing Options\".'),
(25, 'What is the function of the \"crontab\" command on Raspberry Pi?', 'It schedules tasks to run at specified times automatically.'),
(26, 'What is the maximum resolution supported by Raspberry Pi 4?', '4K resolution at 60Hz on dual monitors.'),
(27, 'How do you check the temperature of a Raspberry Pi?', 'By running vcgencmd measure_temp in the terminal.'),
(28, 'What is the purpose of the \"I2C\" interface in Raspberry Pi?', 'I2C is a communication protocol used to connect sensors and other peripherals.'),
(29, 'How can you remotely access Raspberry Pi from another computer?', 'Using SSH, VNC, or Remote Desktop Protocol (RDP).'),
(30, 'What is the purpose of the \"boot/config.txt\" file on Raspberry Pi?', 'It configures system settings like overclocking, display resolution, and HDMI settings.');

-- --------------------------------------------------------

--
-- Table structure for table `reactnative_questions`
--

CREATE TABLE `reactnative_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reactnative_questions`
--

INSERT INTO `reactnative_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is React Native?', 'React Native is an open-source framework developed by Facebook for building mobile applications using JavaScript and React.'),
(2, 'How does React Native differ from React?', 'React is for building web applications, while React Native is for building mobile applications using native components.'),
(3, 'What is the primary language used in React Native development?', 'JavaScript (and optionally TypeScript).'),
(4, 'What are the core components of React Native?', 'Some core components include View, Text, Image, ScrollView, and TextInput.'),
(5, 'How does React Native achieve native performance?', 'React Native uses native components and bridges JavaScript code with platform-native APIs.'),
(6, 'What is the purpose of the Metro bundler in React Native?', 'Metro is the JavaScript bundler that compiles and optimizes React Native code for mobile devices.'),
(7, 'What is JSX in React Native?', 'JSX is a syntax extension for JavaScript that allows writing UI components in a React-like manner.'),
(8, 'What is the difference between State and Props in React Native?', 'State is mutable and managed within a component, while Props are read-only and passed from parent to child components.'),
(9, 'How do you handle navigation in React Native?', 'Using libraries like React Navigation or React Native Router Flux.'),
(10, 'What are Hooks in React Native?', 'Hooks like useState and useEffect allow functional components to use state and lifecycle features.'),
(11, 'What is AsyncStorage in React Native?', 'AsyncStorage is a key-value storage system for storing small amounts of persistent data locally.'),
(12, 'How do you make API calls in React Native?', 'Using the Fetch API or Axios for HTTP requests.'),
(13, 'What is the FlatList component used for?', 'FlatList is an optimized list component for rendering large datasets efficiently.'),
(14, 'What is the difference between ScrollView and FlatList?', 'ScrollView loads all items at once, while FlatList lazily loads items for better performance.'),
(15, 'How do you style components in React Native?', 'Using the StyleSheet API, inline styles, or external stylesheets.'),
(16, 'What is the use of Flexbox in React Native?', 'Flexbox is used for layout design, allowing flexible and responsive UI positioning.'),
(17, 'What is the purpose of the TouchableOpacity component?', 'TouchableOpacity is used to create buttons with an opacity effect on press.'),
(18, 'How do you handle gestures in React Native?', 'Using GestureResponder or third-party libraries like react-native-gesture-handler.'),
(19, 'What is Expo in React Native?', 'Expo is a framework and platform that simplifies React Native development by providing pre-configured tools and APIs.'),
(20, 'How do you handle animations in React Native?', 'Using the Animated API or third-party libraries like react-native-reanimated.'),
(21, 'What is the purpose of useEffect in React Native?', 'useEffect is used for managing side effects such as API calls, subscriptions, or timers in functional components.'),
(22, 'How do you debug React Native applications?', 'Using React Developer Tools, Chrome DevTools, or Flipper for debugging.'),
(23, 'What is the purpose of react-native-link?', 'react-native-link is used to link native dependencies to the project.'),
(24, 'How do you implement push notifications in React Native?', 'Using Firebase Cloud Messaging (FCM) or Apple Push Notification Service (APNS) with react-native-push-notification.'),
(25, 'What is the difference between Controlled and Uncontrolled components?', 'Controlled components have their state managed by React, while Uncontrolled components rely on the DOM.'),
(26, 'How do you handle device permissions in React Native?', 'Using react-native-permissions to request and check permissions for features like camera and location.'),
(27, 'What is the purpose of useRef in React Native?', 'useRef creates a reference to a DOM element or component without triggering re-renders.'),
(28, 'How do you implement dark mode in React Native?', 'Using the Appearance API to detect system theme and apply styles accordingly.'),
(29, 'What is the purpose of Fast Refresh in React Native?', 'Fast Refresh enables live reloading of code changes while retaining component state.'),
(30, 'What is the best way to optimize performance in React Native?', 'Using PureComponent, React.memo, FlatList optimizations, and minimizing re-renders.');

-- --------------------------------------------------------

--
-- Table structure for table `react_questions`
--

CREATE TABLE `react_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `react_questions`
--

INSERT INTO `react_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is React?', 'React is a JavaScript library for building user interfaces, developed by Facebook.'),
(2, 'What are the main features of React?', 'React features include Virtual DOM, JSX, components, one-way data binding, and state management.'),
(3, 'What is JSX?', 'JSX (JavaScript XML) is a syntax extension that allows writing HTML-like code in JavaScript.'),
(4, 'What is the difference between functional and class components?', 'Functional components are simpler and use hooks, while class components use lifecycle methods.'),
(5, 'What is the Virtual DOM in React?', 'The Virtual DOM is a lightweight copy of the actual DOM, used to improve performance by reducing direct DOM manipulations.'),
(6, 'What are React hooks?', 'Hooks are functions that allow functional components to use state and lifecycle features.'),
(7, 'What is the useState hook?', '`useState` is a hook that allows adding state to functional components.'),
(8, 'What is the useEffect hook?', '`useEffect` is a hook for handling side effects in functional components, such as data fetching and event listeners.'),
(9, 'What is the difference between state and props in React?', 'State is internal to a component and mutable, while props are external and passed from parent to child.'),
(10, 'What is React Router?', 'React Router is a library used for navigation and routing in React applications.'),
(11, 'What is the significance of keys in React lists?', 'Keys help React identify which items have changed, improving performance during re-renders.'),
(12, 'What is the Context API in React?', 'The Context API allows passing data through the component tree without using props drilling.'),
(13, 'What is Redux in React?', 'Redux is a state management library used to manage global application state efficiently.'),
(14, 'What are controlled and uncontrolled components?', 'Controlled components have their state controlled by React, while uncontrolled components manage their state internally.'),
(15, 'What is React Fiber?', 'React Fiber is the reimplementation of React’s core algorithm for improved performance.'),
(16, 'What is an HOC (Higher-Order Component) in React?', 'An HOC is a function that takes a component and returns a new enhanced component.'),
(17, 'What is lazy loading in React?', 'Lazy loading delays loading a component until it is needed, improving performance.'),
(18, 'What is the difference between React and React Native?', 'React is for web applications, while React Native is for building mobile apps.'),
(19, 'What is reconciliation in React?', 'Reconciliation is React’s process of updating the Virtual DOM and applying changes efficiently.'),
(20, 'What are fragments in React?', 'Fragments (`<></>`) allow grouping multiple elements without adding extra nodes to the DOM.'),
(21, 'What is the useRef hook?', '`useRef` provides a way to access and manipulate DOM elements or persist values across renders without causing re-renders.'),
(22, 'What is memoization in React?', 'Memoization optimizes performance by caching the results of expensive function calls.'),
(23, 'What is React StrictMode?', 'StrictMode is a wrapper that highlights potential issues in an application during development.'),
(24, 'What is the difference between useCallback and useMemo?', '`useCallback` memoizes a function, while `useMemo` memoizes a computed value.'),
(25, 'What is the purpose of the Error Boundary in React?', 'Error Boundaries catch JavaScript errors in components and prevent app crashes.'),
(26, 'What is hydration in React?', 'Hydration is the process of attaching event listeners to server-rendered HTML.'),
(27, 'What is server-side rendering (SSR) in React?', 'SSR generates React components on the server before sending them to the client.'),
(28, 'What is React Portals?', 'React Portals allow rendering components outside the parent DOM hierarchy while preserving React’s event system.'),
(29, 'What is the difference between componentDidMount and useEffect?', '`componentDidMount` is a lifecycle method in class components, while `useEffect` is its equivalent in functional components.');

-- --------------------------------------------------------

--
-- Table structure for table `reinforcement_learning_questions`
--

CREATE TABLE `reinforcement_learning_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reinforcement_learning_questions`
--

INSERT INTO `reinforcement_learning_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Reinforcement Learning?', 'Reinforcement Learning (RL) is a type of machine learning where an agent learns to make decisions by interacting with an environment to maximize cumulative rewards.'),
(2, 'How does Reinforcement Learning differ from Supervised Learning?', 'Supervised learning requires labeled data, whereas RL learns from interactions with an environment through trial and error.'),
(3, 'What are the key components of Reinforcement Learning?', 'The key components include the agent, environment, actions, states, rewards, and policy.'),
(4, 'What is an Agent in Reinforcement Learning?', 'An agent is the entity that learns by interacting with the environment and making decisions.'),
(5, 'What is an Environment in Reinforcement Learning?', 'The environment is the system with which the agent interacts, providing feedback through rewards and state changes.'),
(6, 'What is a Reward in Reinforcement Learning?', 'A reward is the feedback signal that indicates the quality of an agent\'s action in a given state.'),
(7, 'What is a State in Reinforcement Learning?', 'A state represents the current situation or condition of the environment at a given time.'),
(8, 'What is an Action in Reinforcement Learning?', 'An action is a decision taken by the agent that affects the state of the environment.'),
(9, 'What is a Policy in Reinforcement Learning?', 'A policy is a strategy that the agent follows to determine its actions based on the current state.'),
(10, 'What is the difference between Model-Free and Model-Based Reinforcement Learning?', 'Model-free RL does not assume a model of the environment, whereas model-based RL uses a model to predict state transitions and rewards.'),
(11, 'What is the Bellman Equation?', 'The Bellman equation describes the relationship between the value of a state and the values of its successor states in terms of expected rewards.'),
(12, 'What is Q-Learning?', 'Q-learning is a model-free RL algorithm that learns the optimal action-value function through iterative updates.'),
(13, 'What is the Q-Table in Q-Learning?', 'A Q-table stores the estimated Q-values for state-action pairs to guide decision-making.'),
(14, 'What is the Difference Between Q-Learning and SARSA?', 'Q-learning follows an off-policy approach, while SARSA is an on-policy method that updates the Q-values using the agent\'s current policy.'),
(15, 'What is Deep Q-Network (DQN)?', 'DQN is an extension of Q-learning that uses deep neural networks to approximate the Q-value function.'),
(16, 'What is Experience Replay in Deep Q-Learning?', 'Experience replay stores past experiences and randomly samples them to improve learning stability.'),
(17, 'What is the Exploration vs. Exploitation Trade-off?', 'Exploration involves trying new actions to discover better strategies, while exploitation focuses on using known actions to maximize rewards.'),
(18, 'What is an Epsilon-Greedy Policy?', 'An epsilon-greedy policy balances exploration and exploitation by selecting a random action with probability epsilon and the best-known action otherwise.'),
(19, 'What is Policy Gradient in Reinforcement Learning?', 'Policy gradient methods optimize policies directly by adjusting parameters based on reward feedback.'),
(20, 'What is the Advantage Actor-Critic (A2C) Algorithm?', 'A2C is a policy-based RL algorithm that combines value-based and policy-based methods for more stable learning.'),
(21, 'What is Proximal Policy Optimization (PPO)?', 'PPO is an RL algorithm that improves policy stability by limiting large policy updates.'),
(22, 'What is the Difference Between Value-Based and Policy-Based Reinforcement Learning?', 'Value-based RL estimates action values to make decisions, whereas policy-based RL directly learns the best policy.'),
(23, 'What is Temporal Difference (TD) Learning?', 'TD learning updates value estimates based on observed rewards and estimated future values.'),
(24, 'What is Monte Carlo Reinforcement Learning?', 'Monte Carlo methods estimate value functions by averaging rewards over complete episodes.'),
(25, 'What is the Markov Decision Process (MDP)?', 'MDP is a mathematical framework for modeling RL problems using states, actions, rewards, and transition probabilities.'),
(26, 'What is the Role of Discount Factor (Gamma) in RL?', 'The discount factor determines the importance of future rewards, with values close to 1 emphasizing long-term rewards.'),
(27, 'What is a Reward Shaping Technique?', 'Reward shaping modifies the reward function to encourage faster learning.'),
(28, 'What are some real-world applications of Reinforcement Learning?', 'Applications include robotics, game playing, self-driving cars, stock trading, and healthcare.'),
(29, 'What are Multi-Armed Bandit Problems in RL?', 'Multi-armed bandit problems model decision-making scenarios where an agent must choose between multiple options with uncertain rewards.'),
(30, 'What is the Difference Between Online and Offline RL?', 'Online RL learns while interacting with the environment, while offline RL learns from pre-collected data without further interaction.');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` between 1 and 5),
  `review_text` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `rating`, `review_text`, `created_at`) VALUES
(1, 2, 4, 'good', '2025-02-27 18:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `scikit_questions`
--

CREATE TABLE `scikit_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'scikitlearn'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scikit_questions`
--

INSERT INTO `scikit_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is Scikit-Learn?', 'Scikit-learn, also known as sklearn, is a free and open-source Python library for machine learning. It features various algorithms for classification, regression, clustering, dimensionality reduction, model selection, and preprocessing. Its focus is on building real-world machine learning applications.', 'scikitlearn'),
(2, 'What are the main types of machine learning problems?', 'The main types of machine learning problems include:\r\nSupervised learning: Training a model on labeled data to predict outcomes. Examples include classification (predicting categories) and regression (predicting continuous values).\r\nUnsupervised learning: Training a model on unlabeled data to find patterns and structures. Examples include clustering (grouping similar data points) and dimensionality reduction (reducing the number of features).\r\nReinforcement learning: Training an agent to learn through trial and error by interacting with an environment. Examples include game playing and robotics.', 'scikitlearn'),
(3, 'Explain the difference between classification and regression.', 'Classification: Predicts categorical outcomes (e.g., spam/not spam, cat/dog). It assigns data points to specific classes or categories.\r\nRegression: Predicts continuous outcomes (e.g., house price, temperature). It estimates a relationship between variables to predict a numerical value.', 'scikitlearn'),
(4, 'What is the difference between supervised and unsupervised learning?', 'Supervised learning: Uses labeled data to train a model to predict outcomes. The model learns from existing examples with known inputs and outputs.\r\nUnsupervised learning: Uses unlabeled data to find patterns and structures. The model learns without specific guidance on what to predict, uncovering hidden relationships in the data.', 'scikitlearn'),
(5, 'What are some common data preprocessing steps in machine learning?', 'Common data preprocessing steps include:\r\nData cleaning: Handling missing values, outliers, and inconsistent data.\r\nFeature scaling: Rescaling features to have a similar range to avoid bias towards features with larger scales.\r\nFeature encoding: Converting categorical features (e.g., strings) into numerical representations that algorithms can understand.\r\nData transformation: Applying transformations like logarithmic or power transformations to improve the distribution of data.', 'scikitlearn'),
(6, 'What are the main steps involved in building a machine learning model?', 'The main steps in building a machine learning model are:\r\nData collection: Gathering relevant data for the problem.\r\nData preprocessing: Cleaning, transforming, and preparing the data for modeling.\r\nFeature engineering: Selecting and creating relevant features that improve model performance.\r\nModel selection: Choosing the most appropriate algorithm for the problem.\r\nModel training: Fitting the model to the data to learn patterns and relationships.\r\nModel evaluation: Assessing the performance of the model on unseen data.\r\nModel deployment: Making the model available for real-world use.', 'scikitlearn'),
(7, 'What is the purpose of train-test splitting?', 'Train-test splitting is used to evaluate the generalization ability of a model. The data is divided into training and testing sets. The training set is used to train the model, while the testing set is used to assess how well the model performs on unseen data.', 'scikitlearn'),
(8, 'What is cross-validation, and why is it useful?', 'Cross-validation is a technique used to evaluate the performance of a model on unseen data. It involves splitting the data into multiple folds (subsets) and iteratively using one fold as the test set while training the model on the remaining folds. This helps in getting a more robust estimate of the model\'s performance by averaging the results across different folds.', 'scikitlearn'),
(9, 'What are some common metrics used to evaluate machine learning models?', 'Common evaluation metrics depend on the type of problem. Some common ones are:\r\nAccuracy: The proportion of correct predictions.\r\nPrecision: The proportion of true positive predictions among all positive predictions.\r\nRecall: The proportion of true positive predictions among all actual positive instances.\r\nF1-score: A harmonic mean of precision and recall.\r\nMean Squared Error (MSE): The average squared difference between predicted and actual values in regression.\r\nR-squared: A measure of the proportion of variance explained by the model in regression.', 'scikitlearn'),
(10, 'What is overfitting, and how can it be avoided?', 'Overfitting occurs when a model learns the training data too well, including its noise, resulting in poor performance on unseen data. It can be avoided by:\r\nRegularization: Adding a penalty to the model\'s complexity to prevent it from fitting the training data too closely.\r\nCross-validation: Using cross-validation techniques to identify and mitigate overfitting.\r\nEarly stopping: Monitoring the model\'s performance on a validation set and stopping training when performance starts to decrease.', 'scikitlearn');

-- --------------------------------------------------------

--
-- Table structure for table `selenium_questions`
--

CREATE TABLE `selenium_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'selenium'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selenium_questions`
--

INSERT INTO `selenium_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is Selenium?', 'Selenium is an open-source tool used as a free automation testing suite of tools. Licensing is not required and has more benefits than other testing tools. The tests can be done on any operating system, such as Mac, Linux, and Windows. Selenium can be combined with some tools, such as TestNG in Selenium and JUnit, to manage test cases and generate reports.', 'selenium'),
(2, 'What are the Selenium suite components?', 'Selenium suite components are:\n- Selenium IDE: A Firefox/Chrome plug-in to speed up the creation of automation scripts by recording user actions and exporting them as reusable scripts.\n- Selenium Remote Control (RC): Allows writing tests in various programming languages and interacts with browsers using Selenium core JavaScript commands.\n- Selenium WebDriver: A programming interface that helps create and run test cases without needing an additional server, interacting natively with browser applications.\n- Selenium Grid: Distributes commands to different machines simultaneously for parallel execution on different browsers and operating systems.', 'selenium'),
(3, 'Mention the advantages of using Selenium as an automation tool.', 'Selenium\'s advantages include: \n- Open source and free to use \n- Multi-language support \n- Cross-platform compatibility \n- Multi-browser support \n- Framework availability and flexibility \n- Reusability and integrated parallel test execution.', 'selenium'),
(4, 'What is test automation or automation testing?', 'Test automation or automation testing is the process of using specialized software to control the execution of tests and compare the results with expected outcomes. It helps reduce time, cost, and effort by automating repetitive tasks and allowing testers to focus on more critical test cases.', 'selenium'),
(5, 'What are the advantages of automation testing?', 'Advantages include: \n- Time and effort savings by automating repetitive tasks \n- Improved accuracy by eliminating human error \n- Enhanced test coverage by increasing the number of test cases run and covering a wider range of functionality.', 'selenium'),
(6, 'What is Selenese? How is it classified?', 'Selenese is the set of Selenium commands used to test web applications. It is classified into:\n- Action: Commands that interact directly with the application\n- Accessors: Store certain values in user-defined variables\n- Assertions: Verify the current state of the application against an expected state.', 'selenium'),
(7, 'What are the limitations of Selenium testing?', 'Limitations of Selenium include: \n- No dedicated tech support as it is open-source \n- Tests only web applications; requires third-party tools for desktop/mobile testing \n- Limited support for image testing \n- No built-in reporting and test management \n- Requires knowledge of programming languages for Selenium WebDriver.', 'selenium'),
(8, 'What is the difference between Selenium 2.0 and Selenium 3.0?', 'Selenium 2.0 is the result of the merger between the original Selenium project and WebDriver, with Selenium RC deprecated but still available for backward compatibility. Selenium 3.0 is an extension of 2.0, with enhanced stability, bug fixes, and the removal of Selenium RC.', 'selenium'),
(9, 'What are the testing types supported by Selenium?', 'Selenium supports: \n- Regression Testing: Re-execution of existing test cases to ensure existing functionalities work as expected.\n- Functional Testing: Verifying every function of the application with the required specifications.', 'selenium'),
(10, 'What are the different types of annotations used in Selenium?', 'Annotations in Selenium include: \n- @Test: Marks a method as a test method \n- @BeforeMethod: Executes before each test method \n- @AfterMethod: Executes after each test method \n- @BeforeClass: Executes before the first test method in the class.', 'selenium'),
(11, 'What is the same-origin policy and how is it handled?', 'The same-origin policy restricts scripts on one webpage from accessing content on another webpage unless both have the same origin. Selenium RC handles this by acting as an HTTP proxy, tricking the browser into believing both the tested application and Selenium Core have the same origin.', 'selenium'),
(12, 'Mention the types of Web locators.', 'Web locators in Selenium include: \n- By ID \n- By Link Text \n- By Partial Link Text \n- By Name \n- By TagName \n- By ClassName \n- By XPath \n- By CSS Selector.', 'selenium'),
(13, 'What are the types of waits supported by WebDriver?', 'Types of waits in Selenium are: \n- Implicit Wait: Sets a global wait time for element searches \n- Explicit Wait: Waits for specific conditions to occur \n- Fluent Wait: Waits for a condition with a frequency of checks and handles exceptions.', 'selenium'),
(14, 'Mention the types of navigation commands.', 'Navigation commands in Selenium are: \n- driver.navigate().to(URL): Navigates to a specific URL \n- driver.navigate().refresh(): Refreshes the current page \n- driver.navigate().forward(): Moves forward in the browser history \n- driver.navigate().back(): Moves back in the browser history.', 'selenium'),
(15, 'What is the major difference between driver.close() and driver.quit()?', 'driver.close() closes the current browser window, while driver.quit() closes all open browser windows and ends the WebDriver session.', 'selenium'),
(16, 'What makes Selenium such a widely used testing tool? Give reasons.', 'Selenium is widely used because it is: \n- Open-source and platform-independent \n- Compatible with multiple browsers \n- Supports multiple programming languages \n- Integrates with third-party tools like TestNG and JUnit \n- Requires less CPU and RAM for script execution.', 'selenium'),
(17, 'Why is it advised to select Selenium as a testing tool for web applications or systems?', 'Selenium is open-source, supports multiple operating systems and browsers, is compatible with various programming languages, and integrates with frameworks like ANT and Maven for source code compilation.', 'selenium'),
(18, 'What is an exception test in Selenium?', 'An exception test is used to verify that a specific exception is thrown within a test class. It is specified using the @Test annotation with the expected exception parameter.', 'selenium'),
(19, 'How to wait until a web page has been loaded completely in Selenium?', 'This can be achieved using Implicit Wait for a global wait or Explicit Wait for waiting on specific elements to be loaded.', 'selenium'),
(20, 'What is Selenium WebDriver?', 'Selenium WebDriver is a programming interface for automating web browser interactions without needing an additional server, offering native browser support.', 'selenium'),
(21, 'Is Selenium WebDriver a library?', 'No, Selenium WebDriver is not a library; it is an interface for browser automation.', 'selenium'),
(22, 'Which browsers/drivers are supported by Selenium WebDriver?', 'Selenium WebDriver supports Google Chrome, Mozilla Firefox, Microsoft Edge, Safari, and Opera.', 'selenium'),
(23, 'Explain Selenium 4 and why it is different from other Selenium versions?', 'Selenium 4 is the latest version with enhanced features such as improved browser automation, better handling of web elements, and support for W3C standards.', 'selenium'),
(24, 'What will happen if I execute this command: driver.get?', 'This command instructs Selenium WebDriver to open the specified URL in the web browser.', 'selenium'),
(25, 'What is an alternative option to driver.get() method to open a URL in Selenium WebDriver?', 'An alternative is driver.navigate().to() method, which also opens a URL but allows browser navigation history manipulation.', 'selenium');

-- --------------------------------------------------------

--
-- Table structure for table `smartcontracts_questions`
--

CREATE TABLE `smartcontracts_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smartcontracts_questions`
--

INSERT INTO `smartcontracts_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is a smart contract?', 'A smart contract is a self-executing contract with terms written in code.'),
(2, 'Which blockchain platform introduced smart contracts?', 'Ethereum was the first major blockchain platform to introduce smart contracts.'),
(3, 'What programming language is commonly used for smart contracts on Ethereum?', 'Solidity.'),
(4, 'How do smart contracts execute?', 'Smart contracts execute automatically when predefined conditions are met.'),
(5, 'What are the benefits of smart contracts?', 'They provide transparency, security, efficiency, and automation.'),
(6, 'Can smart contracts be modified after deployment?', 'No, once deployed, smart contracts are immutable unless designed with upgradeability.'),
(7, 'What is gas in the context of smart contracts?', 'Gas is the computational unit required to execute smart contracts on Ethereum.'),
(8, 'What is the purpose of the EVM in smart contracts?', 'The Ethereum Virtual Machine (EVM) executes smart contract code across Ethereum nodes.'),
(9, 'What is an ERC-20 token contract?', 'An ERC-20 token contract is a smart contract that implements the ERC-20 standard for fungible tokens.'),
(10, 'What is an ERC-721 contract?', 'An ERC-721 contract defines a non-fungible token (NFT) standard on Ethereum.'),
(11, 'How can smart contracts interact with each other?', 'Smart contracts can call functions in other smart contracts using contract addresses.'),
(12, 'What is the selfdestruct function in Solidity?', 'selfdestruct removes a smart contract from the blockchain and transfers remaining funds.'),
(13, 'What are some limitations of smart contracts?', 'Smart contracts are immutable, can have security vulnerabilities, and require gas fees.'),
(14, 'What is a reentrancy attack in smart contracts?', 'A reentrancy attack exploits external contract calls to repeatedly withdraw funds.'),
(15, 'How do you prevent reentrancy attacks in Solidity?', 'By using the checks-effects-interactions pattern and the reentrancy guard modifier.'),
(16, 'What is a modifier in Solidity?', 'A modifier is a function used to change the behavior of a smart contract function.'),
(17, 'What is the purpose of the require function in Solidity?', 'require is used to enforce conditions before executing a smart contract function.'),
(18, 'How does a fallback function work in Solidity?', 'A fallback function is triggered when a contract receives Ether without a specific function call.'),
(19, 'What are events in smart contracts?', 'Events allow contracts to emit logs that can be monitored by external applications.'),
(20, 'How are smart contracts deployed?', 'They are deployed using a blockchain network like Ethereum through transactions.'),
(21, 'What is OpenZeppelin?', 'OpenZeppelin is a library for secure smart contract development.'),
(22, 'What is a multi-signature smart contract?', 'A smart contract that requires multiple signatures to authorize a transaction.'),
(23, 'How can smart contracts store data?', 'Smart contracts store data in Ethereum’s blockchain storage using variables and mappings.'),
(24, 'What is the difference between payable and non-payable functions?', 'payable functions accept Ether, while non-payable functions do not.'),
(25, 'What is gas optimization in smart contract development?', 'Gas optimization reduces transaction costs by optimizing smart contract execution.'),
(26, 'What is an oracle in smart contracts?', 'An oracle provides external data to smart contracts.'),
(27, 'How can you upgrade a smart contract?', 'Using proxy contracts like the Transparent Proxy Pattern.'),
(28, 'What are Layer 2 solutions for smart contracts?', 'Layer 2 solutions improve scalability by processing transactions off-chain.'),
(29, 'What is a DAO and how do smart contracts enable it?', 'A Decentralized Autonomous Organization (DAO) is governed by smart contracts for decision-making.'),
(30, 'What are the security best practices for writing smart contracts?', 'Following Solidity best practices, using audits, and implementing secure coding patterns.');

-- --------------------------------------------------------

--
-- Table structure for table `software_testing_questions`
--

CREATE TABLE `software_testing_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `skills` varchar(255) DEFAULT 'software_testing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `software_testing_questions`
--

INSERT INTO `software_testing_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'Can you explain the PDCA cycle and where testing fits in?', 'Software testing is an important part of the software development process. In normal software development there are four important steps, also referred to, in short, as the PDCA (Plan, Do, Check, Act) cycle. Let\'s review the four steps in detail. Plan: Define the goal and the plan for achieving that goal. Do/Execute: Depending on the plan strategy decided during the plan stage we do execution accordingly in this phase. Check: Check/Test to ensure that we are moving according to plan and are getting the desired results. Act: During the check cycle, if any issues are there, then we take appropriate action accordingly and revise our plan again. So developers and other stakeholders of the project do the \"planning and building,\" while testers do the check part of the cycle. Therefore, software testing is done in check part of the PDCA cyle.', 'software_testing'),
(2, 'What is the difference between white box, black box, and gray box testing?', 'Black box testing is a testing strategy based solely on requirements and specifications. Black box testing requires no knowledge of internal paths, structures, or implementation of the software being tested. White box testing is a testing strategy based on internal paths, code structures, and implementation of the software being tested. White box testing generally requires detailed programming skills. There is one more type of testing called gray box testing. In this we look into the \"box\" being tested just long enough to understand how it has been implemented. Then we close up the box and use our knowledge to choose more effective black box tests. The above figure shows how both types of testers view an accounting application during testing. Black box testers view the basic accounting application. While during white box testing the tester knows the internal structure of the application. In most scenarios white box testing is done by developers as they know the internals of the application. In black box testing we check the overall functionality of the application while in white box testing we do code reviews, view the architecture, remove bad code practices, and do component level testing.', 'software_testing'),
(3, 'Can you explain usability testing?', 'Usability testing is a testing methodology where the end customer is asked to use the software to see if the product is easy to use, to see the customer\'s perception and task time. The best way to finalize the customer point of view for usability is by using prototype or mock-up software during the initial stages. By giving the customer the prototype before the development start-up we confirm that we are not missing anything from the user point of view.', 'software_testing'),
(4, 'What are the categories of defects?', 'There are three main categories of defects: Wrong: The requirements have been implemented incorrectly. This defect is a variance from the given specification. Missing: There was a requirement given by the customer and it was not done. This is a variance from the specifications, an indication that a specification was not implemented, or a requirement of the customer was not noted properly. Extra: A requirement incorporated into the product that was not given by the end customer. This is always a variance from the specification, but may be an attribute desired by the user of the product. However, it is considered a defect because it\'s a variance from the existing requirements.', 'software_testing'),
(5, 'How do you define a testing policy?', 'The following are the important steps used to define a testing policy in general. But it can change according to your organization. Let\'s discuss in detail the steps of implementing a testing policy in an organization. Definition: The first step any organization needs to do is define one unique definition for testing within the organization so that everyone is of the same mindset. How to achieve: How are we going to achieve our objective? Is there going to be a testing committee, will there be compulsory test plans which need to be executed, etc?. Evaluate: After testing is implemented in a project how do we evaluate it? Are we going to derive metrics of defects per phase, per programmer, etc. Finally, it\'s important to let everyone know how testing has added value to the project?. Standards: Finally, what are the standards we want to achieve by testing? For instance, we can say that more than 20 defects per KLOC will be considered below standard and code review should be done for it.', 'software_testing'),
(6, 'On what basis is the acceptance plan prepared?', 'In any project the acceptance document is normally prepared using the following inputs. This can vary from company to company and from project to project. Requirement document: This document specifies what exactly is needed in the project from the customers perspective. Input from customer: This can be discussions, informal talks, emails, etc. Project plan: The project plan prepared by the project manager also serves as good input to finalize your acceptance test. The following diagram shows the most common inputs used to prepare acceptance test plans.', 'software_testing'),
(7, 'What is configuration management?', 'Configuration management is the detailed recording and updating of information for hardware and software components. When we say components we not only mean source code. It can be tracking of changes for software documents such as requirement, design, test cases, etc. When changes are done in adhoc and in an uncontrolled manner chaotic situations can arise and more defects injected. So whenever changes are done it should be done in a controlled fashion and with proper versioning. At any moment of time we should be able to revert back to the old version. The main intention of configuration management is to track our changes if we have issues with the current system. Configuration management is done using baselines.', 'software_testing'),
(8, 'How does a coverage tool work?', 'While doing testing on the actual product, the code coverage testing tool is run simultaneously. While the testing is going on, the code coverage tool monitors the executed statements of the source code. When the final testing is completed we get a complete report of the pending statements and also get the coverage percentage.', 'software_testing'),
(9, 'Which is the best testing model?', 'In real projects, tailored models are proven to be the best, because they share features from The Waterfall, Iterative, Evolutionary models, etc., and can fit into real life time projects. Tailored models are most productive and beneficial for many organizations. If it\'s a pure testing project, then the V model is the best.', 'software_testing'),
(10, 'What is the difference between a defect and a failure?', 'When a defect reaches the end customer it is called a failure and if the defect is detected internally and resolved it\'s called a defect.', 'software_testing'),
(11, 'Should testing be done only after the build and execution phases are complete?', 'In traditional testing methodology testing is always done after the build and execution phases. But that\'s a wrong way of thinking because the earlier we catch a defect, the more cost effective it is. For instance, fixing a defect in maintenance is ten times more costly than fixing it during execution. In the requirement phase we can verify if the requirements are met according to the customer needs. During design we can check whether the design document covers all the requirements. In this stage we can also generate rough functional data. We can also review the design document from the architecture and the correctness perspectives. In the build and execution phase we can execute unit test cases and generate structural and functional data. And finally comes the testing phase done in the traditional way. i.e., run the system test cases and see if the system works according to the requirements. During installation we need to see if the system is compatible with the software. Finally, during the maintenance phase when any fixes are made we can retest the fixes and follow the regression testing. Therefore, Testing should occur in conjunction with each phase of the software development.', 'software_testing'),
(12, 'Are there more defects in the design phase or in the coding phase?', 'The design phase is more error prone than the execution phase. One of the most frequent defects which occur during design is that the product does not cover the complete requirements of the customer. Second is wrong or bad architecture and technical decisions make the next phase, execution, more prone to defects. Because the design phase drives the execution phase it\'s the most critical phase to test. The testing of the design phase can be done by good review. On average, 60% of defects occur during design and 40% during the execution phase.', 'software_testing'),
(13, 'Can you explain boundary value analysis?', 'In some projects there are scenarios where we need to do boundary value testing. For instance, let\'s say for a bank application you can withdraw a maximum of 25000 and a minimum of 100. So in boundary value testing we only test the exact boundaries rather than hitting in the middle. That means we only test above the max and below the max. This covers all scenarios. The following figure shows the boundary value testing for the bank application which we just described. TC1 and TC2 are sufficient to test all conditions for the bank. TC3 and TC4 are just duplicate/redundant test cases which really do not add any value to the testing. So by applying proper boundary value fundamentals we can avoid duplicate test cases, which do not add value to the testing.', 'software_testing'),
(14, 'Can you explain equivalence partitioning?', 'In equivalence partitioning we identify inputs which are treated by the system in the same way and produce the same results. You can see from the following figure applications TC1 and TC2 give the same results (i.e., TC3 and TC4 both give the same result, Result2). In short, we have two redundant test cases. By applying equivalence partitioning we minimize the redundant test cases. So apply the test below to see if it forms an equivalence class or not: All the test cases should test the same thing. They should produce the same results. If one test case catches a bug, then the other should also catch it. If one of them does not catch the defect, then the other should not catch it.', 'software_testing'),
(15, 'Can you explain random/monkey testing?', 'Random testing is sometimes called monkey testing. In Random testing, data is generated randomly often using a tool. For instance, the following figure shows how randomly-generated data is sent to the system. This data is generated either using a tool or some automated mechanism. With this randomly generated input the system is then tested and results are observed accordingly. Random testing has the following weakness: They are not realistic. Many of the tests are redundant and unrealistic. You will spend more time analyzing results. You cannot recreate the test if you do not record what data was used for testing. This kind of testing is really of no use and is normally performed by newcomers. Its best use is to see if the system will hold up under adverse effects.', 'software_testing'),
(16, 'What are semi-random test cases?', 'As the name specifies semi-random testing is nothing but controlling random testing and removing redundant test cases. So what we do is perform random test cases and equivalence partitioning to those test cases, which in turn removes redundant test cases, thus giving us semi-random test cases.', 'software_testing'),
(17, 'Can you explain a pair-wise defect?', 'Orthogonal array is a two-dimensional array in which if we choose any two columns in the array and all the combinations of numbers will appear in those columns. The following figure shows a simple L 9 (3 4 ) orthogonal array. In this the number 9 indicates that it has 9 rows. The number 4 indicates that it has 4 columns and 3 indicates that each cell contains a 1, 2, and 3. Choose any two columns. Let\'s choose column 1 and 2. It has (1,1), (1,2), (1,3), (2,1), (2,2), (2,3), (3,1), (3,2), (3,3) combination values. As you can see these values cover all the values in the array. Compare the values with the combination of column 3 and 4 and they will fall in some pair. This is applied in software testing which helps us eliminate duplicate test cases.', 'software_testing'),
(18, 'What is negative and positive testing?', 'A negative test is when you put in an invalid input and receive errors. A positive test is when you put in a valid input and expect some action to be completed in accordance with the specification.', 'software_testing'),
(19, 'How did you define severity ratings in your project?', 'There are four types of severity ratings as shown in the table: Severity 1 (showstoppers): These kinds of defects do not allow the application to move ahead. So they are also called showstopper defects. Severity 2 (application continues with severe defects): Application continues working with these types of defects, but they can have high implications, later, which can be more difficult to remove. Severity 3 (application continues with unexpected results): In this scenario the application continues but with unexpected results. Severity 4 (suggestions): Defects with these severities are suggestions given by the customer to make the application better. These kinds of defects have the least priority and are considered at the end of the project or during the maintenance stage of the project.', 'software_testing'),
(20, 'Can you explain exploratory testing?', 'Exploratory testing is also called adhoc testing, but in reality it\'s not completely adhoc. Ad hoc testing is an unplanned, unstructured, may be even an impulsive journey through the system with the intent of finding bugs. Exploratory testing is simultaneous learning, test design, and test execution. In other words, exploratory testing is any testing done to the extent that the tester proactively controls the design of the tests as those tests are performed and uses information gained while testing to design better tests. Exploratory testers are not merely keying in random data, but rather testing areas that their experience (or imagination) tells them are important and then going where those tests take them.', 'software_testing'),
(21, 'Can you explain decision tables?', 'As the name suggests they are tables that list all possible inputs and all possible outputs. A general form of decision table is shown in the following figure. Condition 1 through Condition N indicates various input conditions. Action 1 through Condition N are actions that should be taken depending on various input combinations. Each rule defines unique combinations of conditions that result in actions associated with that rule.', 'software_testing'),
(22, 'What is a software process?', 'A software process is a series of steps used to solve a problem. The following figure shows a pictorial view of how an organization has defined a way to solve risk problems. In the diagram we have shown two branches: one is the process and the second branch shows a sample risk mitigation process for an organization. For instance, the risk mitigation process defines what step any department should follow to mitigate a risk. The process is as follows: Identify the risk of the project by discussion, proper requirement gathering, and forecasting. Once you have identified the risk prioritize which risk has the most impact and should be tackled on a priority basis. Analyze how the risk can be solved by proper impact analysis and planning. Finally, using the above analysis, we mitigate the risk.', 'software_testing'),
(23, 'What are the different cost elements involved in implementing a process in an organization?', 'Below are some of the cost elements involved in the implementing process: Salary: This forms the major component of implementing any process, the salary of the employees. Normally while implementing a process in a company either organization can recruit full-time people or they can share resources part-time for implementing the process. Consultant: If the process is new it can also involve consultants which are again an added cost. Training Costs: Employees of the company may also have to undergo training in order to implement the new process Tools: In order to implement the process an organization will also need to buy tools which again need to be budgeted for.', 'software_testing'),
(24, 'What is a maturity level?', 'A maturity level specifies the level of performance expected from an organization.', 'software_testing'),
(25, 'What is a model?', 'A model is nothing but best practices followed in an industry to solve issues and problems. Models are not made in a day but are finalized and realized by years of experience and continuous improvements. Many companies reinvent the wheel rather than following time tested models in the industry.', 'software_testing'),
(26, 'Can you explain process areas in CMMI?', 'A process area is the area of improvement defined by CMMI. Every maturity level consists of process areas. A process area is a group of practices or activities performed collectively to achieve a specific objective. For instance, you can see from the following figure we have process areas such as project planning, configuration management, and requirement gathering.', 'software_testing'),
(27, 'Can you explain tailoring?', 'As the name suggests, tailoring is nothing but changing an action to achieve an objective according to conditions. Whenever tailoring is done there should be adequate reasons for it. Remember when a process is defined in an organization it should be followed properly. So even if tailoring is applied the process is not bypassed or omitted.', 'software_testing'),
(28, 'What is CMMI and what\'s the advantage of implementing it in an organization?', 'CMMI stands for Capability Maturity Model Integration. It is a process improvement approach that provides companies with the essential elements of an effective process. CMMI can serve as a good guide for process improvement across a project, organization, or division. CMMI was formed by using multiple previous CMM processes. The following are the areas which CMMI addresses: Systems engineering: This covers development of total systems. System engineers concentrate on converting customer needs to product solutions and supports them throughout the product lifecycle. Software engineering: Software engineers concentrate on the application of systematic, disciplined, and quantifiable approaches to the development, operation, and maintenance of software. Integrated Product and Process Development (IPPD): Integrated Product and Process Development (IPPD) is a systematic approach that achieves a timely collaboration of relevant stakeholders throughout the life of the product to better satisfy customer needs, expectations, and requirements. This section mostly concentrates on the integration part of the project for different processes. For instance, it\'s possible that your project is using services of some other third party component. In such situations the integration is a big task itself, and if approached in a systematic manner, can be handled with ease. Software acquisition: Many times an organization has to acquire products from other organizations. Acquisition is itself a big step for any organization and if not handled in a proper manner means a disaster is sure to happen.', 'software_testing'),
(29, 'What\'s the difference between implementation and institutionalization?', 'Both of these concepts are important while implementing a process in any organization. Any new process implemented has to go through these two phases. Implementation: It is just performing a task within a process area. A task is performed according to a process but actions performed to complete the process are not ingrained in the organization. That means the process involved is done according to the individual point of view. When an organization starts to implement any process it first starts at this phase, i.e., implementation, and then when this process looks good it is raised to the organization level so that it can be implemented across organizations. Institutionalization: Institutionalization is the output of implementing the process again and again. The difference between implementation and institutionalization is in implementation if the person who implemented the process leaves the company the process is not followed, but if the process is institutionalized then even if the person leaves the organization, the process is still followed.', 'software_testing'),
(30, 'Can you explain the different maturity levels in a staged representation?', 'There are five maturity levels in a staged representation as shown in the following figure. Maturity Level 1 (Initial): In this level everything is adhoc. Development is completely chaotic with budget and schedules often exceeded. In this scenario we can never predict quality. Maturity Level 2 (Managed): In the managed level basic project management is in place. But the basic project management and practices are followed only in the project level. Maturity Level 3 (Defined): To reach this level the organization should have already achieved level 2. In the previous level the good practices and process were only done at the project level. But in this level all these good practices and processes are brought to the organization level. There are set and standard practices defined at the organization level which every project should follow. Maturity Level 3 moves ahead with defining a strong, meaningful, organizational approach to developing products. An important distinction between Maturity Levels 2 and 3 is that at Level 3, processes are described in more detail and more rigorously than at Level 2 and are at an organization level. Maturity Level 4 (Quantitatively measured): To start with, this level of organization should have already achieved Level 2 and Level 3. In this level, more statistics come into the picture. Organization controls the project by statistical and other quantitative techniques. Product quality, process performance, and service quality are understood in statistical terms and are managed throughout the life of the processes. Maturity Level 4 concentrates on using metrics to make decisions and to truly measure whether progress is happening and the product is becoming better. The main difference between Levels 3 and 4 are that at Level 3, processes are qualitatively predictable. At Level 4, processes are quantitatively predictable. Level 4 addresses causes of process variation and takes corrective action. Maturity Level 5 (Optimized): The organization has achieved goals of maturity levels 2, 3, and 4. In this level, processes are continually improved based on an understanding of common causes of variation within the processes. This is like the final level; everyone on the team is a productive member, defects are minimized, and products are delivered on time and within the budget boundary. The following figure shows, in detail, all the maturity levels in a pictorial fashion.', 'software_testing'),
(31, 'What are the different models in CMMI?', 'There are two models in CMMI. The first is \"staged\" in which the maturity level organizes the process areas. The second is \"continuous\" in which the capability level organizes the process area.', 'software_testing'),
(32, 'How is appraisal done in CMMI?', 'SCAMPI stands for Standard CMMI Appraisal Method for Process Improvement. SCAMPI is an assessment process used to get CMMI certified for an organization. There are three classes of CMMI appraisal methods: Class A, Class B, and Class C. Class A is the most aggressive, while Class B is less aggressive, and Class C is the least aggressive. Let\'s discuss these appraisal methods in more detail. Class A: This is the only method that can provide a rating and get you a CMMI certificate. It requires all three sources of data instruments, interviews, and documents. Class B: This class requires only two sources of data (interviews and either documents or instruments). But please note you do not get rated with Class B appraisals. Class B is just a warm-up to see if an organization is ready for Class A. With less verification the appraisal takes less time. In this class data sufficiency and draft presentations are optional. Class C: This class requires only one source of data (interviews, instruments, or documents). Team consensus, validation, observation, data sufficiency, and draft presentation are optional.', 'software_testing'),
(33, 'Which appraisal method class is best?', 'Normally, organizations use a mix of the classes to achieve process improvement. The following are some of the strategies which an organization uses: First Strategy: Use Class B to initiate a process improvement plan, after that apply Class C to check readiness for Class B or Class A. The following diagram shows this strategy. Second Strategy: Class C appraisal is used on a subset of an organization. From this we get an aggregation of weakness across the organization. From this we can prepare a process improvement plan. We can then apply a Class B appraisal to see if we are ready for Class A appraisal. The following diagram shows the strategy. Third Strategy: Class A is used to initiate an organization level process. The process improvement plan is based on an identified weakness. Class B appraisal should be performed after six months to see the readiness for the second Class A appraisal rating. The following diagram shows this strategy.', 'software_testing'),
(34, 'What different sources are needed to verify authenticity for CMMI implementation?', 'There are three different sources from which an appraiser can verify that an organization followed the process or not. Instruments: An instrument is a survey or questionnaire provided to the organization, project, or individuals before starting the assessment so that beforehand the appraiser knows some basic details of the project. Interview: An interview is a formal meeting between one or more members of the organization in which they are asked some questions and the appraiser makes some judgments based on those interviews. During the interview the member represents some process area or role which he performs. For instance, the appraiser may interview a tester or programmer asking him indirectly what metrics he has submitted to his project manager. By this the appraiser gets a fair idea of CMMI implementation in that organization. Documents: A document is a written work or product which serves as evidence that a process is followed. It can be hard copy, Word document, email, or any type of written official proof. The following figure is the pictorial view of the sources used to verify how compliant the organization is with CMMI.', 'software_testing'),
(35, 'Which model should we use and under what scenarios?', 'Staging defines an organization process implementation sequence. So staging is a sequence of targeted process areas that describe a path of process improvement the organization will take. For instance, you cannot do your project planning (Level 2) if you have not done requirements management (Level 2). While in the continuous model you select certain process areas even if they\'re linked with other process areas and mature there. So when your organization should only concentrate on specific process areas you will likely go for the continuous model. But if you want your organization to have a specific plan and to achieve not only the specific process but also any interlinked process within that process area you should go for the continuous model.', 'software_testing'),
(36, 'Can you explain capability levels in a continuous representation?', 'The continuous model is the same as the staged model only that the arrangement is a bit different. The continuous representation/model concentrates on the action or task to be completed within a process area. It focuses on maturing the organizations ability to perform, control, and improve the performance in that specific performance area. Capability Level 0 Incomplete: This level means that any generic or specific practice of capability level 1 is not performed. Capability Level 1: Performed: The capability level 1 process is expected to perform all capability level 1 specific and generic practices for that process area. In this level performance may not be stable and probably does not meet objectives such as quality, cost, and schedule, but still the task can be done. Capability Level 2: Managed: Capability level 2 is a managed process planned properly, performed, monitored, and controlled to achieve a given purpose. Because the process is managed we achieve other objectives, such as cost, schedule, and quality. Because you are managing, certain metrics are consistently collected and applied to your management approach. Capability Level 3: Defined: The defined process is a managed process that is tailored from an organization standard. Tailoring is done by justification and documentation guidelines. For instance your organization may have a standard that we should get an invoice from every supplier. But if the supplier is not able to supply the invoice then he should sign an agreement in place of the invoice. So here the invoice standard is not followed but the deviation is under control. Capability Level 4: Quantitatively Managed: The quantitatively managed process is a defined process which is controlled through statistical and quantitative information. So from defect tracking to project schedules all are statistically tracked and measured for that process. Capability Level 5: Optimizing: The optimizing process is a quantitatively managed process where we increase process performance through incremental and innovative improvements. Continuous representation is the same as staged only that information is arranged in a different fashion. The biggest difference is one concentrates on a specific process while the other brings a group of processes to a certain maturity level.', 'software_testing'),
(37, 'What is Six Sigma?', 'Six Sigma is a statistical measure of variation in a process. We say a process has achieved Six Sigma if the quality is 3.4 DPMO (Defect per Million Opportunities). It\'s a problem-solving methodology that can be applied to a process to eliminate the root cause of defects and costs associated with it.', 'software_testing'),
(38, 'Can you explain the different methodology for the execution and the design process stages in Six Sigma?', 'The main focus of Six Sigma is to reduce defects and variations in the processes. DMAIC and DMADV are the models used in most Six Sigma initiatives. DMADV is the model for designing processes while DMAIC is used for improving the process. The DMADV model includes the following five steps: Define: Determine the project goals and the requirements of customers (external and internal). Measure: Assess customer needs and specifications. Analyze: Examine process options to meet customer requirements. Design: Develop the process to meet the customer requirements. Verify: Check the design to ensure that it\'s meeting customer requirements The DMAIC model includes the following five steps: Define the projects, goals, and deliverables to customers (internal and external). Describe and quantify both the defects and the expected improvements. Measure the current performance of the process. Validate data to make sure it is credible and set the baselines. Analyze and determine the root cause(s) of the defects. Narrow the causal factors to the vital few. Improve the process to eliminate defects. Optimize the vital few and their interrelationships. Control the performance of the process. Lock down the gains.', 'software_testing'),
(39, 'Can you explain the fish bone/Ishikawa diagram?', 'There are situations where we need to analyze what caused the failure or problem in a project. The fish bone or Ishikawa diagram is one important concept which can help you find the root cause of the problem. Fish bone was conceptualized by Ishikawa, so in honor of its inventor, this concept was named the Ishikawa diagram. Inputs to conduct a fish bone diagram come from discussion and brainstorming with people involved in the project. The following figure shows the structure of the Ishikawa diagram. The main bone is the problem which we need to address to know what caused the failure. For instance, the following fish bone is constructed to find what caused the project failure. To know this cause we have taken four main bones as inputs: Finance, Process, People, and Tools.', 'software_testing'),
(40, 'What are the different kinds of variations used in Six Sigma?', 'Variation is the basis of Six Sigma. It defines how many changes are happening in the output of a process. So if a process is improved then this should reduce variations. In Six Sigma we identify variations in the process, control them, and reduce or eliminate defects. There are four basic ways of measuring variations: Mean, Median, Mode, and Range.', 'software_testing'),
(41, 'Can you explain standard deviation?', 'The most accurate method of quantifying variation is by using standard deviation. It indicates the degree of variation in a set of measurements or a process by measuring the average spread of data around the mean. It\'s more complicated than the deviation process discussed in the previous question, but it does give accurate information.', 'software_testing'),
(42, 'What is meant by measures and metrics?', 'Measures are quantitatively unit defined elements, for instance, hours, km, etc. Metrics are basically comprised of more than one measure. For instance, we can have metrics such as km/hr, m/s etc.', 'software_testing'),
(43, 'Can you explain how the number of defects is measured?', 'The number of defects is one of the measures used to measure test effectiveness. One of the side effects of the number of defects is that all bugs are not equal. So it becomes necessary to weight bugs according to their criticality level. If we are using the number of defects as the metric measurement the following are the issues: The number of bugs that originally existed significantly impacts the number of bugs discovered, which in turns gives a wrong measure of the software quality. All defects are not equal so defects should be numbered with a criticality level to get the right software quality measure.', 'software_testing'),
(44, 'Can you explain unit and system test DRE?', 'DRE is also useful to measure the effectiveness of a particular test such as acceptance, unit, or system testing. The following figure shows defect numbers at various software cycle levels. The 1 indicates that defects are input at the phase and2indicates that these many defects were removed from that particular phase. For instance, in the requirement phase 100 defects were present, but 20 defects are removed from the requirement phase due to a code review. So if 20 defects are removed then 80 defects get carried to the new phase (design) and so on.', 'software_testing'),
(45, 'Can you explain DRE?', 'DRE (Defect Removal Efficiency) is a powerful metric used to measure test effectiveness. From this metric we come to know how many bugs we found from the set of bugs which we could have found. The following is the formula for calculating DRE. We need two inputs for calculating this metric: the number of bugs found during development and the number of defects detected at the end user. But the success of DRE depends on several factors. The following are some of them: Severity and distribution of bugs must be taken into account. Second, how do we confirm when the customer has found all the bugs. This is normally achieved by looking at the history of the customer.', 'software_testing'),
(46, 'Can you explain defect age and defect spoilage?', 'Defect age is also called a phase age or phage. One of the most important things to remember in testing is that the later we find a defect the more it costs to fix it. Defect age and defect spoilage metrics work with the same fundamental, i.e., how late you found the defect. So the first thing we need to define is what is the scale of the defect age according to phases. For instance, the following table defines the scale according to phases. So, for instance, requirement defects, if found in the design phase, have a scale of 1, and the same defect, if propagated until the production phase, goes up to a scale of 4. Once the scale is decided now we can find the defect spoilage. Defect spoilage is defects from the previous phase multiplied by the scale. For instance, in the following figure we have found 8 defects in the design phase from which 4 defects are propagated from the requirement phase. So we multiply the 4 defects with the scale defined in the previous table, so we get the value of 4. In the same fashion we calculate for all the phases. The following is the spoilage formula.', 'software_testing'),
(47, 'Can you explain how the number of production defects is measured?', 'This is one of the most effective measures. The number of defects found in a production is recorded. The only issue with this measure is it can have latent and masked defects which can give us the wrong value regarding software quality.', 'software_testing'),
(48, 'Can you explain defect seeding?', 'Defect seeding is a technique that was developed to estimate the number of defects resident in a piece of software. It\'s an offline technique and should not be used by everyone. The process is the following: we inject the application with defects and then see if the defect is found or not. So, for instance, if we have injected 100 defects we try to get three values. First how many seeded defects were discovered, how many were not discovered, and how many new defects (unseeded) are discovered. By using defect seeding we can predict the number of defects remaining in the system.', 'software_testing'),
(49, 'How do you measure test effectiveness?', 'Test effectiveness is the measure of the bug-finding ability of our tests. In short, it measures how good the tests were. So effectiveness is the ratio of the measure of bugs found during testing to the total bugs found. Total bugs are the sum of new defects found by the user plus the bugs found in the test. The following figure explains the calculations in a pictorial format.', 'software_testing'),
(50, 'Does automation replace manual testing?', 'Automation is the integration of testing tools into the test environment in such a manner that the test execution, logging, and comparison of results are done with little human intervention. A testing tool is a software application which helps automate the testing process. But the testing tool is not the complete answer for automation. One of the huge mistakes done in testing automation is automating the wrong things during development. Many testers learn the hard way that everything cannot be automated. The best components to automate are repetitive tasks. So some companies first start with manual testing and then see which tests are the most repetitive ones and only those are then automated. As a rule of thumb do not try to automate: Unstable software: If the software is still under development and undergoing many changes automation testing will not be that effective. Once in a blue moon test scripts: Do not automate test scripts which will be run once in a while. Code and document review: Do not try to automate code and document reviews; they will just cause trouble. The following figure shows what should not be automated. All repetitive tasks which are frequently used should be automated. For instance, regression tests are prime candidates for automation because they\'re typically executed many times. Smoke, load, and performance tests are other examples of repetitive tasks that are suitable for automation. White box testing can also be automated using various unit testing tools. Code coverage can also be a good candidate for automation.', 'software_testing'),
(51, 'How does load testing work for websites?', 'Websites have software called a web server installed on the server. The user sends a request to the web server and receives a response. So, for instance, when you type www.google.com the web server senses it and sends you the home page as a response. This happens each time you click on a link, do a submit, etc. So if we want to do load testing you need to just multiply these requests and responses \"N\" times. This is what an automation tool does. It first captures the request and response and then just multiplies it by \"N\" times and sends it to the web server, which results in load simulation. So once the tool captures the request and response, we just need to multiply the request and response with the virtual user. Virtual users are logical users which actually simulate the actual physical user by sending in the same request and response. If you want to do load testing with 10,000 users on an application it\'s practically impossible. But by using the load testing tool you only need to create 1000 virtual users.', 'software_testing'),
(52, 'Can you explain data-driven testing?', 'Normally an application has to be tested with multiple sets of data. For instance, a simple login screen, depending on the user type, will give different rights. For example, if the user is an admin he will have full rights, while a user will have limited rights and support if he only has read-only support rights. In this scenario the testing steps are the same but with different user ids and passwords. In data-driven testing, inputs to the system are read from data files such as Excel, CSV (comma separated values), ODBC, etc. So the values are read from these sources and then test steps are executed by automated testing.', 'software_testing'),
(53, 'What are the different Ways of doing Black Box testing?', 'There are five methodologies most frequently used: Top down according to budget WBS (Work Breakdown Structure) Guess and gut feeling Early project data TPA (Test Point Analysis)', 'software_testing'),
(54, 'Can you explain TPA analysis?', 'TPA is a technique used to estimate test efforts for black box testing. Inputs for TPA are the counts derived from function points. Below are the features of TPA: Used to estimate only black box testing. Require function points as inputs.', 'software_testing'),
(55, 'Can you explain the elementary process?', 'Software applications are a combination of elementary processes. When elementary processes come together they form a software application. There are two types of elementary processes: Dynamic elementary Process: The dynamic elementary process moves data from an internal application boundary to an external application boundary or vice-versa. Example: Input data screen where a user inputs data into the application. Data moves from the input screen inside the application. Static elementary Process: Static elementary process which maintains the data of the application either inside the application boundary or in the external application boundary. For example, in a customer maintenance screen maintaining customer data is a static elementary process.', 'software_testing'),
(56, 'How do you estimate white box testing?', 'The testing estimates derived from function points are actually the estimates for white box testing. So in the following figure the man days are actually the estimates for white box testing of the project. It does not take into account black box testing estimation.', 'software_testing'),
(57, 'Can you explain the various elements of function points FTR, ILF, EIF, EI, EO, EQ, and GSC?', 'File Type References (FTRs): An FTR is a file or data referenced by a transaction. An FTR should be an ILF or EIF. So count each ILF or EIF read during the process. If the EP is maintained as an ILF then count that as an FTR. So by default you will always have one FTR in any EP. Internal Logical Files (ILFs): ILFs are logically related data from a user\'s point of view. They reside in the internal application boundary and are maintained through the elementary process of the application.ILFs can have a maintenance screen but not always. External Interface Files (EIFs): EIFs reside in the external application boundary. EIFs are used only for reference purposes and are not maintained by internal applications. EIFs are maintained by external applications. External Input (EI): EIs are dynamic elementary processes in which data is received from the external application boundary. Example: User interaction screens, when data comes from the User Interface to the Internal Application. External Output (EO): EOs are dynamic elementary processes in which derived data crosses from the internal application boundary to the external application boundary. External Inquiry (EQ): An EQ is a dynamic elementary process in which result data is retrieved from one or more ILF or EIF. In this EP some input requests have to enter the application boundary. Output results exits the application boundary. General System Characteristics (GSCs): This section is the most important section. All the previously discussed sections relate only to applications. But there are other things also to be considered while making software, such as are you going to make it an N-Tier application, what\'s the performance level the user is expecting, etc. These other factors are called GSCs.', 'software_testing'),
(58, 'Can you explain an Application boundary?', 'The first step in FPA is to define the boundary. There are two types of major boundaries: Internal Application Boundary External Application Boundary The external application boundary can be identified using the following litmus test: Does it have or will it have any other interface to maintain its data, which was not developed by you?. Does your program have to go through a third party API or layer? In order for your application to interact with the tax department application your code has to interact with the tax department API. The best litmus test is to ask yourself if you have full access to the system. If you have full rights to make changes then it is an internal application boundary, otherwise it is an external application boundary.', 'software_testing'),
(59, 'Can you explain how TPA works?', 'There are three main elements which determine estimates for black box testing: size, test strategy, and productivity. Using all three elements we can determine the estimate for black box testing for a given project. Let\'s take a look at these elements. Size: The most important aspect of estimating is definitely the size of the project. The size of a project is mainly defined by the number of function points. But a function point fails or pays the least attention to the following factors: Complexity: Complexity defines how many conditions exist in function points identified during a project. More conditions means more test cases which means more testing estimates. Interfacing: How much does one function affect the other part of the system? If a function is modified then accordingly the other systems have to be tested as one function always impacts another. Uniformity: How reusable is the application? It is important to consider how many similar structured functions exist in the system. It is important to consider the extent to which the system allows testing with slight modifications. Test strategy: Every project has certain requirements. The importance of all these requirements also affects testing estimates. Any requirement importance is from two perspectives: one is the user importance and the other is the user usage. Depending on these two characteristics a requirement rating can be generated and a strategy can be chalked out accordingly, which also means that estimates vary accordingly. Productivity: This is one more important aspect to be considered while estimating black box testing. Productivity depends on many aspects.', 'software_testing'),
(60, 'Can you explain steps in function points?', 'Below are the steps in function points: First Count ILF, EIF, EI, EQ, RET, DET, FTR and use the rating tables. After you have counted all the elements you will get the unadjusted function points. Put rating values 0 to 5 to all 14 GSC. Adding total of all 14 GSC to come out with total VAF. Formula for VAF = 0.65 + (sum of all GSC factor/100). Finally, make the calculation of adjusted function point. Formula: Total function point = VAF * Unadjusted function point. Make estimation how many function points you will do per day. This is also called as \"Performance factor\".On basis of performance factor, you can calculate Man/Days.', 'software_testing'),
(61, 'Can you explain function points?', 'Function points are a unit measure for software much like an hour is to measuring time, miles are to measuring distance or Celsius is to measuring temperature. Function Points are an ordinal measure much like other measures such as kilometers, Fahrenheit, hours, so on and so forth. This approach computes the total function points (FP) value for the project, by totaling the number of external user inputs, inquiries, outputs, and master files, and then applying the following weights: inputs (4), outputs (5), inquiries (4), and master files (10). Each FP contributor can be adjusted within a range of +/-35% for a specific project complexity.', 'software_testing');

-- --------------------------------------------------------

--
-- Table structure for table `solidity_questions`
--

CREATE TABLE `solidity_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solidity_questions`
--

INSERT INTO `solidity_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Solidity?', 'Solidity is a statically-typed programming language for writing smart contracts on Ethereum.'),
(2, 'Who developed Solidity?', 'Solidity was developed by the Ethereum Foundation.'),
(3, 'What are the basic data types in Solidity?', 'uint, int, bool, address, string, bytes, and enums.'),
(4, 'What is the default visibility of a Solidity function?', 'The default visibility is internal.'),
(5, 'What is the purpose of the public keyword in Solidity?', 'It allows a function or state variable to be accessed externally and internally.'),
(6, 'What is the difference between view and pure functions?', 'view functions read blockchain state, while pure functions do not read or modify blockchain state.'),
(7, 'What is the purpose of the payable keyword?', 'It allows a function to receive Ether.'),
(8, 'What is the constructor in Solidity?', 'A constructor is a special function executed only once when the contract is deployed.'),
(9, 'What is the fallback function?', 'A fallback function is executed when a contract receives Ether without a function call.'),
(10, 'What is the difference between storage and memory in Solidity?', 'storage stores variables permanently on the blockchain, while memory stores temporary data for function execution.'),
(11, 'What is a mapping in Solidity?', 'A mapping is a key-value storage structure used for storing data efficiently.'),
(12, 'What is an event in Solidity?', 'An event is a logging mechanism that allows smart contracts to emit messages that external applications can track.'),
(13, 'How do you declare a struct in Solidity?', 'Using the struct keyword followed by a definition of attributes.'),
(14, 'What are modifiers in Solidity?', 'Modifiers are reusable pieces of code that can change function behavior.'),
(15, 'What is the purpose of the require function?', 'require ensures conditions are met before executing a function, otherwise, it reverts the transaction.'),
(16, 'What is the assert function used for?', 'assert is used for internal errors and invariants, reverting if a condition fails.'),
(17, 'What is the difference between require and revert?', 'require checks conditions before execution, while revert undoes all changes in a transaction.'),
(18, 'What is the selfdestruct function?', 'selfdestruct removes a contract from the blockchain and transfers remaining funds.'),
(19, 'What is a reentrancy attack?', 'A reentrancy attack occurs when an external contract repeatedly calls a function before execution completes.'),
(20, 'How do you prevent reentrancy attacks?', 'By using the checks-effects-interactions pattern and the reentrancy guard modifier.'),
(21, 'What are interfaces in Solidity?', 'Interfaces define function signatures that contracts must implement.'),
(22, 'What is the purpose of the delegatecall function?', 'delegatecall executes another contract’s function in the context of the calling contract.'),
(23, 'What is an ERC-20 token contract?', 'An ERC-20 contract defines a standard for fungible tokens on Ethereum.'),
(24, 'What is the ERC-721 standard?', 'ERC-721 defines the standard for non-fungible tokens (NFTs) on Ethereum.'),
(25, 'How do you upgrade a smart contract in Solidity?', 'Using proxy contracts like the Transparent Proxy Pattern.'),
(26, 'What is the gas limit in Solidity?', 'The gas limit is the maximum amount of gas a transaction can consume.'),
(27, 'How can you generate random numbers in Solidity?', 'Randomness is achieved using external oracles like Chainlink VRF.'),
(28, 'What is an external function in Solidity?', 'An external function can only be called from outside the contract.'),
(29, 'What is the difference between call, delegatecall, and staticcall?', 'call executes another contract, delegatecall runs code in the caller’s context, and staticcall prevents state modifications.'),
(30, 'What are best practices for writing secure Solidity code?', 'Use SafeMath, follow Solidity best practices, conduct audits, and prevent known vulnerabilities.');

-- --------------------------------------------------------

--
-- Table structure for table `springboot_questions`
--

CREATE TABLE `springboot_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'springboot'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `springboot_questions`
--

INSERT INTO `springboot_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What are the advantages of using Spring Boot?', 'The advantages of Spring Boot are listed below:\n- Easy to understand and develop spring applications.\n- Spring Boot is nothing but an existing framework with the addition of an embedded HTTP server and annotation configuration which makes it easier to u', 'springboot'),
(2, 'What are the Spring Boot key components?', 'Below are the four key components of spring-boot:\r\n- Spring Boot auto-configuration.\r\n- Spring Boot CLI.\r\n- Spring Boot starter POMs.\r\n- Spring Boot Actuators.', 'springboot'),
(3, 'Why Spring Boot over Spring?', 'Below are some key points which spring boot offers but spring doesn’t:\r\n- Starter POM.\r\n- Version Management.\r\n- Auto Configuration.\r\n- Component Scanning.\r\n- Embedded server.\r\n- InMemory DB.\r\n- Actuators.\r\nSpring Boot simplifies the spring feature for th', 'springboot'),
(4, 'What is the starter dependency of the Spring boot module?', 'Spring boot provides numbers of starter dependency, here are the most commonly used:\r\n- Data JPA starter.\r\n- Test Starter.\r\n- Security starter.\r\n- Web starter.\r\n- Mail starter.\r\n- Thymeleaf starter.', 'springboot'),
(5, 'How does Spring Boot work?', 'Spring Boot automatically configures your application based on the dependencies you have added to the project by using annotation. The entry point of the spring boot application is the class that contains @SpringBootApplication annotation and the main met', 'springboot'),
(6, 'What does the @SpringBootApplication annotation do internally?', 'The @SpringBootApplication annotation is equivalent to using @Configuration, @EnableAutoConfiguration, and @ComponentScan with their default attributes. Spring Boot enables the developer to use a single annotation instead of using multiple.', 'springboot'),
(7, 'What is the purpose of using @ComponentScan in the class files?', 'Spring Boot application scans all the beans and package declarations when the application initializes. You need to add the @ComponentScan annotation for your class file to scan your components added to your project.', 'springboot'),
(8, 'How does a spring boot application get started?', 'Just like any other Java program, a Spring Boot application must have a main method. This method serves as an entry point, which invokes the SpringApplication#run method to bootstrap the application.\r\nExample:\r\n@SpringBootApplication \r\npublic class MyAppl', 'springboot'),
(9, 'What are the most common Spring Boot CLI commands?', '-run, -test, -grap, -jar, -war, -install, -uninstall, --init, -shell, -help.\r\nTo check the description, run spring --help from the terminal.', 'springboot'),
(10, 'What is Spring Boot CLI and what are its benefits?', 'Spring Boot CLI is a command-line interface that allows you to create a spring-based java application using Groovy.\r\nExample: You don’t need to create getter and setter method or access modifier, return statement. If you use the JDBC template, it automati', 'springboot'),
(11, 'What is Spring Initializer?', 'Spring Initializer is a web application that helps you to create an initial spring boot project structure and provides a maven or gradle file to build your code. It solves the problem of setting up a framework when you are starting a project from scratch.', 'springboot'),
(12, 'What are starter dependencies?', 'Spring boot starter is a maven template that contains a collection of all the relevant transitive dependencies that are needed to start a particular functionality.\r\nExample:\r\n<dependency>\r\n<groupId> org.springframework.boot</groupId>\r\n<artifactId> spring-', 'springboot');

-- --------------------------------------------------------

--
-- Table structure for table `sql_questions`
--

CREATE TABLE `sql_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `skills` varchar(255) DEFAULT 'sql'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sql_questions`
--

INSERT INTO `sql_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is data structure?', 'A data structure is a way of organizing data that considers not only the items stored, but also their relationship to each other. Advance knowledge about the relationship between data items allows designing of efficient algorithms for the manipulation of data.', 'sql'),
(2, 'List out the areas in which data structures are applied extensively?', 'Compiler Design, Operating System, Database Management System, Statistical analysis package, Numerical Analysis, Graphics, Artificial Intelligence, Simulation', 'sql'),
(3, 'What are the major data structures used in the following areas : RDBMS, Network data model and Hierarchical data model.', 'RDBMS = Array (i.e. Array of structures) Network data model = Graph Hierarchical data model = Trees', 'sql'),
(4, 'If you are using C language to implement the heterogeneous linked list, what pointer type will you use?', 'The heterogeneous linked list contains different data types in its nodes and we need a link, pointer to connect them. It is not possible to use ordinary pointers for this. So we go for void pointer. Void pointer is capable of storing pointer to any type as it is a generic pointer type.', 'sql'),
(5, 'Minimum number of queues needed to implement the priority queue?', 'Two. One queue is used for actual storing of data and another for storing priorities.', 'sql'),
(6, 'What is the data structures used to perform recursion?', 'Stack. Because of its LIFO (Last In First Out) property it remembers its \'caller\' so knows whom to return when the function has to return. Recursion makes use of system stack for storing the return addresses of the function calls. Every recursive function has its equivalent iterative (non-recursive) function. Even when such equivalent iterative procedures are written, explicit stack is to be used.', 'sql'),
(7, 'What are the notations used in Evaluation of Arithmetic Expressions using prefix and postfix forms?', 'Polish and Reverse Polish notations.', 'sql'),
(8, 'Convert the expression ((A + B) * C - (D - E) ^ (F + G)) to equivalent Prefix and Postfix notations.', 'Prefix Notation: - * +ABC ^ - DE + FG Postfix Notation: AB + C * DE - FG + ^ -', 'sql'),
(9, 'Sorting is not possible by using which of the following methods? (Insertion, Selection, Exchange, Deletion)', 'Sorting is not possible in Deletion. Using insertion we can perform insertion sort, using selection we can perform selection sort, using exchange we can perform the bubble sort (and other similar sorting methods). But no sorting method can be done just using deletion.', 'sql'),
(10, 'What are the methods available in storing sequential files ?', 'Straight merging, Natural merging, Polyphase sort, Distribution of Initial runs.', 'sql'),
(11, 'List out few of the Application of tree data-structure?', 'The manipulation of Arithmetic expression, Symbol Table construction, Syntax analysis.', 'sql'),
(12, 'List out few of the applications that make use of Multilinked Structures?', 'Sparse matrix, Index generation.', 'sql'),
(13, 'In tree construction which is the suitable efficient data structure? (Array, Linked list, Stack, Queue)', 'Linked list is the suitable efficient data structure.', 'sql'),
(14, 'What is the type of the algorithm used in solving the 8 Queens problem?', 'Backtracking.', 'sql'),
(15, 'In an AVL tree, at what condition the balancing is to be done?', 'If the \'pivotal value\' (or the \'Height factor\') is greater than 1 or less than -1.', 'sql'),
(16, 'What is the bucket size, when the overlapping and collision occur at same time?', 'One. If there is only one entry possible in the bucket, when the collision occurs, there is no way to accommodate the colliding value. This results in the overlapping of values.', 'sql'),
(17, 'Classify the Hashing Functions based on the various methods by which the key value is found.', 'Direct method, Subtraction method, Modulo-Division method, Digit-Extraction method, Mid-Square method, Folding method, Pseudo-random method.', 'sql'),
(18, 'What are the types of Collision Resolution Techniques and the methods used in each of the type?', 'Open addressing (closed hashing), The methods used include: Overflow block. Closed addressing (open hashing), The methods used include: Linked list, Binary tree.', 'sql'),
(19, 'In RDBMS, what is the efficient data structure used in the internal storage representation?', 'B+ tree. Because in B+ tree, all the data is stored only in leaf nodes, that makes searching easier. This corresponds to the records that shall be stored in leaf nodes.', 'sql'),
(20, 'What is a spanning Tree?', 'A spanning tree is a tree associated with a network. All the nodes of the graph appear on the tree once. A minimum spanning tree is a spanning tree organized so that the total edge weight between nodes is minimized.', 'sql'),
(21, 'Does the minimum spanning tree of a graph give the shortest distance between any 2 specified nodes?', 'No. The Minimal spanning tree assures that the total weight of the tree is kept at its minimum. But it doesn\'t mean that the distance between any two nodes involved in the minimum-spanning tree is minimum.', 'sql'),
(22, 'Which is the simplest file structure? (Sequential, Indexed, Random)', 'Sequential is the simplest file structure.', 'sql'),
(23, 'Whether Linked List is linear or Non-linear data structure?', 'According to Access strategies Linked list is a linear one. According to Storage Linked List is a Non-linear one.', 'sql'),
(24, 'What is RDBMS?', 'Relational Data Base Management Systems (RDBMS) are database management systems that maintain data records and indices in tables. Relationships may be created and maintained across and among the data and tables. In a relational database, relationships between data items are expressed by means of tables. Interdependencies among these tables are expressed by data values rather than by pointers. This allows a high degree of data independence. An RDBMS has the capability to recombine the data items from different files, providing powerful tools for data usage.', 'sql'),
(25, 'What are the properties of the Relational tables?', 'Relational tables have six properties: Values are atomic. Column values are of the same kind. Each row is unique. The sequence of columns is insignificant. The sequence of rows is insignificant. Each column must have a unique name.', 'sql'),
(26, 'What is Normalization?', 'Database normalization is a data design and organization process applied to data structures based on rules that help building relational databases. In relational database design, the process of organizing data to minimize redundancy is called normalization. Normalization usually involves dividing a database into two or more tables and defining relationships between the tables. The objective is to isolate data so that additions, deletions, and modifications of a field can be made in just one table and then propagated through the rest of the database via the defined relationships.', 'sql'),
(27, 'What is De-normalization?', 'De-normalization is the process of attempting to optimize the performance of a database by adding redundant data. It is sometimes necessary because current DBMSs implement the relational model poorly. A true relational DBMS would allow for a fully normalized database at the logical level, while providing physical storage of data that is tuned for high performance. De-normalization is a technique to move from higher to lower normal forms of database modeling in order to speed up database access.', 'sql'),
(28, 'What are different normalization forms?', '1NF: Eliminate Repeating Groups Make a separate table for each set of related attributes, and give each table a primary key. Each field contains at most one value from its attribute domain. 2NF: Eliminate Redundant Data If an attribute depends on only part of a multi-valued key, remove it to a separate table. 3NF: Eliminate Columns Not Dependent On Key If attributes do not contribute to a description of the key, remove them to a separate table. All attributes must be directly dependent on the primary key. BCNF: Boyce-Codd Normal Form If there are non-trivial dependencies between candidate key attributes, separate them out into distinct tables. 4NF: Isolate Independent Multiple Relationships No table may contain two or more 1:n or n:m relationships that are not directly related. 5NF: Isolate Semantically Related Multiple Relationships There may be practical constrains on information that justify separating logically related many-to-many relationships. ONF: Optimal Normal Form A model limited to only simple (elemental) facts, as expressed in Object Role Model notation. DKNF: Domain-Key Normal Form A model free from all modification anomalies is said to be in DKNF. Remember, these normalization guidelines are cumulative. For a database to be in 3NF, it must first fulfill all the criteria of a 2NF and 1NF database.', 'sql'),
(29, 'What is Stored Procedure?', 'A stored procedure is a named group of SQL statements that have been previously created and stored in the server database. Stored procedures accept input parameters so that a single procedure can be used over the network by several clients using different input data. And when the procedure is modified, all clients automatically get the new version. Stored procedures reduce network traffic and improve performance. Stored procedures can be used to help ensure the integrity of the database. e.g. sp_helpdb, sp_renamedb, sp_depends etc.', 'sql'),
(30, 'What is Trigger?', 'A trigger is a SQL procedure that initiates an action when an event (INSERT, DELETE or UPDATE) occurs. Triggers are stored in and managed by the DBMS. Triggers are used to maintain the referential integrity of data by changing the data in a systematic fashion. A trigger cannot be called or executed; DBMS automatically fires the trigger as a result of a data modification to the associated table. Triggers can be viewed as similar to stored procedures in that both consist of procedural logic that is stored at the database level. Stored procedures, however, are not event-drive and are not attached to a specific table as triggers are. Stored procedures are explicitly executed by invoking a CALL to the procedure while triggers are implicitly executed. In addition, triggers can also execute stored procedures.', 'sql'),
(31, 'What is Nested Trigger?', 'A trigger can also contain INSERT, UPDATE and DELETE logic within itself, so when the trigger is fired because of data modification it can also cause another data modification, thereby firing another trigger. A trigger that contains data modification logic within itself is called a nested trigger.', 'sql'),
(32, 'What is View?', 'A simple view can be thought of as a subset of a table. It can be used for retrieving data, as well as updating or deleting rows. Rows updated or deleted in the view are updated or deleted in the table the view was created with. It should also be noted that as data in the original table changes, so does data in the view, as views are the way to look at part of the original table. The results of using a view are not permanently stored in the database. The data accessed through a view is actually constructed using standard T-SQL select command and can come from one to many different base tables or even other views.', 'sql'),
(33, 'What is Index?', 'An index is a physical structure containing pointers to the data. Indices are created in an existing table to locate rows more quickly and efficiently. It is possible to create an index on one or more columns of a table, and each index is given a name. The users cannot see the indexes; they are just used to speed up queries. Effective indexes are one of the best ways to improve performance in a database application. A table scan happens when there is no index available to help a query. In a table scan SQL Server examines every row in the table to satisfy the query results. Table scans are sometimes unavoidable, but on large tables, scans have a terrific impact on performance.', 'sql'),
(34, 'What is a Linked Server?', 'Linked Servers is a concept in SQL Server by which we can add other SQL Server to a Group and query both the SQL Server dbs using T-SQL Statements. With a linked server, you can create very clean, easy to follow, SQL statements that allow remote data to be retrieved, joined and combined with local data. Stored Procedure sp_addlinkedserver, sp_addlinkedsrvlogin will be used add new Linked Server.', 'sql'),
(35, 'What is Cursor?', 'Cursor is a database object used by applications to manipulate data in a set on a row-by- row basis, instead of the typical SQL commands that operate on all the rows in the set at one time. In order to work with a cursor we need to perform some steps in the following order: Declare cursor Open cursor Fetch row from the cursor Process fetched row Close cursor Deallocate cursor', 'sql'),
(36, 'What is Collation?', 'Collation refers to a set of rules that determine how data is sorted and compared. Character data is sorted using rules that define the correct character sequence, with options for specifying case sensitivity, accent marks, kana character types and character width.', 'sql'),
(37, 'What is Difference between Function and Stored Procedure?', 'UDF can be used in the SQL statements anywhere in the WHERE/HAVING/SELECT section where as Stored procedures cannot be. UDFs that return tables can be treated as another rowset. This can be used in JOINs with other tables. Inline UDF\'s can be thought of as views that take parameters and can be used in JOINs and other Rowset operations.', 'sql'),
(38, 'What is sub-query? Explain properties of sub-query?', 'Sub-queries are often referred to as sub-selects, as they allow a SELECT statement to be executed arbitrarily within the body of another SQL statement. A sub-query is executed by enclosing it in a set of parentheses. Sub-queries are generally used to return a single row as an atomic value, though they may be used to compare values against multiple rows with the IN keyword. A subquery is a SELECT statement that is nested within another T-SQL statement. A subquery SELECT statement if executed independently of the T-SQL statement, in which it is nested, will return a resultset. Meaning a subquery SELECT statement can standalone and is not depended on the statement in which it is nested. A subquery SELECT statement can return any number of values, and can be found in, the column list of a SELECT statement, a FROM, GROUP BY, HAVING, and/or ORDER BY clauses of a T-SQL statement. A Subquery can also be used as a parameter to a function call. Basically a subquery can be used anywhere an expression can be used.', 'sql'),
(39, 'What are different Types of Join?', 'Cross Join A cross join that does not have a WHERE clause produces the Cartesian product of the tables involved in the join. The size of a Cartesian product result set is the number of rows in the first table multiplied by the number of rows in the second table. The common example is when company wants to combine each product with a pricing table to analyze each product at each price. Inner Join A join that displays only the rows that have a match in both joined tables is known as inner Join. This is the default type of join in the Query and View Designer. Outer Join A join that includes rows even if they do not have related rows in the joined table is an Outer Join. You can create three different outer join to specify the unmatched rows to be included: Left Outer Join: In Left Outer Join all rows in the first-named table i.e. \"left\" table, which appears leftmost in the JOIN clause are included. Unmatched rows in the right table do not appear. Right Outer Join: In Right Outer Join all rows in the second-named table i.e. \"right\" table, which appears rightmost in the JOIN clause are included. Unmatched rows in the left table are not included. Full Outer Join: In Full Outer Join all rows in all joined tables are included, whether they are matched or not. Self Join This is a particular case when one table joins to itself, with one or two aliases to avoid confusion. A self join can be of any type, as long as the joined tables are the same. A self join is rather unique in that it involves a relationship with only one table. The common example is when company has a hierarchal reporting structure whereby one member of staff reports to another. Self Join can be Outer Join or Inner Join.', 'sql'),
(40, 'What are primary keys and foreign keys?', 'Primary keys are the unique identifiers for each row. They must contain unique values and cannot be null. Due to their importance in relational databases, Primary keys are the most fundamental of all keys and constraints. A table can have only one Primary key. Foreign keys are both a method of ensuring data integrity and a manifestation of the relationship between tables.', 'sql'),
(41, 'What is User Defined Functions? What kind of User-Defined Functions can be created?', 'User-Defined Functions allow defining its own T-SQL functions that can accept 0 or more parameters and return a single scalar data value or a table data type. Different Kinds of User-Defined Functions created are: Scalar User-Defined Function A Scalar user-defined function returns one of the scalar data types. Text, ntext, image and timestamp data types are not supported. These are the type of user-defined functions that most developers are used to in other programming languages. You pass in 0 to many parameters and you get a return value. Inline Table-Value User-Defined Function An Inline Table-Value user-defined function returns a table data type and is an exceptional alternative to a view as the user-defined function can pass parameters into a T-SQL select command and in essence provide us with a parameterized, non-updateable view of the underlying tables. Multi-statement Table-Value User-Defined Function A Multi-Statement Table-Value user-defined function returns a table and is also an exceptional alternative to a view as the function can support multiple T-SQL statements to build the final result where the view is limited to a single SELECT statement. Also, the ability to pass parameters into a TSQL select command or a group of them gives us the capability to in essence create a parameterized, non-updateable view of the data in the underlying tables. Within the create function command you must define the table structure that is being returned. After creating this type of user-defined function, It can be used in the FROM clause of a T-SQL command unlike the behavior found when using a stored procedure which can also return record sets.', 'sql'),
(42, 'What is Identity?', 'Identity (or AutoNumber) is a column that automatically generates numeric values. A start and increment value can be set, but most DBA leave these at 1. A GUID column also generates numbers; the value of this cannot be controlled. Identity/GUID columns do not need to be indexed.', 'sql'),
(43, 'What is DataWarehousing?', 'Subject-oriented, meaning that the data in the database is organized so that all the data elements relating to the same real-world event or object are linked together; Time-variant, meaning that the changes to the data in the database are tracked and recorded so that reports can be produced showing changes over time; Non-volatile, meaning that data in the database is never over-written or deleted, once committed, the data is static, read-only, but retained for future reporting. Integrated, meaning that the database contains data from most or all of an organization\'s operational applications, and that this data is made consistent.', 'sql'),
(44, 'Which TCP/IP port does SQL Server run on? How can it be changed?', 'SQL Server runs on port 1433. It can be changed from the Network Utility TCP/IP properties.', 'sql'),
(45, 'What are the difference between clustered and a non-clustered index?', 'A clustered index is a special type of index that reorders the way records in the table are physically stored. Therefore table can have only one clustered index. The leaf nodes of a clustered index contain the data pages. A non clustered index is a special type of index in which the logical order of the index does not match the physical stored order of the rows on disk. The leaf node of a non clustered index does not consist of the data pages. Instead, the leaf nodes contain index rows.', 'sql'),
(46, 'What are the different index configurations a table can have?', 'A table can have one of the following index configurations: No indexes A clustered index A clustered index and many nonclustered indexes A nonclustered index Many nonclustered indexes', 'sql'),
(47, 'What are different types of Collation Sensitivity?', 'Case sensitivity - A and a, B and b, etc. Accent sensitivity Kana Sensitivity - When Japanese kana characters Hiragana and Katakana are treated differently, it is called Kana sensitive. Width sensitivity - A single-byte character (half-width) and the same character represented as a double-byte character (full-width) are treated differently than it is width sensitive.', 'sql'),
(48, 'What is OLTP (Online Transaction Processing)?', 'In OLTP - online transaction processing systems relational database design use the discipline of data modeling and generally follow the Codd rules of data normalization in order to ensure absolute data integrity. Using these rules complex information is broken down into its most simple structures (a table) where all of the individual atomic level elements relate to each other and satisfy the normalization rules.', 'sql'),
(49, 'What\'s the difference between a primary key and a unique key?', 'Both primary key and unique key enforces uniqueness of the column on which they are defined. But by default primary key creates a clustered index on the column, where are unique creates a nonclustered index by default. Another major difference is that, primary key doesn\'t allow NULLs, but unique key allows one NULL only.', 'sql'),
(50, 'What is difference between DELETE and TRUNCATE commands?', 'Delete command removes the rows from a table based on the condition that we provide with a WHERE clause. Truncate will actually remove all the rows from a table and there will be no data in the table after we run the truncate command. TRUNCATE : TRUNCATE is faster and uses fewer system and transaction log resources than DELETE. TRUNCATE removes the data by deallocating the data pages used to store the table\'s data, and only the page deallocations are recorded in the transaction log. TRUNCATE removes all rows from a table, but the table structure, its columns, constraints, indexes and so on, remains. The counter used by an identity for new rows is reset to the seed for the column. You cannot use TRUNCATE TABLE on a table referenced by a FOREIGN KEY constraint. Because TRUNCATE TABLE is not logged, it cannot activate a trigger. TRUNCATE cannot be rolled back. TRUNCATE is DDL Command. TRUNCATE Resets identity of the table DELETE : DELETE removes rows one at a time and records an entry in the transaction log for each deleted row. If you want to retain the identity counter, use DELETE instead. If you want to remove table definition and its data, use the DROP TABLE statement. DELETE Can be used with or without a WHERE clause DELETE Activates Triggers. DELETE can be rolled back. DELETE is DML Command. DELETE does not reset identity of the table. Note: DELETE and TRUNCATE both can be rolled back when surrounded by TRANSACTION if the current session is not closed. If TRUNCATE is written in Query Editor surrounded by TRANSACTION and if session is closed, it can not be rolled back but DELETE can be rolled back.', 'sql'),
(51, 'When is the use of UPDATE_STATISTICS command?', 'This command is basically used when a large processing of data has occurred. If a large amount of deletions any modification or Bulk Copy into the tables has occurred, it has to update the indexes to take these changes into account. UPDATE_STATISTICS updates the indexes on these tables accordingly.', 'sql'),
(52, 'What is the difference between a HAVING CLAUSE and a WHERE CLAUSE?', 'They specify a search condition for a group or an aggregate. But the difference is that HAVING can be used only with the SELECT statement. HAVING is typically used in a GROUP BY clause. When GROUP BY is not used, HAVING behaves like a WHERE clause. Having Clause is basically used only with the GROUP BY function in a query whereas WHERE Clause is applied to each row before they are part of the GROUP BY function in a query.', 'sql'),
(53, 'What are the properties and different Types of Sub-Queries?', 'Properties of Sub-Query A sub-query must be enclosed in the parenthesis. A sub-query must be put in the right hand of the comparison operator, and A sub-query cannot contain an ORDER-BY clause. A query can contain more than one sub-query. Types of Sub-Query Single-row sub-query, where the sub-query returns only one row. Multiple-row sub-query, where the sub-query returns multiple rows,. and Multiple column sub-query, where the sub-query returns multiple columns', 'sql'),
(54, 'What is SQL Profiler?', 'SQL Profiler is a graphical tool that allows system administrators to monitor events in an instance of Microsoft SQL Server. You can capture and save data about each event to a file or SQL Server table to analyze later. For example, you can monitor a production environment to see which stored procedures are hampering performances by executing too slowly. Use SQL Profiler to monitor only the events in which you are interested. If traces are becoming too large, you can filter them based on the information you want, so that only a subset of the event data is collected. Monitoring too many events adds overhead to the server and the monitoring process and can cause the trace file or trace table to grow very large, especially when the monitoring process takes place over a long period of time.', 'sql'),
(55, 'What are the authentication modes in SQL Server? How can it be changed?', 'Windows mode and Mixed Mode - SQL and Windows. To change authentication mode in SQL Server click Start, Programs, Microsoft SQL Server and click SQL Enterprise Manager to run SQL Enterprise Manager from the Microsoft SQL Server program group. Select the server then from the Tools menu select SQL Server Configuration Properties, and choose the Security page.', 'sql'),
(56, 'Which command using Query Analyzer will give you the version of SQL server and operating system?', 'SELECT SERVERPROPERTY (\'productversion\'), SERVERPROPERTY (\'productlevel\'), SERVERPROPERTY (\'edition\').', 'sql'),
(57, 'What is SQL Server Agent?', 'SQL Server agent plays an important role in the day-to-day tasks of a database administrator (DBA). It is often overlooked as one of the main tools for SQL Server management. Its purpose is to ease the implementation of tasks for the DBA, with its full- function scheduling engine, which allows you to schedule your own jobs and scripts.', 'sql'),
(58, 'Can a stored procedure call itself or recursive stored procedure? How much level SP nesting is possible?', 'Yes. Because Transact-SQL supports recursion, you can write stored procedures that call themselves. Recursion can be defined as a method of problem solving wherein the solution is arrived at by repetitively applying it to subsets of the problem. A common application of recursive logic is to perform numeric computations that lend themselves to repetitive evaluation by the same processing steps. Stored procedures are nested when one stored procedure calls another or executes managed code by referencing a CLR routine, type, or aggregate. You can nest stored procedures and managed code references up to 32 levels.', 'sql'),
(59, 'What is Log Shipping?', 'Log shipping is the process of automating the backup of database and transaction log files on a production SQL server, and then restoring them onto a standby server. Enterprise Editions only supports log shipping. In log shipping the transactional log file from one server is automatically updated into the backup database on the other server. If one server fails, the other server will have the same db and can be used this as the Disaster Recovery plan. The key feature of log shipping is that it will automatically backup transaction logs throughout the day and automatically restore them on the standby server at defined interval.', 'sql'),
(60, 'Name 3 ways to get an accurate count of the number of records in a table?', 'SELECT * FROM table1 SELECT COUNT(*) FROM table1 SELECT rows FROM sysindexes WHERE id = OBJECT_ID(table1) AND indid < 2', 'sql'),
(61, 'What does it mean to have QUOTED_IDENTIFIER ON? What are the implications of having it OFF?', 'When SET QUOTED_IDENTIFIER is ON, identifiers can be delimited by double quotation marks, and literals must be delimited by single quotation marks. When SET QUOTED_IDENTIFIER is OFF, identifiers cannot be quoted and must follow all Transact-SQL rules for identifiers.', 'sql'),
(62, 'What is the difference between a Local and a Global temporary table?', 'A local temporary table exists only for the duration of a connection or, if defined inside a compound statement, for the duration of the compound statement. A global temporary table remains in the database permanently, but the rows exist only within a given connection. When connection is closed, the data in the global temporary table disappears. However, the table definition remains with the database for access when database is opened next time.', 'sql'),
(63, 'What is the STUFF function and how does it differ from the REPLACE function?', 'STUFF function is used to overwrite existing characters. Using this syntax, STUFF (string_expression, start, length, replacement_characters), string_expression is the string that will have characters substituted, start is the starting position, length is the number of characters in the string that are substituted, and replacement_characters are the new characters interjected into the string. REPLACE function to replace existing characters of all occurrences. Using the syntax REPLACE (string_expression, search_string, replacement_string), where every incidence of search_string found in the string_expression will be replaced with replacement_string.', 'sql'),
(64, 'What are the basic functions for master, msdb, model, tempdb and resource databases?', 'The master database holds information for all databases located on the SQL Server instance and is theglue that holds the engine together. Because SQL Server cannot start without a functioning masterdatabase, you must administer this database with care. The msdb database stores information regarding database backups, SQL Agent information, DTS packages, SQL Server jobs, and some replication information such as for log shipping. The tempdb holds temporary objects such as global and local temporary tables and stored procedures. The model is essentially a template database used in the creation of any new user database created in the instance. The resoure Database is a read-only database that contains all the system objects that are included with SQL Server. SQL Server system objects, such as sys.objects, are physically persisted in the Resource database, but they logically appear in the sys schema of every database. The Resource database does not contain user data or user metadata.', 'sql'),
(65, 'What is Service Broker?', 'Service Broker is a message-queuing technology in SQL Server that allows developers to integrate SQL Server fully into distributed applications. Service Broker is feature which provides facility to SQL Server to send an asynchronous, transactional message. it allows a database to send a message to another database without waiting for the response, so the application will continue to function if the remote database is temporarily unavailable.', 'sql'),
(66, 'Where SQL server user names and passwords are stored in SQL server?', 'They get stored in System Catalog Views sys.server_principals and sys.sql_logins.', 'sql'),
(67, 'What is Policy Management?', 'Policy Management in SQL SERVER 2008 allows you to define and enforce policies for configuring and managing SQL Server across the enterprise. Policy-Based Management is configured in SQL Server Management Studio (SSMS). Navigate to the Object Explorer and expand the Management node and the Policy Management node; you will see the Policies, Conditions, and Facets nodes.', 'sql'),
(68, 'What is Replication and Database Mirroring?', 'Database mirroring can be used with replication to provide availability for the publication database. Database mirroring involves two copies of a single database that typically reside on different computers. At any given time, only one copy of the database is currently available to clients which are known as the principal database. Updates made by clients to the principal database are applied on the other copy of the database, known as the mirror database. Mirroring involves applying the transaction log from every insertion, update, or deletion made on the principal database onto the mirror database.', 'sql'),
(69, 'What are Sparse Columns?', 'A sparse column is another tool used to reduce the amount of physical storage used in a database. They are the ordinary columns that have an optimized storage for null values. Sparse columns reduce the space requirements for null values at the cost of more overhead to retrieve nonnull values.', 'sql'),
(70, 'What does TOP Operator Do?', 'The TOP operator is used to specify the number of rows to be returned by a query. The TOP operator has new addition in SQL SERVER 2008 that it accepts variables as well as literal values and can be used with INSERT, UPDATE, and DELETES statements.', 'sql'),
(71, 'What is CTE?', 'CTE is an abbreviation Common Table Expression. A Common Table Expression (CTE) is an expression that can be thought of as a temporary result set which is defined within the execution of a single SQL statement. A CTE is similar to a derived table in that it is not stored as an object and lasts only for the duration of the query.', 'sql'),
(72, 'What is MERGE Statement?', 'MERGE is a new feature that provides an efficient way to perform multiple DML operations. In previous versions of SQL Server, we had to write separate statements to INSERT, UPDATE, or DELETE data based on certain conditions, but now, using MERGE statement we can include the logic of such data modifications in one statement that even checks when the data is matched then just update it and when unmatched then insert it. One of the most important advantages of MERGE statement is all the data is read and processed only once.', 'sql'),
(73, 'What is Filtered Index?', 'Filtered Index is used to index a portion of rows in a table that means it applies filter on INDEX which improves query performance, reduce index maintenance costs, and reduce index storage costs compared with full-table indexes. When we see an Index created with some where clause then that is actually a FILTERED INDEX.', 'sql'),
(74, 'Which are new data types introduced in SQL SERVER 2008?', 'The GEOMETRY Type: The GEOMETRY data type is a system .NET common language runtime (CLR) data type in SQL Server. This type represents data in a two-dimensional Euclidean coordinate system. The GEOGRAPHY Type: The GEOGRAPHY datatype’s functions are the same as with GEOMETRY. The difference between the two is that when you specify GEOGRAPHY, you are usually specifying points in terms of latitude and longitude. New Date and Time Datatypes: SQL Server 2008 introduces four new datatypes related to date and time: DATE, TIME, DATETIMEOFFSET, and DATETIME2. DATE: The new DATE type just stores the date itself. It is based on the Gregorian calendar and handles years from 1 to 9999. TIME: The new TIME (n) type stores time with a range of 00:00:00.0000000 through 23:59:59.9999999. The precision is allowed with this type. TIME supports seconds down to 100 nanoseconds. The n in TIME (n) defines this level of fractional second precision, from 0 to 7 digits of precision. The DATETIMEOFFSET Type: DATETIMEOFFSET (n) is the time-zone-aware version of a datetime datatype. The name will appear less odd when you consider what it really is: a date + a time + a time-zone offset. The offset is based on how far behind or ahead you are from Coordinated Universal Time (UTC) time. The DATETIME2 Type: It is an extension of the datetime type in earlier versions of SQL Server. This new datatype has a date range covering dates from January 1 of year 1 through December 31 of year 9999. This is a definite improvement over the 1753 lower boundary of the datetime datatype. DATETIME2 not only includes the larger date range, but also has a timestamp and the same fractional precision that TIME type provides', 'sql'),
(75, 'What are the Advantages of using CTE?', 'Using CTE improves the readability and makes maintenance of complex queries easy. The query can be divided into separate, simple, logical building blocks which can be then used to build more complex CTEs until final result set is generated. CTE can be defined in functions, stored procedures, triggers or even views. After a CTE is defined, it can be used as a Table or a View and can SELECT, INSERT, UPDATE or DELETE Data.', 'sql'),
(76, 'What is CLR?', 'In SQL Server 2008, SQL Server objects such as user-defined functions can be created using such CLR languages. This CLR language support extends not only to user-defined functions, but also to stored procedures and triggers. You can develop such CLR add-ons to SQL Server using Visual Studio 2008.', 'sql'),
(77, 'What are synonyms?', 'Synonyms give you the ability to provide alternate names for database objects. You can alias object names; for example, using the Employee table as Emp. You can also shorten names. This is especially useful when dealing with three and four part names; for example, shortening server.database.owner.object to object.', 'sql'),
(78, 'What is LINQ?', 'Language Integrated Query (LINQ) adds the ability to query objects using .NET languages. The LINQ to SQL object/relational mapping (O/RM) framework provides the following basic features: Tools to create classes (usually called entities) mapped to database tables Compatibility with LINQ\'s standard query operations The DataContext class, with features such as entity record monitoring, automatic SQL statement generation, record concurrency detection, and much more', 'sql'),
(79, 'What is Isolation Levels?', 'Transactions specify an isolation level that defines the degree to which one transaction must be isolated from resource or data modifications made by other transactions. Isolation levels are described in terms of which concurrency side-effects, such as dirty reads or phantom reads, are allowed. Transaction isolation levels control: Whether locks are taken when data is read, and what type of locks are requested. How long the read locks are held. Whether a read operation referencing rows modified by another transaction: Blocks until the exclusive lock on the row is freed. Retrieves the committed version of the row that existed at the time the statement or transaction started. Reads the uncommitted data modification.', 'sql'),
(80, 'What is use of EXCEPT Clause?', 'EXCEPT clause is similar to MINUS operation in Oracle. The EXCEPT query and MINUS query returns all rows in the first query that are not returned in the second query. Each SQL statement within the EXCEPT query and MINUS query must have the same number of fields in the result sets with similar data types.', 'sql'),
(81, 'How would you handle error in SQL SERVER 2008?', 'SQL Server now supports the use of TRY...CATCH con handling. TRY...CATCH lets us build error handling at the level we need, in the way w to, by setting a region where if any error occurs, it will break out of the region and head to an error handler. The basic structure is as follows: BEGIN TRY stmts.. END TRY BEGIN CATCH stmts.. END CATCH', 'sql'),
(82, 'What is RAISEERROR?', 'RaiseError generates an error message and initiates error processing for the session. RAISERROR can either reference a user-defined message stored in the sys.messages catalog view or build a message dynamically. The message is returned as a server error message to the calling application or to an associated CATCH block of a TRY | CATCH construct.', 'sql'),
(83, 'How to rebuild Master Database?', 'Master database is system database and it contains information about running server\'s configuration. When SQL Server 2005 is installed it usually creates master, model, msdb, tempdb resource and distribution system database by default. Only Master database is th one which is absolutely must have database. Without Master database SQL Server cannot be started. This is the reason it is extremely important to backup Master database. To rebuild the Master database, Run Setup.exe, verify, and repair a SQL Server instance, and rebuild the system databases. This procedure is most often used to rebuild the master database for a corrupted installation of SQL Server.', 'sql'),
(84, 'What is XML Datatype?', 'The xml data type lets you store XML documents and fragments in a SQL Server database. An XML fragment is an XML instance that is missing a single top-level element. You can create columns and variables of the xml type and store XML instances in them. The xml data type and associated methods help integrate XML into the relational framework of S Server.', 'sql'),
(85, 'What is Data Compression?', 'In SQL SERVE 2008 Data Compression comes in two flavors: Row Compression: Row compression changes the format of physical storage of data. It minimize the metadata (column information, length, offsets etc) associated with each record. Numeric data types and fixed length strings are stored in variable-length storage format, just like Varchar. Page Compression: Page compression allows common data to be shared between rows for a given page. Its uses the following techniques to compress data: Row compression. Prefix Compression. For every column in a page duplicate prefixes are identified. These prefixes are saved in compression information headers (CI) which resides after page header. A reference number is assigned to these prefixes and that reference number is replaced where ever those prefixes are being used. Dictionary Compression: Dictionary compression searches for duplicate values throughout the page and stores them in CI. The main difference between prefix and dictionary compression is that prefix is only restricted to one column while dictionary is applicable to the complete page.', 'sql'),
(86, 'What is Catalog Views?', 'Catalog views return information that is used by the SQL Server Database Engine. Catalog Views are the most general interface to the catalog metadata and provide the most efficient way to obtain, transform, and present customized forms of this information. All user- available catalog metadata is exposed through catalog views.', 'sql'),
(87, 'What is PIVOT and UNPIVOT?', 'A Pivot Table can automatically sort, count, and total the data stored in one table or spreadsheet and create a second table displaying the summarized data. The PIVOT operator turns the values of a specified column into column names, effectively rotating a table. UNPIVOT table is reverse of PIVOT Table.', 'sql'),
(88, 'What is Dirty Read ?', 'A dirty read occurs when two operations say, read and write occurs together giving the incorrect or unedited data. Suppose, A has changed a row, but has not committed the changes. B reads the uncommitted data but his view of the data may be wrong so that is Dirty Read.', 'sql'),
(89, 'What is Aggregate Functions?', 'Aggregate functions perform a calculation on a set of values and return a single value. Aggregate functions ignore NULL values except COUNT function. HAVING clause is used, along with GROUP BY, for filtering query using aggregate values. Following functions are aggregate functions. AVG, MIN CHECKSUM_AGG, SUM, COUNT, STDEV, COUNT_BIG, STDEVP, GROUPING, VAR, MAX. VARP', 'sql'),
(90, 'What do you mean by Table Sample?', 'TABLESAMPLE allows you to extract a sampling of rows from a table in the FROM clause. The rows retrieved are random and they are not in any order. This sampling can be based on a percentage of number of rows. You can use TABLESAMPLE when only a sampling of rows is necessary for the application instead of a full result set.', 'sql'),
(91, 'What is the difference between UNION and UNION ALL?', 'UNION The UNION command is used to select related information from two tables, much like the JOIN command. However, when using the UNION command all selected columns need to be of the same data type. With UNION, only distinct values are selected. UNION ALL The UNION ALL command is equal to the UNION command, except that UNION ALL selects all values. The difference between Union and Union all is that Union all will not eliminate duplicate rows, instead it just pulls all rows from all tables fitting your query specifics and combines them into a table.', 'sql'),
(92, 'What is B-Tree?', 'The database server uses a B-tree structure to organize index information. B-Tree generally has following types of index pages or nodes: root node: A root node contains node pointers to branch nodes which can be only one. branch node: A branch node contains pointers to leaf nodes or other branch nodes which can be two or more. leaf nodes: A leaf node contains index items and orizantal pointers to other leaf nodes which can be many.', 'sql');

-- --------------------------------------------------------

--
-- Table structure for table `swift_questions`
--

CREATE TABLE `swift_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `swift_questions`
--

INSERT INTO `swift_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Swift?', 'Swift is a powerful and intuitive programming language developed by Apple for iOS, macOS, watchOS, and tvOS applications.'),
(2, 'What are the advantages of Swift over Objective-C?', 'Swift has better performance, type safety, modern syntax, and improved memory management compared to Objective-C.'),
(3, 'What is type inference in Swift?', 'Type inference allows Swift to automatically determine the data type of a variable or constant without explicit declaration.'),
(4, 'What are optionals in Swift?', 'Optionals allow variables to store either a value or nil, providing a safe way to handle missing data.'),
(5, 'How do you unwrap an optional in Swift?', 'Using optional binding (if let, guard let) or forced unwrapping (!).'),
(6, 'What is the difference between let and var in Swift?', 'let is used for constants (immutable), while var is used for variables (mutable).'),
(7, 'What is a tuple in Swift?', 'A tuple is a collection of multiple values grouped into a single compound value.'),
(8, 'What is a closure in Swift?', 'A closure is a self-contained block of code that can capture and store references to variables and functions.'),
(9, 'What are higher-order functions in Swift?', 'Higher-order functions take functions as arguments or return functions (e.g., map, filter, reduce).'),
(10, 'What is a protocol in Swift?', 'A protocol defines a blueprint of methods, properties, and requirements that conforming types must implement.'),
(11, 'What is protocol-oriented programming in Swift?', 'Protocol-oriented programming promotes the use of protocols to define behavior rather than relying on class inheritance.'),
(12, 'What is an enum in Swift?', 'An enum is a user-defined type that groups related values together.'),
(13, 'How does Swift handle memory management?', 'Swift uses Automatic Reference Counting (ARC) to manage memory allocation and deallocation.'),
(14, 'What is a strong reference cycle?', 'A strong reference cycle occurs when two objects hold strong references to each other, preventing deallocation.'),
(15, 'How can you break a strong reference cycle?', 'Using weak or unowned references to avoid retain cycles.'),
(16, 'What is the difference between weak and unowned references?', 'weak references allow nil values, while unowned references assume the referenced object will always exist.'),
(17, 'What is the difference between struct and class in Swift?', 'Structs are value types (copied on assignment), while classes are reference types (passed by reference).'),
(18, 'What is the difference between a computed property and a stored property?', 'Stored properties store values, while computed properties dynamically calculate values.'),
(19, 'What is a lazy property in Swift?', 'A lazy property is initialized only when it is accessed for the first time.'),
(20, 'What are property observers in Swift?', 'Property observers (willSet, didSet) monitor changes to property values.'),
(21, 'What is the difference between an escaping and non-escaping closure?', 'Escaping closures are stored and executed later, while non-escaping closures execute immediately.'),
(22, 'What is DispatchQueue in Swift?', 'DispatchQueue is used for managing concurrent tasks and multithreading.'),
(23, 'How do you perform asynchronous tasks in Swift?', 'Using Grand Central Dispatch (GCD) or async/await.'),
(24, 'What is the purpose of the defer statement in Swift?', 'defer ensures that code executes just before exiting the current scope.'),
(25, 'What is Codable in Swift?', 'Codable is a protocol that allows easy encoding and decoding of data structures.'),
(26, 'What is Key-Value Observing (KVO) in Swift?', 'KVO is a mechanism to observe changes to properties in objects.'),
(27, 'What is the difference between Any and AnyObject in Swift?', 'Any can represent any type, while AnyObject is restricted to class types.'),
(28, 'How do you handle errors in Swift?', 'Using do-try-catch blocks to handle thrown errors.'),
(29, 'What is Combine in Swift?', 'Combine is a framework for handling asynchronous and event-driven programming using publishers and subscribers.');

-- --------------------------------------------------------

--
-- Table structure for table `tableau_questions`
--

CREATE TABLE `tableau_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tableau_questions`
--

INSERT INTO `tableau_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Tableau?', 'Tableau is a powerful data visualization and business intelligence tool used to analyze and represent data interactively.'),
(2, 'What are the different products of Tableau?', 'Tableau Desktop, Tableau Server, Tableau Online, Tableau Prep, and Tableau Public.'),
(3, 'What are Measures and Dimensions in Tableau?', 'Measures are numeric values that can be aggregated, while Dimensions are categorical data used for grouping and filtering.'),
(4, 'What is a Calculated Field in Tableau?', 'A Calculated Field is a user-defined field created using formulas to manipulate existing data.'),
(5, 'What is a Tableau Dashboard?', 'A Dashboard is a collection of multiple visualizations combined into a single interactive view.'),
(6, 'What is a Tableau Story?', 'A Story is a sequence of dashboards or sheets used to convey insights in a structured format.'),
(7, 'What are Filters in Tableau?', 'Filters allow users to restrict and refine the data displayed in a visualization.'),
(8, 'What are Parameters in Tableau?', 'Parameters allow users to input dynamic values for calculations and visualizations.'),
(9, 'What is the difference between Extracts and Live Connections?', 'Extracts are static snapshots of data, while Live Connections directly query the data source in real-time.'),
(10, 'What is the difference between a Worksheet and a Dashboard in Tableau?', 'A Worksheet contains a single visualization, while a Dashboard can have multiple worksheets combined.'),
(11, 'What is the purpose of Data Blending in Tableau?', 'Data Blending is used to combine data from multiple sources without joining tables directly.'),
(12, 'What is the difference between a Join and a Blend in Tableau?', 'A Join is performed at the database level, while Blending happens at the visualization level using common fields.'),
(13, 'What is a Dual Axis Chart in Tableau?', 'A Dual Axis Chart overlays two different measures on the same visualization for comparison.'),
(14, 'What are Groups in Tableau?', 'Groups allow users to combine similar data points into a single category.'),
(15, 'What are Sets in Tableau?', 'Sets are dynamic or static subsets of data used for analysis.'),
(16, 'What is a Reference Line in Tableau?', 'A Reference Line is a visual indicator used to highlight thresholds or trends in a chart.'),
(17, 'What is the difference between Continuous and Discrete Fields?', 'Continuous fields are numerical and form a range, while Discrete fields are categorical and create distinct values.'),
(18, 'What is a Heat Map in Tableau?', 'A Heat Map is a visualization that represents data density using colors.'),
(19, 'What are Actions in Tableau?', 'Actions are interactive elements that allow users to filter, highlight, or navigate between dashboards.'),
(20, 'What is a Histogram in Tableau?', 'A Histogram is a chart used to represent the frequency distribution of numerical data.'),
(21, 'How does Tableau handle Null values?', 'Null values can be replaced, filtered out, or handled using calculated fields.'),
(22, 'What is Level of Detail (LOD) Expression in Tableau?', 'LOD Expressions allow users to compute values at different levels of granularity within the dataset.'),
(23, 'What is a Treemap in Tableau?', 'A Treemap is a visualization that represents hierarchical data using nested rectangles.'),
(24, 'What is the use of the FIXED LOD expression?', 'FIXED LOD calculates values at a specific level of granularity, ignoring the visualization’s filters.'),
(25, 'What is the difference between SUM() and AVG() in Tableau?', 'SUM() calculates the total of values, while AVG() computes the average of values.'),
(26, 'What is Data Densification in Tableau?', 'Data Densification is the process of filling in missing data points to maintain continuity in trends.'),
(27, 'What is a Waterfall Chart in Tableau?', 'A Waterfall Chart shows cumulative effects of positive and negative values over time.'),
(28, 'What is the purpose of the Page Shelf in Tableau?', 'The Page Shelf allows users to animate and analyze changes in data over time.'),
(29, 'What are Best Practices for Dashboard Design in Tableau?', 'Use simple visualizations, ensure consistency, optimize performance, and design for interactivity.');

-- --------------------------------------------------------

--
-- Table structure for table `tensorflow_questions`
--

CREATE TABLE `tensorflow_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `skills` varchar(255) DEFAULT 'tensorflow'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tensorflow_questions`
--

INSERT INTO `tensorflow_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is TensorFlow?', 'TensorFlow is the world’s most used library for Machine Learning. Developed in 2015 by the Google Brain Team, it ensures to provide an easy-to-use low-level toolkit that can handle complex mathematical operations and learning architectures.', 'tensorflow'),
(2, 'What are tensors?', 'Tensors are similar to arrays in programming languages, but here, they are of higher dimensions. It can be considered as a generalization of matrices that form an n-dimensional array. TensorFlow provides methods that can be used to create tensor functions and compute their derivatives easily. This is what sets tensors apart from the NumPy arrays.', 'tensorflow'),
(3, 'What is the meaning of TensorBoard?', 'TensorBoard is a Graphical User Interface (GUI) that is provided by TensorFlow to help users visualize graphs, plots, and other metrics easily without having to write a lot of code. TensorBoard provides an ample number of advantages in terms of readability, ease of use, and performance metrics.', 'tensorflow'),
(4, 'What are some of the advantages of using TensorFlow?', 'TensorFlow has numerous advantages, and this is why it is the most used framework for Machine Learning in the world. Some of its advantages are: Platform independency, Usage of GPU for distributed computing, Auto-differentiation capability, Open-source and large community, Highly customizable based on requirements, Support for asynchronous computations.', 'tensorflow'),
(5, 'Are there any limitations to using TensorFlow?', 'Even though TensorFlow provides numerous advantages, it has some caveats in the current versions: No support for OpenCL (Open Computing Language) yet, GPU memory conflicts when used with Theano, Can be overwhelming for beginners to get started.', 'tensorflow'),
(6, 'What are the types of tensors available in TensorFlow?', 'There are three main types of tensors: Constant tensors, Variable tensors, Placeholder tensors.', 'tensorflow'),
(7, 'How can data be loaded into TensorFlow?', 'Data can be loaded in two ways: Data load into memory - data is loaded as a single array unit, TensorFlow data pipeline - uses built-in APIs to load and feed data to the algorithm.', 'tensorflow'),
(8, 'What is the simple working of an algorithm in TensorFlow?', 'The main steps are: Data import or generation, Data input through computational graphs, Generation of the loss function, Backpropagation, Iteration until output criteria are met.', 'tensorflow'),
(9, 'What are the methods that can be used to handle overfitting in TensorFlow?', 'Methods to handle overfitting include: Batch normalization, Regularization technique, Dropouts.', 'tensorflow'),
(10, 'What are the languages that are supported in TensorFlow?', 'TensorFlow supports Python, and experimental support is being implemented for Go, Java, and C++. Language bindings for Ruby, Scala, and Julia are also being developed by the open-source community.', 'tensorflow'),
(11, 'What are placeholder tensors?', 'Placeholder tensors are entities used to assign data at a later point in time. They allow building graphs without any prior data being present and do not require initialization for usage.', 'tensorflow'),
(12, 'What are managers in TensorFlow?', 'TensorFlow managers handle the following activities for servable objects: Loading, Unloading, Lookup, Lifetime management.', 'tensorflow'),
(13, 'Where is TensorFlow mostly used?', 'TensorFlow is used in Machine Learning and Deep Learning domains, including: Time series analysis, Image recognition, Voice recognition, Video upscaling, Text-based applications.', 'tensorflow'),
(14, 'What are TensorFlow servables?', 'Servables are objects that client machines use to perform computations. They are flexible in size and can include entities like lookup tables or tuples for inference models.', 'tensorflow'),
(15, 'How does the Python API work with TensorFlow?', 'The Python API provides functionalities such as: Automatic checkpoints, Automatic logging, Simple training distribution, Queue-runner design methods.', 'tensorflow'),
(16, 'What are some of the APIs outside of the TensorFlow project?', 'Popular APIs include: TFLearn (Python package), TensorLayer (for layering architecture), Pretty Tensor (Google’s chaining interface), Sonnet (modular approach to programming).', 'tensorflow'),
(17, 'What are TensorFlow loaders?', 'Loaders are used to load, unload, and work with servable objects. The load() function is used to pre-load a model from a saved entity easily.', 'tensorflow'),
(18, 'What makes TensorFlow advantageous over other libraries?', 'Advantages include: Efficient pipelines for text and image processing, Debugging with tfdbg, Visualization with TensorBoard, Scalability for Deep Learning applications.', 'tensorflow'),
(19, 'What are TensorFlow abstractions?', 'Abstractions like Keras and TF-Slim provide high-level access to data and model life cycle, helping maintain clean code and reduce code length.', 'tensorflow'),
(20, 'What are the differences between tf.variable and tf.placeholder in TensorFlow?', 'tf.variable: Defines values for variables that change with time, Requires initialization when defined. tf.placeholder: Defines inputs that do not change with time, Does not require initialization during defining.', 'tensorflow'),
(21, 'What is a graph explorer in TensorFlow?', 'A graph explorer is used to visualize a graph on TensorBoard and inspect model operations. It is recommended for understanding the flow in a graph.', 'tensorflow'),
(22, 'How is variable lifetime tracked in TensorFlow?', 'Variable lifetime is tracked after initialization using tf.Variable.initializer. The session can be closed using tf.Session.close to destroy the variable.', 'tensorflow'),
(23, 'What are the types of dashboards supported by TensorFlow?', 'TensorFlow supports: Scalar dashboard, Image dashboard, Graph dashboard, Text dashboard, Distributer dashboard, Histogram dashboard.', 'tensorflow'),
(24, 'Can TensorFlow be deployed onto a container architecture?', 'Yes, TensorFlow can be used with containerization tools like Docker, mainly for deploying models requiring text classification with convolutional neural networks.', 'tensorflow'),
(25, 'Differentiate between TensorFlow and PyTorch.', 'TensorFlow: Developed by Google, No support for runtime graph operations, Offers TensorBoard for visualization, Based on Theano library. PyTorch: Developed by Facebook, Provides runtime graph operations, No visualization tools, Based on Torch library.', 'tensorflow'),
(26, 'Is word embedding supported in TensorFlow?', 'Yes, called Word2vec in TensorFlow, widely used in Natural Language Processing. Models include: Continuous Bag of Words model, Skip-Gram model.', 'tensorflow'),
(27, 'What is the use of estimators in TensorFlow?', 'Estimators are high-level APIs providing code reusability for model training. They support: Premade estimator (e.g., DNNClassifier), Base class estimator (using model_fn function).', 'tensorflow'),
(28, 'What statistical distribution functions are provided by TensorFlow?', 'Statistical distributions in tf.contrib.distributions include: Beta, Bernoulli, Chi2, Dirichlet, Gamma, Uniform.', 'tensorflow'),
(29, 'Can you use TensorBoard without installing TensorFlow?', 'Yes, TensorBoard (versions above 1.14) can be used in standalone mode with limited features, supporting plugins: Scalars, Image, Audio, Graph, Projector, Histograms, Mesh.', 'tensorflow'),
(30, 'What is the meaning of the embedding projector in TensorFlow?', 'The embedding projector is used to visualize high-dimensional data by reading from the model checkpoint file and viewing input data after high-dimensional embedding.', 'tensorflow');

-- --------------------------------------------------------

--
-- Table structure for table `terraform_questions`
--

CREATE TABLE `terraform_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `terraform_questions`
--

INSERT INTO `terraform_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Terraform?', 'Terraform is an open-source Infrastructure as Code (IaC) tool used to provision and manage cloud resources declaratively.'),
(2, 'What is Infrastructure as Code (IaC)?', 'IaC is the practice of managing infrastructure using code instead of manual configuration.'),
(3, 'What are the key features of Terraform?', 'Features include declarative configuration, provider support, execution plans, and state management.'),
(4, 'What is a Terraform provider?', 'A provider is a plugin that enables Terraform to interact with cloud services like AWS, Azure, and GCP.'),
(5, 'What is a Terraform module?', 'A module is a reusable collection of Terraform configurations that can be shared across projects.'),
(6, 'How do you install Terraform?', 'Download the Terraform binary from HashiCorp, extract it, and add it to your system PATH.'),
(7, 'What is the Terraform CLI command to initialize a working directory?', '`terraform init` initializes the working directory and downloads necessary plugins.'),
(8, 'What is the purpose of `terraform plan`?', '`terraform plan` previews the changes Terraform will apply before execution.'),
(9, 'How do you apply changes in Terraform?', '`terraform apply` executes the changes defined in the Terraform configuration.'),
(10, 'What is the Terraform state file?', 'The state file (`terraform.tfstate`) keeps track of resources managed by Terraform.'),
(11, 'Why is Terraform state important?', 'Terraform state helps maintain resource mappings, improve performance, and enable collaboration.'),
(12, 'What is the difference between `terraform apply` and `terraform destroy`?', '`terraform apply` provisions resources, while `terraform destroy` removes them.'),
(13, 'How do you define variables in Terraform?', 'Variables are defined using the `variable` block and referenced using `var.variable_name`.'),
(14, 'What is the `terraform output` command used for?', '`terraform output` displays the values of output variables from the Terraform state.'),
(15, 'What is the difference between Terraform and Ansible?', 'Terraform is declarative and focuses on infrastructure provisioning, while Ansible is procedural and used for configuration management.'),
(16, 'What are Terraform workspaces?', 'Workspaces allow multiple state files within a single directory for different environments.'),
(17, 'What is a Terraform backend?', 'A backend defines where the Terraform state is stored, such as local files or remote storage (S3, Azure Storage, etc.).'),
(18, 'What is the difference between remote and local state in Terraform?', 'Local state is stored on the user’s machine, while remote state is stored in a shared location like S3 or Terraform Cloud.'),
(19, 'How do you handle sensitive data in Terraform?', 'Use environment variables, encrypted remote backends, or secrets management tools like HashiCorp Vault.'),
(20, 'What is the `terraform refresh` command used for?', '`terraform refresh` updates the state file with the real-world infrastructure state.'),
(21, 'What is the `terraform import` command used for?', '`terraform import` brings existing resources into Terraform management without modifying them.'),
(22, 'What are Terraform lifecycle rules?', 'Lifecycle rules (e.g., `create_before_destroy`, `prevent_destroy`) control how resources are managed during changes.'),
(23, 'What is the use of the `count` parameter in Terraform?', 'The `count` parameter allows creating multiple instances of a resource dynamically.'),
(24, 'What is the use of the `for_each` parameter in Terraform?', '`for_each` is used to create multiple resources from a map or set.'),
(25, 'What is a Terraform data source?', 'A data source allows Terraform to retrieve and use existing resource information from a provider.'),
(26, 'What is the `terraform taint` command used for?', '`terraform taint` marks a resource for recreation on the next `terraform apply`.'),
(27, 'How do you upgrade Terraform to the latest version?', 'Download the latest binary from HashiCorp and replace the existing version in your PATH.'),
(28, 'What is `terraform lock file`?', 'Terraform’s lock file (`.terraform.lock.hcl`) ensures provider versions remain consistent across different environments.'),
(29, 'What are best practices for writing Terraform code?', 'Best practices include using modules, version control, remote state, proper variable usage, and security best practices.'),
(30, 'How do you manage multiple environments (dev, prod) in Terraform?', 'Use workspaces, different state files, or separate directories with environment-specific configurations.');

-- --------------------------------------------------------

--
-- Table structure for table `unittesting_questions`
--

CREATE TABLE `unittesting_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unittesting_questions`
--

INSERT INTO `unittesting_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Unit Testing?', 'Unit Testing is a software testing technique where individual components of a program are tested in isolation.'),
(2, 'What is the purpose of Unit Testing?', 'The purpose is to verify that each unit of the software performs as expected and to catch bugs early.'),
(3, 'Which tools are commonly used for Unit Testing?', 'Common tools include JUnit, NUnit, PyTest, Mocha, and Jest.'),
(4, 'What is the difference between Unit Testing and Integration Testing?', 'Unit Testing tests individual components, while Integration Testing checks interactions between multiple components.'),
(5, 'What is Test-Driven Development (TDD)?', 'TDD is a software development process where tests are written before the actual code implementation.'),
(6, 'What are the benefits of Unit Testing?', 'Benefits include early bug detection, improved code quality, and easier refactoring.'),
(7, 'What are mocks and stubs in Unit Testing?', 'Mocks simulate behavior, while stubs provide predefined responses to isolate the unit under test.'),
(8, 'How do you write a Unit Test?', 'A Unit Test is written using a testing framework to verify that a function or method produces the expected output.'),
(9, 'What is a test case in Unit Testing?', 'A test case is a set of conditions used to determine if a unit functions correctly.'),
(10, 'What is code coverage in Unit Testing?', 'Code coverage measures the percentage of code executed by the test suite.'),
(11, 'What is the Arrange-Act-Assert (AAA) pattern?', 'It is a pattern for structuring Unit Tests: Arrange sets up test data, Act runs the method, and Assert verifies the outcome.'),
(12, 'What is dependency injection in Unit Testing?', 'Dependency injection is a design pattern used to pass dependencies to a class, making testing easier.'),
(13, 'What are assertions in Unit Testing?', 'Assertions are conditions in a test that determine if the expected and actual results match.'),
(14, 'What is parameterized testing?', 'Parameterized testing allows running a test with multiple input values to check different scenarios.'),
(15, 'What is the difference between a mock and a spy?', 'A mock is a fake object with predefined behavior, while a spy records interactions with real objects.'),
(16, 'What is test fixture in Unit Testing?', 'A test fixture sets up the necessary environment and data before running a test.'),
(17, 'What is a flaky test?', 'A flaky test is one that sometimes passes and sometimes fails without code changes.'),
(18, 'What is boundary value analysis in Unit Testing?', 'Boundary value analysis tests edge cases by using values at the boundaries of input ranges.'),
(19, 'What is the role of CI/CD in Unit Testing?', 'CI/CD automates the execution of Unit Tests to ensure code quality before deployment.'),
(20, 'What is an expected exception test?', 'It is a test that verifies if a method correctly throws an expected exception.'),
(21, 'What is mocking in Unit Testing?', 'Mocking is the practice of replacing real dependencies with controlled fake objects during tests.'),
(22, 'How can you improve Unit Test maintainability?', 'Use meaningful test names, avoid duplication, and keep tests independent.'),
(23, 'What is an assertion library?', 'An assertion library provides functions to compare expected and actual results in tests.'),
(24, 'What is refactoring, and why is Unit Testing important for it?', 'Refactoring improves code structure without changing functionality, and Unit Tests ensure it remains correct.'),
(25, 'What are test doubles in Unit Testing?', 'Test doubles are objects like mocks, stubs, and fakes used to simulate dependencies in tests.'),
(26, 'What is a test harness?', 'A test harness is a collection of software tools that automate test execution and validation.'),
(27, 'What is negative testing in Unit Testing?', 'Negative testing verifies how the system handles invalid or unexpected inputs.'),
(28, 'What is a smoke test in Unit Testing?', 'A smoke test is a quick check to ensure the basic functionality of an application before deeper testing.'),
(29, 'What is the difference between Unit Testing and Functional Testing?', 'Unit Testing checks individual components, while Functional Testing validates the entire system functionality.');

-- --------------------------------------------------------

--
-- Table structure for table `unity_questions`
--

CREATE TABLE `unity_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unity_questions`
--

INSERT INTO `unity_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Unity?', 'Unity is a cross-platform game engine used for developing 2D, 3D, AR, and VR applications.'),
(2, 'Which programming languages are supported by Unity?', 'Unity primarily supports C#, and previously supported JavaScript (UnityScript).'),
(3, 'What is the Unity Asset Store?', 'The Unity Asset Store is an online marketplace where developers can buy and sell assets like models, scripts, and animations.'),
(4, 'What is a GameObject in Unity?', 'A GameObject is the fundamental entity in Unity that represents objects in a scene.'),
(5, 'What are components in Unity?', 'Components add functionality to GameObjects, such as physics, rendering, and scripting.'),
(6, 'What is the purpose of the Transform component in Unity?', 'The Transform component controls the position, rotation, and scale of a GameObject.'),
(7, 'What is a Prefab in Unity?', 'A Prefab is a reusable GameObject template that can be instantiated multiple times.'),
(8, 'What is the difference between Update() and FixedUpdate() in Unity?', 'Update() runs every frame, while FixedUpdate() runs at fixed time intervals for physics calculations.'),
(9, 'What is a Rigidbody in Unity?', 'A Rigidbody is a component that enables physics interactions such as gravity and forces.'),
(10, 'What is the difference between Collider and Trigger in Unity?', 'A Collider defines the physical shape of an object, while a Trigger detects collisions without physical interaction.'),
(11, 'What is a Coroutine in Unity?', 'A Coroutine allows execution of code over multiple frames without blocking the main thread.'),
(12, 'How do you load a new scene in Unity?', 'You can use SceneManager.LoadScene(\"SceneName\") from the UnityEngine.SceneManagement namespace.'),
(13, 'What is the difference between Awake() and Start() in Unity?', 'Awake() is called when an object is initialized, while Start() is called before the first frame update.'),
(14, 'What is the purpose of Time.deltaTime in Unity?', 'Time.deltaTime represents the time between frames and is used to ensure smooth movement.'),
(15, 'What is the Unity Physics engine based on?', 'Unity’s Physics engine is based on NVIDIA’s PhysX.'),
(16, 'What is a Shader in Unity?', 'A Shader is a script that controls how materials are rendered on objects.'),
(17, 'What is the purpose of the Animator component in Unity?', 'The Animator component controls animations and state transitions for GameObjects.'),
(18, 'What is the difference between a Material and a Texture in Unity?', 'A Material defines how an object looks, while a Texture is an image applied to a Material.'),
(19, 'How do you detect user input in Unity?', 'You can use Input.GetKey(), Input.GetMouseButton(), or Input.GetAxis() for user interactions.'),
(20, 'What is NavMesh in Unity?', 'NavMesh is Unity’s built-in pathfinding system for AI navigation.'),
(21, 'What is LOD (Level of Detail) in Unity?', 'LOD is a technique that reduces the complexity of distant objects to improve performance.'),
(22, 'What is the Unity UI system?', 'Unity UI is a system used for creating graphical user interfaces using components like Text, Buttons, and Panels.'),
(23, 'How do you create a singleton in Unity?', 'A singleton in Unity is created using a static instance variable and a public accessor method.'),
(24, 'What is Post Processing in Unity?', 'Post Processing applies effects like bloom, motion blur, and color grading to enhance visuals.'),
(25, 'What are ScriptableObjects in Unity?', 'ScriptableObjects are assets used to store and manage data independently of scenes and objects.'),
(26, 'What is Occlusion Culling in Unity?', 'Occlusion Culling hides objects that are not visible to the camera to improve performance.'),
(27, 'What is the difference between Static and Dynamic batching in Unity?', 'Static batching optimizes non-moving objects, while dynamic batching optimizes frequently updated objects.'),
(28, 'How do you optimize performance in Unity games?', 'Performance optimization can be done using object pooling, LOD, culling, and reducing draw calls.'),
(29, 'What is Unity’s Universal Render Pipeline (URP)?', 'URP is a lightweight, flexible rendering pipeline optimized for performance across platforms.'),
(30, 'What is the role of the Garbage Collector in Unity?', 'The Garbage Collector automatically manages memory by cleaning up unused objects.');

-- --------------------------------------------------------

--
-- Table structure for table `unix_questions`
--

CREATE TABLE `unix_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `skills` varchar(255) DEFAULT 'unix'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unix_questions`
--

INSERT INTO `unix_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'How are devices represented in UNIX?', 'All devices are represented by files called special files that are located in /dev directory. Thus, device files and other files are named and accessed in the same way. A \'regular file\' is just an ordinary data file in the disk. A \'block special file\' represents a device with characteristics similar to a disk (data transfer in terms of blocks). A \'character special file\' represents a device with characteristics similar to a keyboard (data transfer is by stream of bits in sequential order).', 'unix'),
(2, 'What is \'inode\'?', 'All UNIX files have its description stored in a structure called \'inode\'. The inode contains info about the file-size, its location, time of last access, time of last modification, permission and so on. Directories are also represented as files and have an associated inode. In addition to descriptions about the file, the inode contains pointers to the data blocks of the file. If the file is large, inode has indirect pointer to a block of pointers to additional data blocks (this further aggregates for larger files). A block is typically 8k. Inode consists of the following fields: File owner identifier File type File access permissions File access times Number of links File size Location of the file data', 'unix'),
(3, 'Brief about the directory representation in UNIX.', 'A Unix directory is a file containing a correspondence between filenames and inodes. A directory is a special file that the kernel maintains. Only kernel modifies directories, but processes can read directories. The contents of a directory are a list of filename and inode number pairs. When new directories are created, kernel makes two entries named \'.\' (refers to the directory itself) and \'..\' (refers to parent directory). System call for creating directory is mkdir (pathname, mode).', 'unix'),
(4, 'What are the Unix system calls for I/O?', 'open(pathname,flag,mode) - open file creat(pathname,mode) - create file close(filedes) - close an open file read(filedes,buffer,bytes) - read data from an open file write(filedes,buffer,bytes) - write data to an open file lseek(filedes,offset,from) - position an open file dup(filedes) - duplicate an existing file descriptor dup2(oldfd,newfd) - duplicate to a desired file descriptor fcntl(filedes,cmd,arg) - change properties of an open file ioctl(filedes,request,arg) - change the behaviour of an open file The difference between fcntl anf ioctl is that the former is intended for any open file, while the latter is for device-specific operations.', 'unix'),
(5, 'How do you change File Access Permissions?', 'Every file has following attributes: owner\'s user ID ( 16 bit integer ) owner\'s group ID ( 16 bit integer ) File access mode word (r w x) - (r w x) - (r w x) (user permission) - (group permission) - (others permission) To change the access mode, we use chmod(filename,mode). Example 1 : To change mode of myfile to \'rw-rw-r--\' (ie. read, write permission for user - read,write permission for group - only read permission for others) we give the args as: chmod(myfile,0664) . Each operation is represented by discrete values \'r\' is 4 \'w\' is 2 \'x\' is 1 Therefore, for \'rw\' the value is 6(4+2). Example 2 : To change mode of myfile to \'rwxr--r--\' we give the args as: chmod(myfile,0744).', 'unix'),
(6, 'What are links and symbolic links in UNIX file system?', 'A link is a second name (not a file) for a file. Links can be used to assign more than one name to a file, but cannot be used to assign a directory more than one name or link filenames on different computers. Symbolic link \'is\' a file that only contains the name of another file.Operation on the symbolic link is directed to the file pointed by the it.Both the limitations of links are eliminated in symbolic links. Commands for linking files are: Link \"ln filename1 filename2\" Symbolic link \"ln -s filename1 filename2\"', 'unix'),
(7, 'What is a FIFO?', 'FIFO are otherwise called as \'named pipes\'. FIFO (first-in-first-out) is a special file which is said to be data transient. Once data is read from named pipe, it cannot be read again. Also, data can be read only in the order written. It is used in interprocess communication where a process writes to one end of the pipe (producer) and the other reads from the other end (consumer).', 'unix'),
(8, 'How do you create special files like named pipes and device files?', 'The system call mknod creates special files in the following sequence. kernel assigns new inode, sets the file type to indicate that the file is a pipe, directory or special file, If it is a device file, it makes the other entries like major, minor device numbers. For example: If the device is a disk, major device number refers to the disk controller and minor device number is the disk.', 'unix'),
(9, 'Discuss the mount and unmount system calls.', 'The privileged mount system call is used to attach a file system to a directory of another file system; the unmount system call detaches a file system. When you mount another file system on to your directory, you are essentially splicing one directory tree onto a branch in another directory tree. The first argument to mount call is the mount point, that is , a directory in the current file naming system. The second argument is the file system to mount to that point. When you insert a cdrom to your unix system\'s drive, the file system in the cdrom automatically mounts to \"/dev/cdrom\" in your system.', 'unix'),
(10, 'How does the inode map to data block of a file?', 'Inode has 13 block addresses. The first 10 are direct block addresses of the first 10 data blocks in the file. The 11th address points to a one-level index block. The 12th address points to a two-level (double in-direction) index block. The 13th address points to a three-level(triple in-direction)index block. This provides a very large maximum file size with efficient access to large files, but also small files are accessed directly in one disk read.', 'unix'),
(11, 'What is a shell?', 'A shell is an interactive user interface to an operating system services that allows an user to enter commands as character strings or through a graphical user interface. The shell converts them to system calls to the OS or forks off a process to execute the command. System call results and other information from the OS are presented to the user through an interactive interface. Commonly used shells are sh,csh,ks etc.', 'unix'),
(12, 'What is the difference between Swapping and Paging?', 'Swapping : Whole process is moved from the swap device to the main memory for execution. Process size must be less than or equal to the available main memory. It is easier to implementation and overhead to the system. Swapping systems does not handle the memory more flexibly as compared to the paging systems. Paging : Only the required memory pages are moved to main memory from the swap device for execution. Process size does not matter. Gives the concept of the virtual memory. It provides greater flexibility in mapping the virtual address space into the physical memory of the machine. Allows more number of processes to fit in the main memory simultaneously. Allows the greater process size than the available physical memory. Demand paging systems handle the memory more flexibly.', 'unix'),
(13, 'What is major difference between the Historic Unix and the new BSD release of Unix System V in terms of Memory Management?', 'Historic Unix uses Swapping - entire process is transferred to the main memory from the swap device, whereas the Unix System V uses Demand Paging - only the part of the process is moved to the main memory. Historic Unix uses one Swap Device and Unix System V allow multiple Swap Devices.', 'unix'),
(14, 'What is the main goal of the Memory Management?', 'It decides which process should reside in the main memory, Manages the parts of the virtual address space of a process which is non-core resident, Monitors the available main memory and periodically write the processes into the swap device to provide more processes fit in the main memory simultaneously.', 'unix'),
(15, 'What is a Map?', 'A Map is an Array, which contains the addresses of the free space in the swap device that are allocatable resources, and the number of the resource units available there. Address Units 1 10,000 This allows First-Fit allocation of contiguous blocks of a resource. Initially the Map contains one entry - address (block offset from the starting of the swap area) and the total number of resources. Kernel treats each unit of Map as a group of disk blocks. On the allocation and freeing of the resources Kernel updates the Map for accurate information.', 'unix'),
(16, 'What scheme does the Kernel in Unix System V follow while choosing a swap device among the multiple swap devices?', 'Kernel follows Round Robin scheme choosing a swap device among the multiple swap devices in Unix System V.', 'unix'),
(17, 'What is a Region?', 'A Region is a continuous area of a process\'s address space (such as text, data and stack). The kernel in a \"Region Table\" that is local to the process maintains region. Regions are sharable among the process.', 'unix'),
(18, 'What are the events done by the Kernel after a process is being swapped out from the main memory?', 'When Kernel swaps the process out of the primary memory, it performs the following: Kernel decrements the Reference Count of each region of the process. If the reference count becomes zero, swaps the region out of the main memory, Kernel allocates the space for the swapping process in the swap device, Kernel locks the other swapping process while the current swapping operation is going on, The Kernel saves the swap address of the region in the region table.', 'unix'),
(19, 'Is the Process before and after the swap are the same? Give reason.', 'Process before swapping is residing in the primary memory in its original form. The regions (text, data and stack) may not be occupied fully by the process, there may be few empty slots in any of the regions and while swapping Kernel do not bother about the empty slots while swapping the process out. After swapping the process resides in the swap (secondary memory) device. The regions swapped out will be present but only the occupied region slots but not the empty slots that were present before assigning. While swapping the process once again into the main memory, the Kernel referring to the Process Memory Map, it assigns the main memory accordingly taking care of the empty slots in the regions.', 'unix'),
(20, 'What do you mean by u-area (user area) or u-block?', 'This contains the private data that is manipulated only by the Kernel. This is local to the Process, i.e. each process is allocated a u-area.', 'unix'),
(21, 'What are the entities that are swapped out of the main memory while swapping the process out of the main memory?', 'All memory space occupied by the process, process\'s u-area, and Kernel stack are swapped out, theoretically. Practically, if the process\'s u-area contains the Address Translation Tables for the process then Kernel implementations do not swap the u-area.', 'unix'),
(22, 'What is Fork swap?', '\"fork()\" is a system call to create a child process. When the parent process calls \"fork()\" system call, the child process is created and if there is short of memory then the child process is sent to the read-to-run state in the swap device, and return to the user state without swapping the parent process. When the memory will be available the child process will be swapped into the main memory.', 'unix'),
(23, 'What is Expansion swap?', 'At the time when any process requires more memory than it is currently allocated, the Kernel performs Expansion swap. To do this Kernel reserves enough space in the swap device. Then the address translation mapping is adjusted for the new virtual address space but the physical memory is not allocated. At last Kernel swaps the process into the assigned space in the swap device. Later when the Kernel swaps the process into the main memory this assigns memory according to the new address translation mapping.', 'unix'),
(24, 'How the Swapper works?', 'The swapper is the only process that swaps the processes. The Swapper operates only in the Kernel mode and it does not uses System calls instead it uses internal Kernel functions for swapping. It is the archetype of all kernel process.', 'unix'),
(25, 'What are the processes that are not bothered by the swapper? Give Reason.', 'Zombie process: They do not take any up physical memory. Processes locked in memories that are updating the region of the process. Kernel swaps only the sleeping processes rather than the \'ready-to-run\' processes, as they have the higher probability of being scheduled than the Sleeping processes.', 'unix'),
(26, 'What are the requirements for a swapper to work?', 'The swapper works on the highest scheduling priority. Firstly it will look for any sleeping process, if not found then it will look for the ready-to-run process for swapping. But the major requirement for the swapper to work the ready-to-run process must be core-resident for at least 2 seconds before swapping out. And for swapping in the process must have been resided in the swap device for at least 2 seconds. If the requirement is not satisfied then the swapper will go into the wait state on that event and it is awaken once in a second by the Kernel.', 'unix'),
(27, 'What are the criteria for choosing a process for swapping into memory from the swap device?', 'The resident time of the processes in the swap device, the priority of the processes and the amount of time the processes had been swapped out.', 'unix'),
(28, 'What are the criteria for choosing a process for swapping out of the memory to the swap device?', 'The process\'s memory resident time, Priority of the process and The nice value.', 'unix'),
(29, 'What do you mean by nice value?', 'Nice value is the value that controls {increments or decrements} the priority of the process. This value that is returned by the nice() system call. The equation for using nice value is: Priority = (\"recent CPU usage\"/constant) + (base- priority) + (nice value) Only the administrator can supply the nice value. The nice() system call works for the running process only. Nice value of one process cannot affect the nice value of the other process.', 'unix'),
(30, 'What are conditions on which deadlock can occur while swapping the processes?', 'All processes in the main memory are asleep. All \"ready-to-run\" processes are swapped out. There is no space in the swap device for the new incoming process that are swapped out of the main memory. There is no space in the main memory for the new incoming process.', 'unix'),
(31, 'What are conditions for a machine to support Demand Paging?', 'Memory architecture must based on Pages, The machine must support the \'restartable\' instructions.', 'unix'),
(32, 'Brief about the initial process sequence while the system boots up.', 'While booting, special process called the \'swapper\' or \'scheduler\' is created with Process- ID 0. The swapper manages memory allocation for processes and influences CPU allocation. The swapper inturn creates 3 children: the process dispatcher, vhand and dbflush with IDs 1,2 and 3 respectively. This is done by executing the file \"/etc/init\". Process dispatcher gives birth to the shell. Unix keeps track of all the processes in an internal data structure called the Process Table (listing command is ps -el).', 'unix'),
(33, 'What are various IDs associated with a process?', 'Unix identifies each process with a unique integer called ProcessID. The process that executes the request for creation of a process is called the \'parent process\' whose PID is \'Parent Process ID\'. Every process is associated with a particular user called the \'owner\' who has privileges over the process. The identification for the user is \'UserID\'. Owner is the user who executes the process. Process also has \'Effective User ID\' which determines the access privileges for accessing resources like files. getpid() -process id getppid() -parent process id getuid() -user id geteuid() -effective user id', 'unix'),
(34, 'Explain fork() system call.', 'The \'fork()\' used to create a new process from an existing process. The new process is called the child process, and the existing process is called the parent. We can tell which is which by checking the return value from \'fork()\'. The parent gets the child\'s pid returned to him, but the child gets 0 returned to him.', 'unix'),
(35, 'Predict the output of the following program code. main() { fork(); printf(\"Hello World!\"); }', 'Answer : Hello World!Hello World! Explanation : The fork creates a child that is a duplicate of the parent process. The child begins from the fork(). All the statements after the call to fork() will be executed twice.(once by the parent process and other by child). The statement before fork() is executed only by the parent process.', 'unix'),
(36, 'Predict the output of the following program code main() { fork(); fork(); fork(); printf(\"Hello World!\"); }', 'Answer : \"Hello World\" will be printed 8 times. Explanation : 2^n times where n is the number of calls to fork();', 'unix'),
(37, 'List the system calls used for process management:', 'System calls - Description fork() - To create a new process exec() - To execute a new program in a process wait() - To wait until a created process completes its execution exit() - To exit from a process execution getpid() - To get a process identifier of the current process getppid() - To get parent process identifier nice() - To bias the existing priority of a process brk() - To increase/decrease the data segment size of a process', 'unix'),
(38, 'How can you get/set an environment variable from a program?', 'Getting the value of an environment variable is done by using \"getenv()\". Setting the value of an environment variable is done by using \"putenv()\"', 'unix'),
(39, 'How can a parent and child process communicate?', 'A parent and child can communicate through any of the normal inter-process communication schemes (pipes, sockets, message queues, shared memory), but also have some special ways to communicate that take advantage of their relationship as a parent and child. One of the most obvious is that the parent can get the exit status of the child.', 'unix'),
(40, 'What is a zombie?', 'When a program forks and the child finishes before the parent, the kernel still keeps some of its information about the child in case the parent might need it - for example, the parent may need to check the child\'s exit status. To be able to get this information, the parent calls \'wait()\'; In the interval between the child terminating and the parent calling \'wait()\', the child is said to be a \'zombie\' (If you do \'ps\', the child will have a \'Z\' in its status field to indicate this.)', 'unix'),
(41, 'What are the process states in Unix?', 'As a process executes it changes state according to its circumstances. Unix processes have the following states: Running : The process is either running or it is ready to run . Waiting : The process is waiting for an event or for a resource. Stopped : The process has been stopped, usually by receiving a signal. Zombie : The process is dead but have not been removed from the process table.', 'unix'),
(42, 'What Happens when you execute a program?', 'When you execute a program on your UNIX system, the system creates a special environment for that program. This environment contains everything needed for the system to run the program as if no other program were running on the system. Each process has process context, which is everything that is unique about the state of the program you are currently running. Every time you execute a program the UNIX system does a fork, which performs a series of operations to create a process context and then execute your program in that context. The steps include the following: Allocate a slot in the process table, a list of currently running programs kept by UNIX. Assign a unique process identifier (PID) to the process. iCopy the context of the parent, the process that requested the spawning of the new process. Return the new PID to the parent process. This enables the parent process to examine or control the process directly. After the fork is complete, UNIX runs your program.', 'unix'),
(43, 'What Happens when you execute a command?', 'When you enter \"ls\" command to look at the contents of your current working directory, UNIX does a series of things to create an environment for \"ls\" and the run it: The shell has UNIX perform a fork. This creates a new process that the shell will use to run the ls program. The shell has UNIX perform an exec of the \"ls\" program. This replaces the shell program and data with the program and data for \"ls\" and then starts running that new program. The \"ls\" program is loaded into the new process context, replacing the text and data of the shell. The \"ls\" program performs its task, listing the contents of the current directory.', 'unix'),
(44, 'What is a Daemon?', 'A daemon is a process that detaches itself from the terminal and runs, disconnected, in the background, waiting for requests and responding to them. It can also be defined as the background process that does not belong to a terminal session. Many system functions are commonly performed by daemons, including the sendmail daemon, which handles mail, and the NNTP daemon, which handles USENET news. Many other daemons may exist. Some of the most common daemons are: init : Takes over the basic running of the system when the kernel has finished the boot process. inetd : Responsible for starting network services that do not have their own stand-alone daemons. For example, inetd usually takes care of incoming rlogin, telnet, and ftp connections. cron : Responsible for running repetitive tasks on a regular schedule.', 'unix'),
(45, 'What is \"ps\" command for?', 'The \"ps\" command prints the process status for some or all of the running processes. The information given are the process identification number (PID),the amount of time that the process has taken to execute so far etc.', 'unix'),
(46, 'How would you kill a process?', 'The \"kill\" command takes the PID as one argument; this identifies which process to terminate. The PID of a process can be got using \"ps\" command.', 'unix'),
(47, 'What is an advantage of executing a process in background?', 'The most common reason to put a process in the background is to allow you to do something else interactively without waiting for the process to complete. At the end of the command you add the special background symbol, &. This symbol tells your shell to execute the given command in the background. Example : cp *.* ../backup& (cp is for copy)', 'unix'),
(48, 'How do you execute one program from within another?', 'The system calls used for low-level process creation are \"execlp()\" and \"execvp()\". The \"execlp()\" call overlays the existing program with the new one, runs that and exits. The original program gets back control only when an error occurs. execlp(path,file_name,arguments..); //last argument must be NULL A variant of \"execlp()\" called \"execvp()\" is used when the number of arguments is not known in advance. execvp(path,argument_array); //argument array should be terminated by NULL', 'unix'),
(49, 'What is IPC? What are the various schemes available?', 'The term IPC (Inter-Process Communication) describes various ways by which different process running on some operating system communicate between each other. Various schemes available are as follows: Pipes : One-way communication scheme through which different process can communicate. The problem is that the two processes should have a common ancestor (parent-child relationship). However this problem was fixed with the introduction of named-pipes (FIFO). Message Queues : Message queues can be used between related and unrelated processes running on a machine. Shared Memory : This is the fastest of all IPC schemes. The memory to be shared is mapped into the address space of the processes (that are sharing). The speed achieved is attributed to the fact that there is no kernel involvement. But this scheme needs synchronization. Various forms of synchronisation are mutexes, condition-variables, read-write locks, record-locks, and semaphores.', 'unix');

-- --------------------------------------------------------

--
-- Table structure for table `unreal_questions`
--

CREATE TABLE `unreal_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unreal_questions`
--

INSERT INTO `unreal_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Unreal Engine?', 'Unreal Engine is a powerful real-time 3D creation tool developed by Epic Games, used for game development, simulation, and more.'),
(2, 'Which programming language is primarily used in Unreal Engine?', 'C++ is the primary language used in Unreal Engine, along with Blueprints for visual scripting.'),
(3, 'What is Blueprints in Unreal Engine?', 'Blueprints is a visual scripting system in Unreal Engine that allows developers to create gameplay logic without coding.'),
(4, 'What is the Unreal Engine Marketplace?', 'The Unreal Engine Marketplace is an online store where users can buy and sell assets, including models, scripts, and tools.'),
(5, 'What is a Level in Unreal Engine?', 'A Level in Unreal Engine is a game environment that consists of objects, actors, and gameplay elements.'),
(6, 'What is the difference between a Pawn and a Character in Unreal Engine?', 'A Pawn is a controllable actor, while a Character is a specialized Pawn with movement and collision components.'),
(7, 'What is an Actor in Unreal Engine?', 'An Actor is a base class for all objects placed in a scene, including characters, lights, and props.'),
(8, 'What is a GameMode in Unreal Engine?', 'GameMode defines the rules and logic of a game, such as player spawn behavior and game objectives.'),
(9, 'What is a GameInstance in Unreal Engine?', 'A GameInstance is a persistent class that exists throughout the game’s lifetime and stores data between levels.'),
(10, 'What is the purpose of the Tick function in Unreal Engine?', 'The Tick function is called every frame and is used for updating game logic continuously.'),
(11, 'What is the role of the PlayerController in Unreal Engine?', 'The PlayerController manages player input and interaction with the game world.'),
(12, 'What is the difference between Static Mesh and Skeletal Mesh?', 'Static Meshes are non-moving objects, while Skeletal Meshes have bones for animation.'),
(13, 'What is the use of the Material Editor in Unreal Engine?', 'The Material Editor is used to create and modify materials for rendering objects in Unreal Engine.'),
(14, 'What is Lumen in Unreal Engine?', 'Lumen is a real-time global illumination and reflection system introduced in Unreal Engine 5.'),
(15, 'What is Nanite in Unreal Engine?', 'Nanite is a virtualized geometry system in Unreal Engine 5 that allows rendering of highly detailed models efficiently.'),
(16, 'What is the Sequencer in Unreal Engine?', 'The Sequencer is a cinematic tool used for creating cutscenes, animations, and in-game events.'),
(17, 'What is the difference between Deferred and Forward Rendering?', 'Deferred Rendering allows complex lighting with high performance, while Forward Rendering is optimized for VR and transparent materials.'),
(18, 'What is the use of the Unreal Engine Physics engine?', 'Unreal Engine uses PhysX and Chaos Physics to simulate realistic physics interactions in games.'),
(19, 'What is the purpose of the NavMesh in Unreal Engine?', 'NavMesh is used for AI pathfinding, allowing NPCs to navigate the environment.'),
(20, 'What is an Animation Blueprint in Unreal Engine?', 'An Animation Blueprint is a specialized Blueprint used to control character animations dynamically.'),
(21, 'What is Replication in Unreal Engine?', 'Replication is the process of synchronizing data across networked multiplayer games.'),
(22, 'What is the purpose of the Sound Cue system?', 'Sound Cues allow developers to create complex audio behaviors and interactions using a node-based system.'),
(23, 'What is Level Streaming in Unreal Engine?', 'Level Streaming allows loading and unloading parts of the game world dynamically to optimize performance.'),
(24, 'What is Ray Tracing in Unreal Engine?', 'Ray Tracing enables realistic lighting, shadows, and reflections by simulating the way light interacts with surfaces.'),
(25, 'What is the function of the Behavior Tree system?', 'The Behavior Tree system is used to create AI decision-making logic in Unreal Engine.'),
(26, 'What is a Post Process Volume in Unreal Engine?', 'A Post Process Volume applies visual effects such as color grading, bloom, and motion');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `mobile`, `password`, `location`, `created_at`) VALUES
(1, 'gnana', 'pradeep', 'bachupradeep99@gmail.com', '6281766469', 'qwerty', 'chennai', '2025-02-11 05:02:16'),
(2, 'user', '1', 'use@gmail.com', '6281766469', 'user', 'chen', '2025-02-13 08:05:43'),
(4, 'use', 'r1', 'use1@gmail.com', '123456809', 'user1', 'user1', '2025-02-25 09:12:40'),
(5, 'gnana', 'pradeep', 'john@gmail.com', '6281766469', 'qwerty', 'india', '2025-02-28 03:20:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `skill` varchar(50) DEFAULT NULL,
  `user_answer` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`id`, `question_id`, `skill`, `user_answer`, `timestamp`, `user_id`, `feedback`, `score`) VALUES
(141, 8, 'docker', '', '2025-02-20 03:13:49', 2, 'Almost there, keep trying!', 0),
(142, 10, 'docker', '', '2025-02-20 03:13:49', 2, 'Almost there, keep trying!', 2),
(143, 3, 'docker', '', '2025-02-20 03:13:49', 2, 'Almost there, keep trying!', -2),
(144, 8, 'docker', '', '2025-02-20 03:13:54', 2, 'Almost there, keep trying!', 0),
(145, 10, 'docker', '', '2025-02-20 03:13:54', 2, 'Almost there, keep trying!', 2),
(146, 3, 'docker', '', '2025-02-20 03:13:54', 2, 'Almost there, keep trying!', -2),
(147, 9, 'mongodb', 'dhejn', '2025-02-20 09:00:40', 2, 'Almost there, keep trying!', -2),
(148, 23, 'mongodb', 'weydchsxb', '2025-02-20 09:00:40', 2, 'Almost there, keep trying!', 1),
(149, 7, 'mongodb', 'eudsgchxjbn', '2025-02-20 09:00:40', 2, 'Good!', 83),
(150, 9, 'mongodb', 'dhejn', '2025-02-20 09:00:43', 2, 'Almost there, keep trying!', -2),
(151, 23, 'mongodb', 'weydchsxb', '2025-02-20 09:00:43', 2, 'Almost there, keep trying!', 1),
(152, 7, 'mongodb', 'eudsgchxjbn', '2025-02-20 09:00:43', 2, 'Good!', 83),
(153, 9, 'mongodb', 'dhejn', '2025-02-20 09:00:51', 2, 'Almost there, keep trying!', -2),
(154, 23, 'mongodb', 'weydchsxb', '2025-02-20 09:00:51', 2, 'Almost there, keep trying!', 1),
(155, 7, 'mongodb', 'eudsgchxjbn', '2025-02-20 09:00:51', 2, 'Good!', 83),
(156, 9, 'mongodb', 'dhejn', '2025-02-20 09:01:00', 2, 'Almost there, keep trying!', -2),
(157, 23, 'mongodb', 'weydchsxb', '2025-02-20 09:01:00', 2, 'Almost there, keep trying!', 1),
(158, 7, 'mongodb', 'eudsgchxjbn', '2025-02-20 09:01:00', 2, 'Good!', 83),
(159, 39, 'html', 'ii', '2025-02-20 09:45:48', 2, 'Almost there, keep trying!', -8),
(160, 36, 'html', 'h', '2025-02-20 09:45:48', 2, 'Almost there, keep trying!', 7),
(161, 14, 'html', 'ii', '2025-02-20 09:45:48', 2, 'Good!', 88),
(162, 39, 'html', 'ii', '2025-02-20 09:45:59', 2, 'Almost there, keep trying!', -8),
(163, 36, 'html', 'h', '2025-02-20 09:45:59', 2, 'Almost there, keep trying!', 7),
(164, 14, 'html', 'ii', '2025-02-20 09:45:59', 2, 'Good!', 88),
(165, 39, 'html', 'ii', '2025-02-20 09:46:11', 2, 'Almost there, keep trying!', -8),
(166, 36, 'html', 'h', '2025-02-20 09:46:11', 2, 'Almost there, keep trying!', 7),
(167, 14, 'html', 'ii', '2025-02-20 09:46:11', 2, 'Good!', 88),
(168, 10, 'html', 'kksb', '2025-02-20 09:50:31', 2, 'Almost there, keep trying!', 2),
(169, 1, 'html', 'ejdejk', '2025-02-20 09:50:31', 2, 'Almost there, keep trying!', 6),
(170, 24, 'html', 'kbsbs', '2025-02-20 09:50:31', 2, 'Almost there, keep trying!', -10),
(171, 7, 'css', 'hsf', '2025-02-20 09:56:23', 2, 'Good!', 83),
(172, 11, 'css', 'fsh', '2025-02-20 09:56:23', 2, 'Almost there, keep trying!', 0),
(173, 4, 'css', 'eheh', '2025-02-20 09:56:23', 2, 'Almost there, keep trying!', -5),
(174, 30, 'html', 'sssi', '2025-02-20 09:58:26', 2, 'Almost there, keep trying!', 4),
(175, 22, 'html', 'fh', '2025-02-20 09:58:26', 2, 'Almost there, keep trying!', -9),
(176, 27, 'html', 'eefhhf', '2025-02-20 09:58:26', 2, 'Almost there, keep trying!', -1),
(177, 39, 'vue', 'aehfbjcz', '2025-02-24 03:17:31', 2, 'Almost there, keep trying!', -8),
(178, 5, 'vue', 'eufkjad', '2025-02-24 03:17:31', 2, 'Almost there, keep trying!', 11),
(179, 19, 'vue', 'fhkdjv', '2025-02-24 03:17:31', 2, 'Almost there, keep trying!', 15),
(180, 39, 'vue', 'aehfbjcz', '2025-02-24 03:17:39', 2, 'Almost there, keep trying!', -8),
(181, 5, 'vue', 'eufkjad', '2025-02-24 03:17:39', 2, 'Almost there, keep trying!', 11),
(182, 19, 'vue', 'fhkdjv', '2025-02-24 03:17:39', 2, 'Almost there, keep trying!', 15),
(183, 39, 'vue', 'aehfbjcz', '2025-02-24 03:19:17', 2, 'Almost there, keep trying!', -8),
(184, 5, 'vue', 'eufkjad', '2025-02-24 03:19:17', 2, 'Almost there, keep trying!', 11),
(185, 19, 'vue', 'fhkdjv', '2025-02-24 03:19:17', 2, 'Almost there, keep trying!', 15),
(186, 19, 'vue', 'dwd', '2025-02-24 04:11:41', 2, 'Almost there, keep trying!', 15),
(187, 33, 'vue', 'wdsc', '2025-02-24 04:11:41', 2, 'Almost there, keep trying!', 1),
(188, 45, 'vue', 'wsd', '2025-02-24 04:11:41', 2, 'Almost there, keep trying!', -2),
(189, 19, 'vue', 'dwd', '2025-02-24 04:12:52', 2, 'Almost there, keep trying!', 15),
(190, 33, 'vue', 'wdsc', '2025-02-24 04:12:52', 2, 'Almost there, keep trying!', 1),
(191, 45, 'vue', 'wsd', '2025-02-24 04:12:52', 2, 'Almost there, keep trying!', -2),
(192, 18, 'mongodb', 'uirefhkdsjv', '2025-02-25 05:15:57', 2, 'Almost there, keep trying!', -2),
(193, 3, 'mongodb', 'hkejfd', '2025-02-25 05:15:57', 2, 'Almost there, keep trying!', -2),
(194, 15, 'mongodb', 'rkefjdvc ', '2025-02-25 05:15:57', 2, 'Almost there, keep trying!', -2),
(195, 17, 'css', 'piu5hbjkn ', '2025-02-25 08:53:39', 2, 'Good!', 85),
(196, 18, 'css', '8yyuihbjv', '2025-02-25 08:53:39', 2, 'Almost there, keep trying!', -2),
(197, 3, 'css', 'egfhbrjv', '2025-02-25 08:53:39', 2, 'Almost there, keep trying!', -2),
(198, 17, 'css', 'piu5hbjkn ', '2025-02-25 08:54:42', 2, 'Good!', 85),
(199, 18, 'css', '8yyuihbjv', '2025-02-25 08:54:42', 2, 'Almost there, keep trying!', -2),
(200, 3, 'css', 'egfhbrjv', '2025-02-25 08:54:42', 2, 'Almost there, keep trying!', -2),
(201, 17, 'css', 'piu5hbjkn ', '2025-02-25 08:55:48', 2, 'Good!', 85),
(202, 18, 'css', '8yyuihbjv', '2025-02-25 08:55:48', 2, 'Almost there, keep trying!', -2),
(203, 3, 'css', 'egfhbrjv', '2025-02-25 08:55:48', 2, 'Almost there, keep trying!', -2),
(204, 11, 'node.js', 'NPM (Node Package Manager) is a package manager for JavaScript, used to manage dependencies for Node.js projects. It allows developers to easily install, share, and manage packages (libraries or tools) needed for their project. NPM also helps in managing version control and package installation across different projects', '2025-02-25 08:58:32', 1, NULL, NULL),
(205, 13, 'node.js', ' module.exports is used in Node.js to export a module\'s functionality so that it can be imported and used in other files. By assigning an object, function, or data to module.exports, you define what part of the file will be accessible to other files that require it.', '2025-02-25 08:58:32', 1, NULL, NULL),
(206, 20, 'node.js', 'Event-driven programming is a programming paradigm where the flow of the program is determined by events such as user actions (clicks, keyboard input), sensor outputs, or messages from other programs. In this model, an application waits for an event to occur and then executes a function (event handler) to respond to it. It\'s commonly used in GUI applications and Node.js for handling asynchronous operations.', '2025-02-25 08:58:32', 1, NULL, NULL),
(207, 9, 'css', 'z-index is a CSS property that controls the vertical stacking order of elements. It determines which elements appear in front of or behind others when they overlap. Elements with a higher z-index value appear in front of those with a lower value. It only works on positioned elements (relative, absolute, or fixed).', '2025-02-25 09:10:35', 1, 'Good!', 87),
(208, 8, 'css', '.box {\r\n    position: absolute;\r\n    top: 50%;\r\n    left: 50%;\r\n    transform: translate(-50%, -50%);\r\n}\r\n', '2025-02-25 09:10:35', 1, 'Almost there, keep trying!', 43),
(209, 7, 'css', 'CSS Grid is a powerful layout system in CSS that provides a two-dimensional grid-based structure for web design. It allows developers to create comp', '2025-02-25 09:10:35', 1, 'Excellent!', 98),
(210, 20, 'mongodb', 'MongoDB Charts is a data visualization tool that allows users to create interactive charts and dashboards using data stored in a MongoDB database. It provides a graphical interface to visualize collections, perform aggregations, and analyze data without needing to write complex queries. MongoDB Charts supports various chart types, such as bar charts, line charts, pie charts, and maps, making it useful for reporting and analytics.', '2025-02-25 09:14:04', 4, 'Excellent!', 96),
(211, 4, 'mongodb', 'In MongoDB, queries are performed using the find() method, aggregation pipelines, or other query operators. Here are some examples:\r\n\r\nFind all documents in a collection:\r\n\r\njs\r\nCopy\r\nEdit\r\ndb.collection.find({})\r\nFind documents with a specific condition:\r\n\r\njs\r\nCopy\r\nEdit\r\ndb.collection.find({ age: { $gt: 25 } })', '2025-02-25 09:14:04', 4, 'Good!', 82),
(212, 13, 'mongodb', 'A document in MongoDB is a single record in a collection, stored in BSON (Binary JSON) format. It is a key-value pair structure similar to a JSON object and can contain nested fields and arrays.\r\n\r\nExample of a MongoDB document:\r\n\r\njson\r\nCopy\r\nEdit\r\n{\r\n    \"_id\": ObjectId(\"603dcdadf4f3a5b47e3d9f22\"),\r\n    \"name\": \"Alice\",\r\n    \"age\": 28,\r\n    \"city\": \"New York\",\r\n    \"skills\": [\"MongoDB\", \"Node.js\", \"React\"]\r\n}', '2025-02-25 09:14:04', 4, 'Needs Improvement!', 70),
(213, 11, 'mongodb', 'A database in MongoDB is a logical storage unit that holds collections of documents. It is similar to a database in relational database systems but is more flexible because MongoDB is a NoSQL database. Each database in MongoDB can have multiple collections, and each collection contains multiple documents.', '2025-02-25 09:17:39', 4, 'Needs Improvement!', 60),
(214, 22, 'mongodb', 'A pipeline in MongoDB\'s aggregation framework is a sequence of stages that process and transform documents from a collection. Each stage in the pipeline applies a specific operation (e.g., filtering, grouping, sorting) to the documents before passing the results to the next stage.', '2025-02-25 09:17:39', 4, 'Needs Improvement!', 61),
(215, 18, 'mongodb', 'Indexing in MongoDB is a technique used to improve the efficiency of queries by creating a special data structure that stores a small portion of the collection’s data in an organized way. Indexes allow MongoDB to quickly locate documents without scanning the entire collection.\r\n\r\n', '2025-02-25 09:17:39', 4, 'Needs Improvement!', 71),
(216, 14, 'unity', 'Time.deltaTime represents the time elapsed between the current and previous frame. It is used to ensure frame rate-independent movement, meaning that objects move at a consistent speed regardless of frame rate fluctuations.\r\n\r\n📌 Example Usage:', '2025-02-26 05:03:55', 2, 'Good!', 88),
(217, 17, 'unity', 'The Animator component is responsible for controlling animations in Unity. It manages transitions between animation states based on parameters and conditions defined in the Animator Controller.\r\n\r\n📌 Key Uses:\r\n\r\nPlays character animations (e.g., running, jumping, attacking).\r\nHandles smooth transitions between animations.\r\nUses parameters (float, int, bool, triggers) to control animation flow.', '2025-02-26 05:03:55', 2, 'Good!', 85),
(218, 7, 'unity', '✅ Answer:\r\nA Prefab is a reusable template for GameObjects in Unity. It allows developers to create objects once and instantiate multiple copies in the game without redefining them each time.\r\n\r\n📌 Benefits of Prefabs:\r\n\r\nSaves time by reusing objects (e.g., enemies, UI elements, bullets).\r\nAllows for easy updates (modifying the prefab updates all instances).\r\nImproves performance by enabling object pooling.', '2025-02-26 05:03:55', 2, 'Good!', 83),
(219, 31, 'html', 'A regular link (or normal link) is a hyperlink that has not been clicked or interacted with yet. It is typically styled using the a:link CSS pseudo-class.\r\nAn active link is a hyperlink that is currently being clicked or activated by the user. It is styled using the a:active CSS pseudo-class and may change color or appearance temporarily while clicked.', '2025-02-27 07:02:35', 2, 'Needs Improvement!', 70),
(220, 28, 'html', 'Style sheets, specifically Cascading Style Sheets (CSS), are used to define the appearance and layout of HTML elements on a webpage. They allow developers to control font styles, colors, spacing, positioning, and responsiveness of web content.', '2025-02-27 07:02:35', 2, 'Excellent!', 94),
(221, 34, 'html', 'If an external CSS file (e.g., styles.css) is opened directly in a browser, the browser does not render any visual styling. Instead, it displays the raw CSS code as plain text since CSS files are meant to be linked to HTML documents rather than executed independently.', '2025-02-27 07:02:35', 2, 'Needs Improvement!', 58),
(222, 32, 'html', 'ewfdvc ', '2025-02-28 05:01:22', 5, 'Almost there, keep trying!', 0),
(223, 31, 'html', 'erdv ewrdfv ', '2025-02-28 05:01:22', 5, 'Almost there, keep trying!', -2),
(224, 22, 'html', 'effvc', '2025-02-28 05:01:22', 5, 'Almost there, keep trying!', -7);

-- --------------------------------------------------------

--
-- Table structure for table `user_submissions`
--

CREATE TABLE `user_submissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_code` text NOT NULL,
  `user_output` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verbal_ability_questions`
--

CREATE TABLE `verbal_ability_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `verbal_ability_questions`
--

INSERT INTO `verbal_ability_questions` (`id`, `question`, `answer`) VALUES
(26, 'Identify the error in the sentence: \"Each of the students were given a prize.\"', 'Error: \"were\" should be \"was\" because \"each\" is singular.'),
(27, 'Convert into passive voice: \"The teacher gave the students homework.\"', 'Passive: \"The students were given homework by the teacher.\"'),
(28, 'Find the synonym of \"ephemeral.\"', 'Synonym: \"Short-lived\" or \"Transient.\"'),
(29, 'What is the difference between \"affect\" and \"effect\"?', '\"Affect\" is a verb meaning \"to influence,\" while \"effect\" is a noun meaning \"a result.\"'),
(30, 'Correct the sentence: \"I have went to the market.\"', 'Correction: \"I have gone to the market.\"'),
(31, 'Fill in the blank: \"The decision was made in accordance ____ company policies.\"', 'Answer: \"with.\"'),
(32, 'What is the antonym of \"gregarious\"?', 'Antonym: \"Shy\" or \"Introverted.\"'),
(33, 'Convert into indirect speech: He said, \"I will complete the project tomorrow.\"', 'Indirect: He said that he would complete the project the next day.'),
(34, 'Identify the correct sentence: \"The informations are correct\" or \"The information is correct.\"', 'Correct: \"The information is correct.\"'),
(35, 'What is the meaning of the idiom \"burn the midnight oil\"?', 'Meaning: To work late into the night.'),
(36, 'Identify the error: \"Neither of them are interested in the job.\"', 'Error: \"are\" should be \"is\" because \"neither\" is singular.'),
(37, 'Fill in the blank: \"Despite ______ his best efforts, he failed the exam.\"', 'Answer: \"Despite putting in his best efforts, he failed the exam.\"'),
(38, 'Rearrange to form a meaningful sentence: \"always / advice / wise / follow / the.\"', 'Answer: \"Always follow the wise advice.\"'),
(39, 'Find the word that fits: \"He was so _____ by the good news that he could not speak.\"', 'Answer: \"Overwhelmed.\"'),
(40, 'Identify the correct preposition: \"She is proficient ____ French.\"', 'Answer: \"in.\"');

-- --------------------------------------------------------

--
-- Table structure for table `verbal_reasoning_questions`
--

CREATE TABLE `verbal_reasoning_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `verbal_reasoning_questions`
--

INSERT INTO `verbal_reasoning_questions` (`id`, `question`, `answer`) VALUES
(36, 'A 300-meter-long train crosses a 450-meter-long bridge in 45 seconds. What is the speed of the train?', 'Total distance covered = 300 + 450 = 750 meters. Speed = 750 / 45 = 50 m/s or 180 km/h.'),
(37, 'Two people start from the same point but travel in opposite directions, one at 5 km/h and the other at 7 km/h. How far apart are they after 3 hours?', 'Relative speed = 5 + 7 = 12 km/h. Distance after 3 hours = 12 × 3 = 36 km.'),
(38, 'A container has a mixture of milk and water in the ratio 5:3. If 16 liters of mixture is replaced with water, making the ratio 5:7, find the total quantity of the mixture.', 'Let total quantity be x liters. (5/8) * x = (5/12) * (x - 16). Solving, x = 40 liters.'),
(39, 'A man can row 30 km downstream in 6 hours and the same distance upstream in 10 hours. Find the speed of the boat in still water and the speed of the stream.', 'Downstream speed = 30/6 = 5 km/h, Upstream speed = 30/10 = 3 km/h. Boat speed = (5+3)/2 = 4 km/h, Stream speed = (5-3)/2 = 1 km/h.'),
(40, 'A train takes 15 seconds to pass a platform and 9 seconds to pass a pole. If the train’s speed is 90 km/h, find the length of the platform.', 'Train length = 90 × (5/18) × 9 = 225m. Let platform length = p. (225 + p) / 15 = 25. Solving, p = 150m.'),
(41, 'A sum of money triples itself in 8 years under compound interest. Find the rate of interest.', 'Using formula A = P(1 + r/100)^n, 3P = P(1 + r/100)^8. Solving, r ≈ 14.72%.'),
(42, 'A man sells two watches for $300 each. On one, he gains 20% and on the other, he loses 20%. What is his overall gain or loss?', 'Let CP of first be x. 1.2x = 300 → x = 250. CP of second = y. 0.8y = 300 → y = 375. Total CP = 625, SP = 600. Loss = 25.'),
(43, 'The difference between simple interest and compound interest on a sum for 2 years at 10% per annum is $40. Find the principal.', 'Using CI - SI formula: P(10/100)^2 = 40 → P = 4000.'),
(44, 'A well is dug with a depth of 10 meters and a diameter of 4 meters. The soil removed is spread to form a layer of 2 cm thickness. Find the area covered.', 'Volume of well = πr²h = 3.14×2²×10 = 125.6m³. Area covered = 125.6 / 0.02 = 6280m².'),
(45, 'The sum of the digits of a two-digit number is 12. If the digits are reversed, the number is increased by 18. Find the number.', 'Let number be 10x + y. x + y = 12, (10y + x) - (10x + y) = 18. Solving, x = 5, y = 7. Number = 57.'),
(46, 'A car’s value depreciates by 10% per year. If its current value is $40,000, what was its original price three years ago?', 'Using depreciation formula: P = 40000 / (0.9)^3. Solving, P = $59,049.'),
(47, 'A tank is emptied in 4 hours with an outflow rate of 200 liters per minute. How many liters of water does it hold?', 'Total water = 200 × 60 × 4 = 48,000 liters.'),
(48, 'A shopkeeper mixes two varieties of rice at $40/kg and $60/kg in a ratio 3:2. Find the cost price per kg of the mixture.', 'Cost price = (3×40 + 2×60) / (3+2) = 48/kg.'),
(49, 'A train running at 72 km/h crosses a pole in 12 seconds. Find the length of the train.', 'Train length = 72 × (5/18) × 12 = 240 meters.'),
(50, 'A box contains 3 red, 4 blue, and 5 green balls. If two balls are drawn at random, what is the probability that both are green?', 'Total ways = 12C2 = 66. Favorable = 5C2 = 10. Probability = 10/66 = 5/33.');

-- --------------------------------------------------------

--
-- Table structure for table `vue_questions`
--

CREATE TABLE `vue_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `skills` varchar(255) DEFAULT 'vue'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vue_questions`
--

INSERT INTO `vue_questions` (`id`, `question`, `answer`, `skills`) VALUES
(1, 'What is Vue.js?', 'Vue.js is an open-source, JavaScript framework used to develop user interfaces and dynamic single-page web applications.', 'vue'),
(2, 'Vue.js is not supported by most browsers. True or False?', 'False, because Vue.js is supported by the majority of the browsers.', 'vue'),
(3, 'Mention some of the features of Vue.js.', 'Templates, Event Handling, Routing, Data Binding, Light-weight nature, Simple integration, and so on.', 'vue'),
(4, 'What are filters in Vue.js?', 'A filter is a JS function that changes the output of data to the browser.', 'vue'),
(5, 'What is the use of the v-for directive in Vue.js?', 'v-for is an inbuilt directive used to iterate over an array or an object.', 'vue'),
(6, 'How is a Vue instance created in Vue.js?', 'A Vue instance is created using the Vue() function, e.g., var ab = new Vue({ ... }).', 'vue'),
(7, 'Can we create a custom filter in Vue.js?', 'Yes, custom filters can be created in Vue.js.', 'vue'),
(8, 'Mention some of the pre-built directives in Vue.js.', 'v-for, v-show, v-if, v-else, v-bind, v-model, and so on.', 'vue'),
(9, 'What is the use of the \'const\' keyword in Vue.js?', '\'const\' is used to create constants.', 'vue'),
(10, 'Mention some alternatives to Vue.js.', 'React, Angular, jQuery, Bootstrap, and so on.', 'vue'),
(11, 'What is Virtual DOM?', 'Virtual DOM is a lightweight JavaScript representation of the Document Object Model (DOM).', 'vue'),
(12, 'Does Vue.js provide two-way communication?', 'Yes, Vue.js supports two-way communication.', 'vue'),
(13, 'Name some popular websites that use Vue.js.', 'Trivago, Netflix, Adobe, Facebook, Gitlab, Grammarly, and so on.', 'vue'),
(14, 'Which directive is used for one-way data binding in Vue.js?', 'The v-bind directive is used for one-way data binding in Vue.js.', 'vue'),
(15, 'Which inbuilt directive in Vue.js is used to establish two-way bindings?', 'The v-model directive is used for two-way bindings in Vue.js.', 'vue'),
(16, 'What is Mixin in Vue.js?', 'Mixins are used to distribute reusable functionalities for Vue components.', 'vue'),
(17, 'Are filters used in Vue 3?', 'No, filters are removed in Vue 3.x and are not used in the latest version.', 'vue'),
(18, 'Are filters reusable in Vue?', 'Yes, filters are reusable in Vue.', 'vue'),
(19, 'List some conditional directives in Vue.js.', 'v-if, v-else, v-else-if, and so on.', 'vue'),
(20, 'Can we call the REST API from Vue.js?', 'Yes, using the Axios library.', 'vue'),
(21, 'What are some of the advantages of MongoDB?', 'Some advantages of MongoDB are as follows: MongoDB supports field, range-based, string pattern matching type queries for searching the data in the database. MongoDB supports primary and secondary index on any fields. MongoDB uses JavaScript objects in pla', 'vue'),
(22, 'When to use MongoDB?', 'You should use MongoDB when building internet and business applications that need to evolve quickly and scale elegantly. MongoDB is popular with developers building scalable applications using agile methodologies. Use MongoDB when you need to: Support rap', 'vue'),
(23, 'What are the data types in MongoDB?', 'MongoDB supports a wide range of data types in documents. Some common data types are: Null, Boolean, Number, String, Date, Regular expression, Array, Embedded document, Object ID, Binary Data, and Code.', 'vue'),
(24, 'How to perform queries in MongoDB?', 'The find method is used to perform queries in MongoDB. It returns a subset of documents in a collection based on the query criteria. Example: db.users.find({\"age\": 24})', 'vue'),
(25, 'How do you Delete a Document?', 'MongoDB provides deleteOne and deleteMany methods for deleting documents. They take a filter document as a parameter. Example: db.books.deleteOne({\"_id\": 3})', 'vue'),
(26, 'How do you Update a Document?', 'Documents can be updated using updateOne, updateMany, or replaceOne. Example of replaceOne: db.users.replaceOne({\"_id\": ObjectId(\"4b2b9f67a1f631733d917a7a\")}, {\"name\": \"alice\", \"friends\": 24, \"enemies\": 2})', 'vue'),
(27, 'How to add data in MongoDB?', 'Use insertOne for a single document or insertMany for multiple documents. Example: db.books.insertOne({\"title\": \"Start With Why\"})', 'vue'),
(28, 'What are some features of MongoDB?', 'Features include Indexing, Aggregation, Special collection and index types, File storage, and Sharding.', 'vue'),
(29, 'How does Scale-Out occur in MongoDB?', 'MongoDB uses sharding to split data across multiple servers. It automatically redistributes documents. mongos acts as a query router and config servers store metadata and configuration settings for the cluster.', 'vue'),
(30, 'What is the Mongo Shell?', 'The Mongo Shell is a JavaScript shell for interacting with a MongoDB instance from the command line. Example: Start the shell with $ mongo.', 'vue'),
(31, 'What are Databases in MongoDB?', 'MongoDB groups collections into databases. Reserved database names include admin, local, and config.', 'vue'),
(32, 'What is a Collection in MongoDB?', 'A collection is a group of documents, similar to a table in a relational database. Collections have dynamic schemas, allowing documents with different structures.', 'vue'),
(33, 'What is a Document in MongoDB?', 'A Document is an ordered set of keys with associated values, represented as objects in JavaScript. Example: {\"greeting\": \"Hello world!\", \"views\": 3}', 'vue'),
(34, 'How is Querying done in MongoDB?', 'The find method is used for querying. Example: db.users.find({\"username\": \"alice\"})', 'vue'),
(35, 'Explain the SET Modifier in MongoDB?', '\"$set\" is used to update or add a field. Example: db.users.updateOne({\"_id\": ObjectId(\"4b253b067525f35f94b60a31\")}, {\"$set\": {\"favorite book\": \"Start with Why\"}})', 'vue'),
(36, 'Explain the process of Sharding.', 'Sharding splits data across machines for scalability. In MongoDB, shards are clusters of machines storing subsets of data.', 'vue'),
(37, 'What are Geospatial Indexes in MongoDB?', 'MongoDB supports 2dsphere and 2d indexes for geospatial queries. 2dsphere indexes model the earth\'s surface for accurate distance calculations.', 'vue'),
(38, 'Explain the term \'Indexing\' in MongoDB.', 'Indexes help efficiently resolve queries by storing an ordered list of values for specific fields. Example: db.users.createIndex({\"username\": 1})', 'vue'),
(39, 'What do you mean by Transactions?', 'Transactions ensure consistency in MongoDB. There are two APIs: Core API (start_transaction, commit_transaction) and Call-back API (recommended).', 'vue'),
(40, 'What are MongoDB Charts?', 'MongoDB Charts is a data visualization tool for MongoDB databases, offering PaaS and Server implementations.', 'vue'),
(41, 'What is the Aggregation Framework in MongoDB?', 'The aggregation framework performs analytics on documents using a pipeline of stages to process input data.', 'vue'),
(42, 'Explain the concept of pipeline in the MongoDB aggregation framework.', 'A pipeline stage processes each input document and produces an output document stream.', 'vue'),
(43, 'What is a Replica Set in MongoDB?', 'A replica set is a group of servers with one primary (handling writes) and multiple secondaries (keeping copies). It provides redundancy and high availability.', 'vue'),
(44, 'Explain the Replication Architecture in MongoDB.', 'Primary nodes save changes in the Oplog, and secondary nodes replicate changes from the Oplog, maintaining data consistency.', 'vue'),
(45, 'What are some utilities for backup and restore in MongoDB?', 'Utilities include mongoimport, mongoexport, mongodump, and mongorestore for data backup and restoration.', 'vue');

-- --------------------------------------------------------

--
-- Table structure for table `windowsserver_questions`
--

CREATE TABLE `windowsserver_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `windowsserver_questions`
--

INSERT INTO `windowsserver_questions` (`id`, `question`, `answer`) VALUES
(1, 'What is Windows Server?', 'Windows Server is a group of operating systems designed by Microsoft to provide enterprise-level management, networking, and security features.'),
(2, 'What are the different versions of Windows Server?', 'Common versions include Windows Server 2008, 2012, 2016, 2019, and 2022.'),
(3, 'What is Active Directory?', 'Active Directory is a directory service that manages users, computers, and other resources in a Windows network.'),
(4, 'What is the purpose of a domain controller?', 'A domain controller authenticates users and enforces security policies in an Active Directory domain.'),
(5, 'What is Group Policy in Windows Server?', 'Group Policy is a feature that allows administrators to manage user and computer configurations across a domain.'),
(6, 'What is DHCP and how does it work?', 'DHCP (Dynamic Host Configuration Protocol) assigns IP addresses to devices on a network automatically.'),
(7, 'What is DNS and why is it important?', 'DNS (Domain Name System) translates domain names into IP addresses, allowing users to access websites and network resources.'),
(8, 'What is the difference between a workgroup and a domain?', 'A workgroup is a peer-to-peer network, while a domain is centrally managed with authentication via a domain controller.'),
(9, 'What are FSMO roles in Active Directory?', 'FSMO (Flexible Single Master Operations) roles ensure consistency across domain controllers in an Active Directory environment.'),
(10, 'What is Windows Server Core?', 'Windows Server Core is a minimal installation option without a graphical interface, designed for improved security and performance.'),
(11, 'How do you create a new user in Active Directory?', 'Use the \"Active Directory Users and Computers\" (ADUC) tool or the \"New-ADUser\" PowerShell command.'),
(12, 'What is Hyper-V?', 'Hyper-V is Microsoft\'s virtualization platform used to create and manage virtual machines.'),
(13, 'What is a forest in Active Directory?', 'A forest is the highest level of organization in Active Directory, consisting of multiple domains sharing a common schema.'),
(14, 'What is the difference between NTFS and ReFS?', 'NTFS (New Technology File System) is widely used for general storage, while ReFS (Resilient File System) is optimized for large-scale data storage and resilience.'),
(15, 'What is WSUS?', 'WSUS (Windows Server Update Services) is a tool that allows administrators to manage Windows updates for devices in a network.'),
(16, 'How do you promote a server to a domain controller?', 'Use the \"dcpromo\" command (deprecated in newer versions) or use \"Add Roles and Features\" in Server Manager.'),
(17, 'What is the difference between local and domain accounts?', 'Local accounts are specific to a single computer, while domain accounts are managed in Active Directory.'),
(18, 'What is PowerShell and how is it used in Windows Server?', 'PowerShell is a command-line scripting language used for automating Windows Server administration tasks.'),
(19, 'How do you check the IP configuration of a server?', 'Use the \"ipconfig /all\" command in Command Prompt or the \"Get-NetIPAddress\" cmdlet in PowerShell.'),
(20, 'What is a GPO and how do you apply it?', 'A GPO (Group Policy Object) is a set of policies that can be applied to users and computers in an Active Directory domain.'),
(21, 'How do you reset a user’s password in Active Directory?', 'Use the \"Reset Password\" option in Active Directory Users and Computers (ADUC) or the \"Set-ADAccountPassword\" PowerShell command.'),
(22, 'What is the purpose of Windows Firewall?', 'Windows Firewall is a security feature that controls incoming and outgoing network traffic based on predefined rules.'),
(23, 'How do you enable Remote Desktop on Windows Server?', 'Enable Remote Desktop through the System Properties settings or via Group Policy.'),
(24, 'What is the difference between RAID 0, RAID 1, and RAID 5?', 'RAID 0 stripes data for speed, RAID 1 mirrors data for redundancy, and RAID 5 uses parity for fault tolerance.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appium_questions`
--
ALTER TABLE `appium_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arduino_questions`
--
ALTER TABLE `arduino_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arithmetic_questions`
--
ALTER TABLE `arithmetic_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aws_questions`
--
ALTER TABLE `aws_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cloudsecurity_questions`
--
ALTER TABLE `cloudsecurity_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code_submissions`
--
ALTER TABLE `code_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `compiler_results`
--
ALTER TABLE `compiler_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `computer_vision_questions`
--
ALTER TABLE `computer_vision_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cpp_questions`
--
ALTER TABLE `cpp_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cryptography_questions`
--
ALTER TABLE `cryptography_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `csharp_questions`
--
ALTER TABLE `csharp_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `css_questions`
--
ALTER TABLE `css_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cypress_questions`
--
ALTER TABLE `cypress_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_questions`
--
ALTER TABLE `c_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_structures_questions`
--
ALTER TABLE `data_structures_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbms_questions`
--
ALTER TABLE `dbms_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deep_learning_questions`
--
ALTER TABLE `deep_learning_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_questions`
--
ALTER TABLE `django_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `docker_questions`
--
ALTER TABLE `docker_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dot_net_questions`
--
ALTER TABLE `dot_net_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `embeddedc_questions`
--
ALTER TABLE `embeddedc_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ethereum_questions`
--
ALTER TABLE `ethereum_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ethical_hacking_questions`
--
ALTER TABLE `ethical_hacking_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `excel_questions`
--
ALTER TABLE `excel_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `express_questions`
--
ALTER TABLE `express_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flutter_questions`
--
ALTER TABLE `flutter_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gamephysics_questions`
--
ALTER TABLE `gamephysics_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gd_topics`
--
ALTER TABLE `gd_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_knowledge_questions`
--
ALTER TABLE `general_knowledge_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_round_questions`
--
ALTER TABLE `hr_round_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `html_questions`
--
ALTER TABLE `html_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hyperledger_questions`
--
ALTER TABLE `hyperledger_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `integrationtesting_questions`
--
ALTER TABLE `integrationtesting_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iotprotocols_questions`
--
ALTER TABLE `iotprotocols_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `javascript_questions`
--
ALTER TABLE `javascript_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `java_questions`
--
ALTER TABLE `java_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `junit_questions`
--
ALTER TABLE `junit_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kotlin_questions`
--
ALTER TABLE `kotlin_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kubernetes_questions`
--
ALTER TABLE `kubernetes_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linux_questions`
--
ALTER TABLE `linux_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logical_quesions`
--
ALTER TABLE `logical_quesions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manualtesting_questions`
--
ALTER TABLE `manualtesting_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mongodb_questions`
--
ALTER TABLE `mongodb_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mysql_questions`
--
ALTER TABLE `mysql_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `networking_questions`
--
ALTER TABLE `networking_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `network_questions`
--
ALTER TABLE `network_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `network_security_questions`
--
ALTER TABLE `network_security_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlp_questions`
--
ALTER TABLE `nlp_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_questions`
--
ALTER TABLE `node_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oracledb_questions`
--
ALTER TABLE `oracledb_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `os_questions`
--
ALTER TABLE `os_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pentest_questions`
--
ALTER TABLE `pentest_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performancetesting_questions`
--
ALTER TABLE `performancetesting_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postgresql_questions`
--
ALTER TABLE `postgresql_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `powerbi_questions`
--
ALTER TABLE `powerbi_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `python_questions`
--
ALTER TABLE `python_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pytorch_questions`
--
ALTER TABLE `pytorch_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raspberrypi_questions`
--
ALTER TABLE `raspberrypi_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reactnative_questions`
--
ALTER TABLE `reactnative_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `react_questions`
--
ALTER TABLE `react_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reinforcement_learning_questions`
--
ALTER TABLE `reinforcement_learning_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `scikit_questions`
--
ALTER TABLE `scikit_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selenium_questions`
--
ALTER TABLE `selenium_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartcontracts_questions`
--
ALTER TABLE `smartcontracts_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `software_testing_questions`
--
ALTER TABLE `software_testing_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solidity_questions`
--
ALTER TABLE `solidity_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `springboot_questions`
--
ALTER TABLE `springboot_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sql_questions`
--
ALTER TABLE `sql_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `swift_questions`
--
ALTER TABLE `swift_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tableau_questions`
--
ALTER TABLE `tableau_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tensorflow_questions`
--
ALTER TABLE `tensorflow_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terraform_questions`
--
ALTER TABLE `terraform_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unittesting_questions`
--
ALTER TABLE `unittesting_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unity_questions`
--
ALTER TABLE `unity_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unix_questions`
--
ALTER TABLE `unix_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unreal_questions`
--
ALTER TABLE `unreal_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `user_submissions`
--
ALTER TABLE `user_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verbal_ability_questions`
--
ALTER TABLE `verbal_ability_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verbal_reasoning_questions`
--
ALTER TABLE `verbal_reasoning_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vue_questions`
--
ALTER TABLE `vue_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `windowsserver_questions`
--
ALTER TABLE `windowsserver_questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appium_questions`
--
ALTER TABLE `appium_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `arduino_questions`
--
ALTER TABLE `arduino_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `arithmetic_questions`
--
ALTER TABLE `arithmetic_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `aws_questions`
--
ALTER TABLE `aws_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cloudsecurity_questions`
--
ALTER TABLE `cloudsecurity_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `code_submissions`
--
ALTER TABLE `code_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `compiler_results`
--
ALTER TABLE `compiler_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `computer_vision_questions`
--
ALTER TABLE `computer_vision_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cpp_questions`
--
ALTER TABLE `cpp_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cryptography_questions`
--
ALTER TABLE `cryptography_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `csharp_questions`
--
ALTER TABLE `csharp_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `css_questions`
--
ALTER TABLE `css_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cypress_questions`
--
ALTER TABLE `cypress_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `c_questions`
--
ALTER TABLE `c_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `data_structures_questions`
--
ALTER TABLE `data_structures_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dbms_questions`
--
ALTER TABLE `dbms_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `deep_learning_questions`
--
ALTER TABLE `deep_learning_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `django_questions`
--
ALTER TABLE `django_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `docker_questions`
--
ALTER TABLE `docker_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dot_net_questions`
--
ALTER TABLE `dot_net_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `embeddedc_questions`
--
ALTER TABLE `embeddedc_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ethereum_questions`
--
ALTER TABLE `ethereum_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ethical_hacking_questions`
--
ALTER TABLE `ethical_hacking_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `excel_questions`
--
ALTER TABLE `excel_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `express_questions`
--
ALTER TABLE `express_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `flutter_questions`
--
ALTER TABLE `flutter_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `gamephysics_questions`
--
ALTER TABLE `gamephysics_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gd_topics`
--
ALTER TABLE `gd_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `general_knowledge_questions`
--
ALTER TABLE `general_knowledge_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `hr_round_questions`
--
ALTER TABLE `hr_round_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `html_questions`
--
ALTER TABLE `html_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `hyperledger_questions`
--
ALTER TABLE `hyperledger_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `integrationtesting_questions`
--
ALTER TABLE `integrationtesting_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `iotprotocols_questions`
--
ALTER TABLE `iotprotocols_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `javascript_questions`
--
ALTER TABLE `javascript_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `java_questions`
--
ALTER TABLE `java_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `junit_questions`
--
ALTER TABLE `junit_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kotlin_questions`
--
ALTER TABLE `kotlin_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `kubernetes_questions`
--
ALTER TABLE `kubernetes_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `linux_questions`
--
ALTER TABLE `linux_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `logical_quesions`
--
ALTER TABLE `logical_quesions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `manualtesting_questions`
--
ALTER TABLE `manualtesting_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mongodb_questions`
--
ALTER TABLE `mongodb_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mysql_questions`
--
ALTER TABLE `mysql_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `networking_questions`
--
ALTER TABLE `networking_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `network_questions`
--
ALTER TABLE `network_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `network_security_questions`
--
ALTER TABLE `network_security_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `nlp_questions`
--
ALTER TABLE `nlp_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `node_questions`
--
ALTER TABLE `node_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oracledb_questions`
--
ALTER TABLE `oracledb_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `os_questions`
--
ALTER TABLE `os_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pentest_questions`
--
ALTER TABLE `pentest_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `performancetesting_questions`
--
ALTER TABLE `performancetesting_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `postgresql_questions`
--
ALTER TABLE `postgresql_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `powerbi_questions`
--
ALTER TABLE `powerbi_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `python_questions`
--
ALTER TABLE `python_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pytorch_questions`
--
ALTER TABLE `pytorch_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `raspberrypi_questions`
--
ALTER TABLE `raspberrypi_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reactnative_questions`
--
ALTER TABLE `reactnative_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `react_questions`
--
ALTER TABLE `react_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `reinforcement_learning_questions`
--
ALTER TABLE `reinforcement_learning_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scikit_questions`
--
ALTER TABLE `scikit_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `selenium_questions`
--
ALTER TABLE `selenium_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `smartcontracts_questions`
--
ALTER TABLE `smartcontracts_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `software_testing_questions`
--
ALTER TABLE `software_testing_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `solidity_questions`
--
ALTER TABLE `solidity_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `springboot_questions`
--
ALTER TABLE `springboot_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sql_questions`
--
ALTER TABLE `sql_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `swift_questions`
--
ALTER TABLE `swift_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tableau_questions`
--
ALTER TABLE `tableau_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tensorflow_questions`
--
ALTER TABLE `tensorflow_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `terraform_questions`
--
ALTER TABLE `terraform_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `unittesting_questions`
--
ALTER TABLE `unittesting_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `unity_questions`
--
ALTER TABLE `unity_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `unix_questions`
--
ALTER TABLE `unix_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `unreal_questions`
--
ALTER TABLE `unreal_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `user_submissions`
--
ALTER TABLE `user_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verbal_ability_questions`
--
ALTER TABLE `verbal_ability_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `verbal_reasoning_questions`
--
ALTER TABLE `verbal_reasoning_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `vue_questions`
--
ALTER TABLE `vue_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `windowsserver_questions`
--
ALTER TABLE `windowsserver_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `code_submissions`
--
ALTER TABLE `code_submissions`
  ADD CONSTRAINT `code_submissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `compiler_results`
--
ALTER TABLE `compiler_results`
  ADD CONSTRAINT `compiler_results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `compiler_results_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
