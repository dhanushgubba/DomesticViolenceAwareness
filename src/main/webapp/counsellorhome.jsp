<%@page import="klu.model.Counsellor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%
Counsellor c = (Counsellor) session.getAttribute("counsellor");
if(c == null)
{
    response.sendRedirect("counsellorlogin");
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Counsellor Home</title>
<style>
    html, body {
        height: 100%;
        margin: 0;
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f9;
    }
    
    body {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .content {
        flex: 1;
        text-align: center;
        padding: 30px;
        max-width: 900px;
        margin: auto;
    }

    h1 {
        color: #2c3e50;
        font-size: 2.5em;
    }

    .welcome-message {
        margin: 30px 0;
        font-size: 1.3em;
        color: #34495e;
    }

    .dashboard {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 20px;
        margin-top: 40px;
    }

    .dashboard-item {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
        transition: all 0.3s ease;
    }

    .dashboard-item:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
    }

    .dashboard-item h3 {
        margin: 15px 0;
        color: #2980b9;
        font-size: 1.4em;
    }

    .dashboard-item p {
        font-size: 1.1em;
        color: #7f8c8d;
    }

    footer {
        background-color: #2c3e50;
        color: white;
        padding: 15px 0;
        text-align: center;
        width: 100%;
    }

    footer a {
        color: #ecf0f1;
        text-decoration: none;
        font-weight: bold;
        transition: color 0.3s ease;
    }

    footer a:hover {
        color: #3498db;
    }

    /* Responsive design for mobile */
    @media (max-width: 768px) {
        .dashboard {
            grid-template-columns: 1fr 1fr;
        }
    }

    @media (max-width: 480px) {
        .dashboard {
            grid-template-columns: 1fr;
        }
    }
    .btn {
    display: inline-block;
    background-color: #2980b9;
    color: #fff;
    padding: 12px 20px;
    font-size: 1.1em;
    border-radius: 5px;
    text-decoration: none;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.btn:hover {
    background-color: #3498db;
    transform: translateY(-3px);
}
    
</style>
</head>
<body>

<%@ include file="components/counsellornavbar.jsp" %>

<div class="content">
    <h1>Welcome, <%= c.getName() %>!</h1>
    <div class="welcome-message">
        <p>We are glad to have you on board. As a counsellor, you can manage your profile, check your appointments, and interact with your clients here. What would you like to do today?</p>
    </div>

    <div class="dashboard">
        <div class="dashboard-item">
            <h3>My Profile</h3>
            <p>View and update your profile details.</p>
            <a href="counsellorprofile.jsp" class="btn">Go to Profile</a>
        </div>
        <div class="dashboard-item">
            <h3>Appointments</h3>
            <p>Manage your upcoming appointments and schedule.</p>
            <a href="appointments.jsp" class="btn">View Appointments</a>
        </div>
        <div class="dashboard-item">
            <h3>Clients</h3>
            <p>View your active clients and their cases.</p>
            <a href="clients" class="btn">Manage Clients</a>
        </div>
    </div>
</div>

<%@ include file="components/footer.jsp" %>

</body>
</html>
