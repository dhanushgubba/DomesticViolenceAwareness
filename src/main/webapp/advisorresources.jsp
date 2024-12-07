<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Advisor Resources</title>
    <style>
   /* Reset and Base Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    background: #f8f9fa;
    color: #333;
    padding: 20px;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    text-align: center;
    margin-bottom: 50px;
}

header {
    padding: 40px 0;
}

header h1 {
    font-size: 2.8rem;
    color: #2c3e50;
}

header p {
    font-size: 1.2rem;
    color: #7f8c8d;
}

/* Resource Cards */
.resources {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 30px;
    margin-top: 40px;
}

.resource-card {
    background: white;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
    text-align: center;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.resource-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.resource-card img {
    width: 150px;  /* Increased image size */
    height: auto;
    margin-bottom: 20px;
}

.resource-card h2 {
    font-size: 1.8rem;
    color: #3498db;
    margin-bottom: 10px;
}

.resource-card p {
    font-size: 1rem;
    margin-bottom: 15px;
    color: #7f8c8d;
}

.btn {
    display: inline-block;
    padding: 12px 24px;
    background: #3498db;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    font-size: 1rem;
    transition: background 0.3s ease;
}

.btn:hover {
    background: #2980b9;
}

footer {
    margin-top: 60px;
    padding: 15px;
    background: #2c3e50;
    color: white;
    text-align: center;
    font-size: 0.9rem;
}
   
    </style>
</head>
<body>

<%@ include file="components/advisornavbar.jsp" %>

<div class="container">
    <header>
        <h1>Legal Resources Dashboard</h1>
        <p>Your go-to hub for legal case documents, templates, and policies.</p>
    </header>

    <section class="resources">
        <div class="resource-card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOnYmyD_UL9uvlHjJTsfeZ5FqhYo_y2th0Lw&s" alt="Case Guidelines">
            <h2>Case Guidelines</h2>
            <p>Review comprehensive guidelines for managing legal cases.</p>
            <a href="img/caseguidelines.pdf" class="btn" target="_blank">Download PDF</a>
        </div>

        <div class="resource-card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0y8sXf9utLa4zr5jOxXDaQ6g--kCcURLoHQ&s" alt="Legal Acts">
            <h2>Legal Acts & Laws</h2>
            <p>Stay updated on legal amendments, policies, and new acts.</p>
            <a href="img/legalacts.pdf" class="btn" target="_blank">View Document</a>
        </div>

        <div class="resource-card">
            <img src="https://fastercapital.com/i/Decision-Making--Public-Policy---Governing-Choices--The-Intersection-of-Public-Policy-and-Decision-Making--Theoretical-Frameworks-in-Public-Decision-Making.webp" alt="Policy Framework">
            <h2>Policy Framework</h2>
            <p>Access the latest frameworks that guide legal decision-making.</p>
            <a href="img/policies.pdf" class="btn" target="_blank">Read More</a>
        </div>

       
    </section>
</div>

<%@include file="components/footer.jsp" %>
</body>
</html>
