<%@page import="klu.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
User u = (User) session.getAttribute("user"); // retrieve user data from the session
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/updateprofile.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/components/usernavbar.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/components/footer.css" />
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />


</head>
<body>
    <%@ include file="components/usernavbar.jsp" %>
    
    
    <div class="profile-container">
        <div class="profile-header">
            <i class="fas fa-user-circle profile-icon"></i>
            <h2>Edit Profile</h2>
        </div>
        <form action="${pageContext.request.contextPath}/updateprofile/${user.id}" method="post" class="profile-form">
 			<input type="hidden" name="id" value="${user.id}" />
            <div class="form-group">
                <label for="firstname">First Name:</label>
                <input type="text" id="firstname" name="firstname" value="<%= u.getFirstname() %>" required>
            </div>
            <div class="form-group">
                <label for="lastname">Last Name:</label>
                <input type="text" id="lastname" name="lastname" value="<%= u.getLastname() %>" required>
            </div>
            <div class="form-group">
                <label for="gender">Gender:</label>
                <input type="text" id="gender" name="gender" value="<%= u.getGender() %>" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" value="<%= u.getEmail() %>" required>
            </div>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="<%= u.getUsername() %>" readonly>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="text" id="password" name="passwrod" value="<%= u.getPassword() %>" readonly>
            </div>
            
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" value="<%= u.getAddress() %>" required>
            </div>
            <div class="form-group">
                <label for="contact">Contact:</label>
                <input type="text" id="contact" name="contact" value="<%= u.getContact() %>" required>
            </div>
            <button type="submit" class="btn">Save Changes</button>
            
            <div class="back-to-home">
            	<a href="/userprofile">Back to Profile</a>
            </div>
        </form>
    </div>

    <%@ include file="components/footer.jsp" %>
</body>
</html>
