<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Counsellor Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }
	.clogin-container {
    	max-width: 350px; 
    	min-height: 310px; 
    	margin: 100px auto; 
    	background: #ffffff;
    	border-radius: 8px;
    	box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    	padding: 30px; 
    	display: flex;
    	flex-direction: column; 
    	justify-content: center; 
	}

    h3 {
        color: red;
        margin-bottom: 10px;
        text-align: center;
    }
    h2 {
        text-align: center;
        color: #333333;
    }
    label {
        display: block;
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 5px;
        color: #555555;
    }
    input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #cccccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    button {
        width: 25%;
        padding: 10px;
        border: none;
        border-radius: 4px;
        background-color: #4CAF50;
        color: white;
        font-size: 14px;
        cursor: pointer;
    }
    button[type="reset"] {
        background-color: #f44336;
    }
    button:hover {
        opacity: 0.9;
    }
</style>
</head>
<body>
	<%@ include file="components/navbar.jsp" %>
    <div class="clogin-container">
        <h3>
            <c:out value="${message}"></c:out>
        </h3>
        <h2>Counsellor Login</h2>
        <!-- Login Form -->
        <form action="/checkcounsellorlogin" method="post">
            <label for="email">Email*</label> 
            <input type="text" id="email" name="email" required placeholder="Enter Email" /> 
            <label for="password">Password*</label>
            <input type="password" id="password" name="password" required placeholder="Enter Password" />

            <button type="submit">Login</button>
            <button type="reset">Clear</button>
        </form>   
    </div>
    <%@ include file="components/footer.jsp" %>
</body>
</html>
