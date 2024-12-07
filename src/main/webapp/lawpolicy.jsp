<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Know Your Rights</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1100px;
            margin: 40px auto;
            padding: 20px;
            background: white;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            animation: fadeIn 1.5s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            color: #3a77ff;
            font-size: 1.8rem;
            margin-bottom: 10px;
            text-shadow: 1px 1px 2px rgba(58, 119, 255, 0.2);
        }

        .rights-section {
            margin-bottom: 30px;
            transition: transform 0.3s, background-color 0.3s;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #fff;
            position: relative;
        }

        .rights-section:hover {
            background-color: #f8faff;
            transform: scale(1.02);
        }

        .rights-section h2 {
            border-left: 5px solid #3a77ff;
            padding-left: 15px;
        }

        .rights-section p {
            line-height: 1.8;
            font-size: 1.1rem;
            padding-left: 20px;
        }

        .rights-section img {
            width: 100%;
            height: auto;
            max-height: 500px;
            object-fit: cover;
            margin-bottom: 15px;
        }

        .helplines {
            background: linear-gradient(90deg, #3a77ff, #67b6ff);
            color: white;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(58, 119, 255, 0.2);
            transition: box-shadow 0.3s;
        }

        .helplines:hover {
            box-shadow: 0 8px 16px rgba(58, 119, 255, 0.4);
        }

        .helplines h3 {
            margin: 0 0 10px;
            font-size: 1.5rem;
        }

        .helplines p {
            margin: 5px 0;
            font-size: 1.1rem;
        }

        .helplines a {
            color: #fff;
            font-weight: bold;
            text-decoration: none;
            padding: 8px 15px;
            background-color: gold;
            border-radius: 6px;
            transition: all 0.3s;
        }

        .helplines a:hover {
            background-color: #ffd700;
            color: #333;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .button-container a {
            display: inline-block;
            padding: 12px 25px;
            background-color: #3a77ff;
            color: white;
            font-size: 1rem;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            box-shadow: 0 4px 6px rgba(58, 119, 255, 0.2);
            transition: background-color 0.3s, transform 0.2s;
        }

        .button-container a:hover {
            background-color: #2a5fcc;
            transform: translateY(-2px);
        }
    </style>
</head>

<body>
    <%@ include file="components/usernavbar.jsp" %>

    <div class="container">
        <!-- Rights Section 1: Protection of Women from Domestic Violence Act -->
        <div class="rights-section">
            <img src="https://media.geeksforgeeks.org/wp-content/uploads/20240108163025/Protection-of-Women-from-Domestic-Violence-Act-2005.webp"
                alt="Domestic Violence Image">
            <h2>Protection of Women from Domestic Violence Act, 2005</h2>
            <p>This act provides protection against physical, emotional, sexual, and economic abuse. Women can file complaints and seek restraining orders to ensure safety and justice.</p>
        </div>

        <!-- Rights Section 2: Police Assistance -->
        <div class="rights-section">
            <img src="https://vishalsainiadv.com/wp-content/uploads/2024/01/Filing-A-Domestic-Violence-Complaint-In-India-As-A-Wife.jpg"
                alt="Police Assistance Image">
            <h2>Police Assistance</h2>
            <p>Victims have the right to approach the police and file a First Information Report (FIR). Police officers are legally bound to assist victims promptly and effectively.</p>
        </div>

        <!-- Rights Section 3: Free Legal Aid -->
        <div class="rights-section">
            <img src="https://static.vecteezy.com/system/resources/previews/041/760/816/non_2x/law-firm-services-illustration-with-justice-legal-advice-judgement-and-lawyer-consultant-in-flat-cartoon-background-design-vector.jpg"
                alt="Legal Aid Image">
            <h2>Free Legal Aid</h2>
            <p>Free legal services are available for victims through government and non-governmental organizations (NGOs). Examples include the National Legal Services Authority (NALSA).</p>
        </div>

        <!-- Rights Section 4: Sexual Harassment of Women at Workplace -->
        <div class="rights-section">
            <img src="https://www.legalmantra.net/admin/assets/upload_image/blog/poc.png" alt="Workplace Harassment Image">
            <h2>Sexual Harassment of Women at Workplace (Prevention, Prohibition, and Redressal) Act, 2013</h2>
            <p>This law aims to protect women from sexual harassment at the workplace and provides a legal framework to report and address grievances effectively.</p>
        </div>

        <!-- Rights Section 5: Immoral Traffic (Prevention) Act -->
        <div class="rights-section">
            <img src="https://hindi.ipleaders.in/wp-content/uploads/2021/07/immoral-traffic-prevention-act-1956-768x432.jpg"
                alt="Traffic Prevention Image">
            <h2>The Immoral Traffic (Prevention) Act, 1956</h2>
            <p>Designed to prevent human trafficking and sexual exploitation for commercial purposes, this act ensures strict action against offenders.</p>
        </div>

        <!-- Helplines Section -->
        <div class="rights-section helplines">
            <h3>Helplines and Emergency Contacts</h3>
            <p>National Helpline Number: <strong>181</strong></p>
            <p>Domestic Violence Helpline: <strong>1091</strong></p>
            <p>Childline (For children in distress): <strong>1098</strong></p>
            <p><a href="/userrequest">View More Resources</a></p>
        </div>

        <!-- Button to return to Home -->
        <div class="button-container">
            <a href="/userhome">Back to Home</a>
        </div>
    </div>

    <%@ include file="components/footer.jsp" %>
</body>

</html>
