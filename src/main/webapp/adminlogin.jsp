<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="css/adminlogin.css" />
</head>
<body>
	<!-- Include Navbar -->
	<%@ include file="components/navbar.jsp"%>

	<div class="login-container">
		<h3 align="center" style="color: red;">
			<c:out value="${message}"></c:out>
		</h3>
		
		<h2>Admin Login Form</h2>

		<!-- Login Form -->
		<form action="/checkadminlogin" method="post">
			<label>Username*</label> 
			<input type="text" id="auname" name="auname" required placeholder="Enter Username" />

			<label>Password*</label> 
			<input type="password" id="apwd" name="apwd" required placeholder="Enter Password" />

			<button type="submit">Admin Login</button>
		</form>
	</div>

	<%@ include file="components/footer.jsp"%>
</body>
</html>
