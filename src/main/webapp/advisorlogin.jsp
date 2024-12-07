<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Advisor Login</title>
    <style>
       
       

        .login-container {
            width: 350px;
    margin: 120px auto;
    padding: 25px;
    background-color: rgba(255, 255, 255, 0.8);
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.6);
    border-radius: 15px;
    backdrop-filter: blur(10px);
        }

        .login-container h2 {
            color: #4CAF50;
            margin-bottom: 20px;
            text-align:center;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input[type="text"], input[type="password"] {
            width: 90%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-btn {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            background: #4CAF50;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .login-btn:hover {
            background: #45a049;
        }
    </style>
</head>
<body>
<%@ include file="components/navbar.jsp" %>

<div class="login-container">
    <h2>Advisor Login</h2>
    <form action="/checkadvisorlogin" method="post">
        <div class="form-group">
            <label for="aduname">Username</label>
            <input type="text" id="aduname" name="aduname" placeholder="Enter your Username" required>
        </div>

        <div class="form-group">
            <label for="adpwd">Password</label>
            <input type="password" id="adpwd" name="adpwd" placeholder="Enter your Password" required>
        </div>

        <button type="submit" class="login-btn">Login</button>
    </form>
</div>
<%@ include file="components/footer.jsp" %>
</body>
</html>
