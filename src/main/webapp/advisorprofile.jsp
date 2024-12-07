<%@page import="klu.model.Advisor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Advisor ad = (Advisor)session.getAttribute("advisor");
    if(ad == null) {
        response.sendRedirect("home.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile</title>
<style>
/* General body and font settings */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
    color: #333;
}

/* Profile header */
h1 {
    text-align: center;
    margin-top: 50px;
    color: #2c3e50;
    font-size: 2.5em;
    font-weight: bold;
    text-transform: uppercase;
    letter-spacing: 1px;
}

/* Profile details container */
.profile-details {
    background-color: white;
    padding: 40px;
    margin: 60px auto;
    width: 35%;
    max-width: 800px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    border-radius: 16px;
}

/* Hover effect */
.profile-details:hover {
    transform: translateY(-10px) scale(1.02); 
    box-shadow: 0 12px 35px rgba(0, 0, 0, 0.2); 
}

/* Responsive Design */
@media (max-width: 1024px) {
    .profile-details {
        width: 85%;
        padding: 30px;
    }
}

@media (max-width: 768px) {
    .profile-details {
        width: 90%;
        padding: 25px;
    }
}

@media (max-width: 480px) {
    .profile-details {
        width: 95%;
        padding: 20px;
    }
}

/* Profile details paragraph styling */
.profile-details p {
    font-size: 1.3em;
    margin: 15px 0;
    line-height: 1.6;
}

/* Span styling for labels */
.profile-details span {
    font-weight: bold;
    color: #2980b9; 
}

/* Styling for each profile detail */
.profile-details p span {
    color: #16a085;
}

/* Footer styling */
footer {
    background-color: #2c3e50;
    color: white;
    padding: 20px;
    text-align: center;
    margin-top: 50px;
    border-top: 4px solid #2980b9;
    font-size: 1.1em;
}

/* Footer link styles */
footer a {
    color: #ecf0f1;
    text-decoration: none;
    font-weight: bold;
    transition: color 0.3s ease;
}

footer a:hover {
    color: #2980b9;
}
</style>
</head>
<body>
<%@ include file="components/advisornavbar.jsp" %>

<h1>My Profile</h1>
<div class="profile-details">
    <p><span>First Name:</span> <%= ad.getFirstname() %></p>
    <p><span>Last Name:</span> <%= ad.getLastname() %></p>
    <p><span>Email:</span> <%= ad.getEmail() %></p>
    <p><span>Phone Number:</span> <%= ad.getPhonenumber() %></p>
    <p><span>Username:</span> <%= ad.getUsername() %></p>
    <p><span>City:</span> <%= ad.getCity() %></p>
    <p><span>Qualification:</span> <%= ad.getQualification() %></p>
    <p><span>Specialization:</span> <%= ad.getSpecialization() %></p>
</div>

<%@ include file="components/footer.jsp" %>
</body>
</html>
