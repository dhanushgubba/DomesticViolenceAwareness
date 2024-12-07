<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Counselor Resources</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
        }

        /* Navbar Styles */
        .navbar {
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            margin-bottom: 15px;
            background-color: #4CAF50;
            color: white;
            padding: 20px 30px;  
            text-align: center;
            z-index: 1000;  
            box-sizing: border-box;
        }

        .navbar h1 {
            margin: 0;
            font-size: 1.5rem;
        }

        /* Sidebar Styles */
        .sidebar {
            height: 100vh;
            width: 250px;
            position: fixed;
            top: 60px;
            left: 0;
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            box-sizing: border-box;
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
            z-index: 999;
        }

        .sidebar h2 {
            text-align: center;
            font-size: 1.8rem;
        }

        .sidebar nav ul {
            list-style-type: none;
            padding: 0;
            margin-top: 30px;
        }

        .sidebar nav ul li {
            margin: 15px 0;
        }

        .sidebar nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 1.1rem;
        }

        .sidebar nav ul li a:hover {
            text-decoration: underline;
        }

        /* Main Content Area */
        .main-content {
            margin-left: 260px;
            margin-top: 60px;
            padding: 20px;
            width: calc(100% - 260px);
        }

        h2 {
            color: #4CAF50;
        }

        section {
            margin-bottom: 20px;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        a {
            text-decoration: none;
            color: #4CAF50;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Popup Styles */
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            z-index: 1001;
        }

        .popup .popup-content {
            margin-bottom: 10px;
        }

        .popup button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        .popup button:hover {
            background-color: #45a049;
        }

        .popup-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1000;
            display: none;
        }
    </style>
</head>
<body>

