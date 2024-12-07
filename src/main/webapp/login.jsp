<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="css/login.css" />
<script>
    function togglePasswordVisibility() {
        const passwordInput = document.getElementById("password");
        const toggleIcon = document.getElementById("togglePassword");
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
            toggleIcon.textContent = "🙈"; // Change to hide icon
        } else {
            passwordInput.type = "password";
            toggleIcon.textContent = "👁️"; // Change to show icon
        }
    }
</script>
</head>
<body>
	<!-- Include Navbar -->
	<%@ include file="components/navbar.jsp"%>
	<div class="login-container">
		<h3 align="center" class="error">
			<c:out value="${message}"></c:out>
		</h3>
		<h2>Login to Your Account</h2>
		<!-- Login Form -->
		<form action="/checkuserlogin" method="post">
			<label for="email">Email*</label>
			<input type="text" id="email" name="email" required placeholder="Enter Email" />

			<label for="password">Password*</label>
			<div style="position: relative;">
				<input type="password" id="password" name="password" required placeholder="Enter Password" style="width: calc(100% - 40px);" />
				<span id="togglePassword" onclick="togglePasswordVisibility()" 
					style="position: absolute; top: 30%; right: 30px; transform: translateY(-50%); cursor: pointer;">👁️</span>
			</div>
			<div style="text-align: right;margin-top:1px;margin-bottom: 15px;margin-right: 25px;text-decoration:none;font-weight:bold">
    			<a href="/forgot-password">Forgot Password</a>
			</div>
			

			<button type="submit">Login</button>
			<button type="reset">Clear</button>
		</form>

		<!-- Option to navigate to Registration page -->
		<p>
			Don't have an account? <a href="/register">Register here</a>
		</p>
	</div>

	<%@ include file="components/footer.jsp"%>
</body>
</html>
