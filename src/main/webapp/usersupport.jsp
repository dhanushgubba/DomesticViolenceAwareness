<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Support Services</title>
<style>
    /* General Styling */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f7f7f7;
        color: #333;
        line-height: 1.6;
    	background-size: cover;
   	 	background-repeat: no-repeat;
    	background-position: center;
    	
    }

    /* Navbar included from JSP */
    .navbar {
        margin-bottom: 20px;
    }

    /* Page Container */
    .services-container {
        max-width: 1200px;
        margin: 20px auto;
        padding: 20px;
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    /* Title Section */
    .services-container h1 {
        text-align: center;
        font-size: 2.5em;
        color: #4CAF50;
        margin-bottom: 20px;
    }

    .services-container p {
        text-align: center;
        font-size: 1.2em;
        margin-bottom: 30px;
    }

    /* Service Cards */
    .service-card {
        display: flex;
        flex-direction: column;
        align-items: center;
        background: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 10px;
        padding: 20px;
        margin: 10px;
        flex: 1 1 300px;
        text-align: center;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.2s, box-shadow 0.2s;
    }

    .service-card:hover {
        transform: scale(1.05);
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    }

    .service-card h3 {
        margin: 10px 0;
        font-size: 1.5em;
        color: #4CAF50;
    }

    .service-card p {
        font-size: 1em;
        color: #666;
    }

    .service-card a {
        display: inline-block;
        margin-top: 15px;
        padding: 10px 20px;
        background: #4CAF50;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        font-size: 1em;
        transition: background 0.3s;
    }

    .service-card a:hover {
        background: #45a049;
    }

    /* Card Grid */
    .services-grid {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
    }

    /* Footer Section */
    .footer {
        text-align: center;
        margin-top: 30px;
        font-size: 0.9em;
        color: #888;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .services-container h1 {
            font-size: 2em;
        }

        .service-card {
            margin: 10px 0;
        }
    }
</style>
</head>
<body>

<%@include file="components/usernavbar.jsp" %>

<div class="services-container">
    <h1>Support Services for Domestic Violence Eradication</h1>
    <p>
        We are committed to helping individuals impacted by domestic violence. Here are resources and services to support you in your journey toward a safer and healthier life.
    </p>

    <div class="services-grid">
        <!-- Service 1 -->
        <div class="service-card">
            <h3>24/7 Helpline</h3>
            <p>
                Speak with a trained professional anytime for guidance and support. We are here to listen and help.
            </p>
            <a href="tel:1800-123-456">Call Now</a>
        </div>

        <!-- Service 2 -->
        <div class="service-card">
            <h3>Counseling Services</h3>
            <p>
                Access confidential counseling services to help you process your experiences and heal.
            </p>
            <a href="/usercounsellorlist">Learn More</a>
        </div>

        <!-- Service 3 -->
        <div class="service-card">
            <h3>Safe Shelter</h3>
            <p>
                Find safe housing options to escape abusive situations and start a new chapter in your life.
            </p>
            <a href="/viewshelter">Book a Shelter</a>
            
        </div>

        <!-- Service 4 -->
        <div class="service-card">
            <h3>Legal Assistance</h3>
            <p>
                Get help with legal rights and filing cases to protect yourself and your loved ones.
            </p>
            <a href="/userrequest">Get Help</a>
        </div>

        <!-- Service 5 -->
        <div class="service-card">
            <h3>Community Support Groups</h3>
            <p>
                Join support groups to connect with others who understand your experience and foster healing.
            </p>
            <a href="/userforum">Join a Group</a>
        </div>
    </div>
    <div class="footer">
        <p>Remember, you are not alone. Help is available, and we are here to support you every step of the way.</p>
    </div>
</div>
<%@ include file="components/footer.jsp"%>
</body>
</html>