<%@ include file="components/counsellornavbar.jsp" %> <!-- Including navbar file -->
    
    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Counselor Resources</h2>
        <nav>
            <ul>
                <li><a href="#" onclick="showPopup('CBT is a structured, goal-oriented psychotherapy treatment that focuses on addressing negative thought patterns.')"></a></li>
                <li><a href="#" onclick="showPopup('The Beck Depression Inventory (BDI) is a self-reported questionnaire used to assess the severity of depression symptoms.x')">Client Assessments</a></li>
                <li><a href="#" onclick="showPopup('This guide provides steps for managing crises, including de-escalation techniques and emergency intervention protocols.')">Crisis Intervention</a></li>
                <li><a href="#" onclick="showPopup('Access video-based training modules on counseling best practices and emerging psychological theories')">Training & Education</a></li>
                <li><a href="#" onclick="showPopup('Learn strategies for managing stress, improving work-life balance, and avoiding counselor burnout through mindfulness and self-care tips.')">Self-Care</a></li>
                <li><a href="#" onclick="showPopup('Understand the legal and ethical standards for maintaining client confidentiality and complying with HIPAA regulations.)">Legal & Ethics</a></li>
                <li><a href="#" onclick="showPopup('Telehealth Platforms')">Technology Tools</a></li>
            </ul>
        </nav>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Client Assessment Tools Section -->
        <section id="assessment">
            <h2>Client Assessment Tools</h2>
            <p>Access a variety of client assessment tools:</p>
            <ul>
                <li><a href="#" onclick="showPopup('CBT is a structured, goal-oriented psychotherapy treatment that focuses on addressing negative thought patterns.')">Beck Depression Inventory</a></li>
                <li><a href="#" onclick="showPopup('A standardized tool for assessing anxiety symptoms, providing insights into the severity of a client’s anxiety-related challenges.')">Generalized Anxiety Disorder Scale</a></li>
                <li><a href="#" onclick="showPopup('The PHQ-9 is a widely used screening tool for depression that helps evaluate mental health conditions.')">Patient Health Questionnaire (PHQ-9)</a></li>
            </ul>
        </section>

        <!-- Crisis Intervention Resources Section -->
        <section id="crisis">
            <h2>Crisis Intervention Resources</h2>
            <p>Guidelines for handling clients in crisis situations:</p>
            <ul>
                <li><a href="#" onclick="showPopup('This guide provides steps for managing crises, including de-escalation techniques and emergency intervention protocols.')">Crisis Management Guide</a></li>
                <li><a href="#" onclick="showPopup('Contact details for immediate crisis response, including mental health support and emergency helplines.')">Hotlines & Helplines</a></li>
                <li><a href="#" onclick="showPopup('Learn how to create effective safety plans tailored to individual client needs during crisis situations.')">Safety Plans</a></li>
            </ul>
        </section>

        <!-- Training & Educational Resources Section -->
        <section id="training">
            <h2>Training & Educational Resources</h2>
            <p>Boost your knowledge and skills through webinars, articles, and more:</p>
            <ul>
                <li><a href="#" onclick="showPopup('Access video-based training modules on counseling best practices and emerging psychological theories.')">Video Tutorials</a></li>
                <li><a href="#" onclick="showPopup('Register for upcoming webinars and workshops focused on advanced counseling techniques and professional development.')">Webinars and Workshops</a></li>
                <li><a href="#" onclick="showPopup('Browse a curated collection of books, articles, and journals on counseling, psychology, and mental health.')">Books & Articles</a></li>
            </ul>
        </section>

        <!-- Self-Care for Counselors Section -->
        <section id="self-care">
            <h2>Self-Care for Counselors</h2>
            <p>Important tips and practices to avoid burnout and maintain well-being:</p>
            <ul>
                <li><a href="#" onclick="showPopup('Burnout Prevention')">Burnout Prevention</a></li>
                <li><a href="#" onclick="showPopup('Discover mindfulness exercises designed to help counselors manage stress and stay focused during sessions.')">Mindfulness for Counselors</a></li>
                <li><a href="#" onclick="showPopup('Join support groups where counselors can discuss challenges, share advice, and provide mutual encouragement.')">Peer Support Groups</a></li>
            </ul>
        </section>

        <!-- Legal and Ethical Guidelines Section -->
        <section id="legal">
            <h2>Legal and Ethical Guidelines</h2>
            <p>Learn about the legal and ethical considerations in counseling:</p>
            <ul>
                <li><a href="#" onclick="showPopup('Understand the legal and ethical standards for maintaining client confidentiality and complying with HIPAA regulations.')">Confidentiality and HIPAA</a></li>
                <li><a href="#" onclick="showPopup('Review ethical standards and best practices for conducting therapy sessions with integrity and respect for client rights.')">Ethical Guidelines for Counselors</a></li>
                <li><a href="#" onclick="showPopup('Learn how to ensure that clients are fully informed about therapy processes, their rights, and the consent process.')">Client Rights and Informed Consent</a></li>
            </ul>
        </section>

        <!-- Technology Tools for Counselors Section -->
        <section id="tools">
            <h2>Technology Tools for Counselors</h2>
            <p>Explore the latest tools and software that can assist your practice:</p>
            <ul>
                <li><a href="#" onclick="showPopup('Telehealth Platforms')">Telehealth Platforms</a></li>
                <li><a href="#" onclick="showPopup('Explore tools for secure, digital client note-taking and record-keeping with enhanced data protection features.')">Digital Journals</a></li>
                <li><a href="#" onclick="showPopup('Discover top-rated therapy apps that enhance client engagement and streamline the counseling process.')">Therapy Apps</a></li>
            </ul>
        </section>
    </div>

    <!-- Popup Overlay -->
    <div class="popup-overlay" id="popup-overlay"></div>

    <!-- Popup Content -->
    <div class="popup" id="popup">
        <div class="popup-content" id="popup-content"></div>
        <button onclick="closePopup()">Close</button>
    </div>

    <script>
        // Function to show the popup with content
        function showPopup(content) {
            const popup = document.getElementById("popup");
            const popupContent = document.getElementById("popup-content");
            const popupOverlay = document.getElementById("popup-overlay");

            popupContent.innerHTML = "<p>" + content + "</p>"; // Customize content here
            popup.style.display = "block";
            popupOverlay.style.display = "block";
        }

        // Function to close the popup
        function closePopup() {
            const popup = document.getElementById("popup");
            const popupOverlay = document.getElementById("popup-overlay");

            popup.style.display = "none";
            popupOverlay.style.display = "none";
        }
    </script>

</body>
</html>
