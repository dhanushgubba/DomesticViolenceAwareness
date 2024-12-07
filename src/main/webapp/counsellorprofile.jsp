<%@page import="klu.model.Counsellor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Counsellor c = (Counsellor) session.getAttribute("counsellor");
if(c==null) {
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
    width: 35%; /* Default size for desktops */
    max-width: 800px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    border-radius: 16px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

/* Hover effect */
.profile-details:hover {
    transform: translateY(-10px) scale(1.02); /* Slight scaling effect */
    box-shadow: 0 12px 35px rgba(0, 0, 0, 0.2); /* Enhanced shadow on hover */
}

/* Responsive Design */
@media (max-width: 1024px) {
    .profile-details {
        width: 85%; /* Slightly narrower on smaller screens */
        padding: 30px; /* Reduced padding */
    }
}

@media (max-width: 768px) {
    .profile-details {
        width: 90%; /* Fit smaller screens */
        padding: 25px;
    }
}

@media (max-width: 480px) {
    .profile-details {
        width: 95%; /* Almost full width for mobile */
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
    color: #2980b9; /* Use a blue color for the labels */
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

/* Footer link hover effect */
footer a:hover {
    color: #2980b9;
}

/* Responsive Design for smaller screens */
@media (max-width: 768px) {
    body {
        padding: 10px;
    }

    .profile-details {
        width: 90%;
        padding: 20px;
    }

    h1 {
        font-size: 2em;
    }

    .profile-details p {
        font-size: 1.1em;
    }
}

@media (max-width: 480px) {
    h1 {
        font-size: 1.6em;
    }

    .profile-details p {
        font-size: 1em;
    }
}


</style>
</head>
<body>
<%@ include file="components/counsellornavbar.jsp" %>
<h1 style="text-align:center;">My Profile</h1>
<div class="profile-details">
	<p><span>Name:</span><%= c.getName() %></p>
	<p><span>Email:</span><%= c.getEmail() %></p>
	<p><span>Gender:</span><%= c.getGender() %></p>
	<p><span>Experience:</span><%= c.getExperience() %></p>
	<p><span>Specialization:</span><%= c.getSpecialization() %></p>
	<p><span>City:</span><%=c.getCity() %></p>
	<p><span>State:</span><%=c.getState() %></p>
	<p><span>Address:</span><%= c.getAddress() %></p>
	<p><span>Availability:</span><%= c.getAvailability() %></p>
</div>
<%@ include file="components/footer.jsp" %>
</body>
</html>