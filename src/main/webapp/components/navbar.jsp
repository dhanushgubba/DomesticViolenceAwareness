<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JFSD Domestic Violence Project</title>
    <link rel="stylesheet" href="components/navbar.css" />
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo-header">
        	<img src="img/logo.jpg" alt="logo" />
            <a href="/">SafeHaven Foundation</a>
        </div>
        <div class="navbar-links">
            <a href="/">Home</a>
            <a href="/about">About</a>
            <a href="/resources">Resources</a>
            <a href="/contact">Contact</a>
            <!-- Add more links here -->
            
            <a href="/login" class="login-link">Login</a>
           <!--<a href="/adminlogin" class="login-link">Admin Login</a>
            <a href="/counsellorlogin" class="login-link">Counsellor Login</a>
            <a href="/" class="login-link">Legal Advisor Login</a> -->
            
            <div class="dropdown">
                <a href="javascript:void(0)">Other Logins<i class="fas fa-caret-down"></i></a>
                <div class="dropdown-content">
						<a href="/adminlogin" class="login-link">Admin Login</a>
            			<a href="/counsellorlogin" class="login-link">Counsellor Login</a>
            			<a href="/advisorlogin" class="login-link">Legal Advisor Login</a>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
