<%@page import="klu.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
User u = (User) session.getAttribute("user");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Profile</title>
    <link rel="stylesheet" href="css/userprofile.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
	<style>
		.update-btn {
    		text-align: center; 
		}	

		.update-btn a {
    		display: inline-flex; /* Use flexbox to center align text */
    		background-color: blue; 
    		color: white; 
    		font-size: 1.2rem; 
    		font-weight: bold; 
    		padding: 10px 20px; 
    		cursor: pointer; 
    		text-decoration: none; 
    		align-items: center; 
    		justify-content: center; 
    		border-radius: 5px; 
		}
	</style>

</head>
<body>
   <%@ include file="components/usernavbar.jsp" %>
    <div class="profile-container">
        <div class="profile-header">
            <i class="fas fa-user-circle profile-icon"></i>
            <h2>My Profile</h2>
        </div>
        <div class="profile-details">
            <p><span>First Name:</span> <%= u.getFirstname() %></p>
            <p><span>Last Name:</span> <%= u.getLastname() %></p>
            <p><span>Gender:</span> <%= u.getGender() %></p>
            <p><span>Email:</span> <%= u.getEmail() %></p>
            <p><span>Username:</span> <%= u.getUsername() %></p>
            <p><span>Address:</span> <%= u.getAddress() %></p>
            <p><span>Contact:</span> <%= u.getContact() %></p>
        </div>
        <button class="update-btn"><a href="/updateprofile/<%=u.getId() %>">Edit Profile</a></button>
    </div>
    <%@include file="components/footer.jsp" %>
</body>
</html>
