<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
    
    <style>
    /* Global Reset */
   

    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(to right, #b24592, #f15f79); /* Calming gradient */
        height: 100vh;
      
        padding: 20px;
        color: #fff;
    }

   	/* Form container styling */
.form-container {
    background: rgba(255, 255, 255, 0.9); /* Light background */
    padding: 30px 40px;
    border-radius: 15px;
    width: 100%;
    max-width: 400px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
    text-align: center;
    margin: 0 auto;  /* Center horizontally */
    position: absolute; /* Use absolute positioning */
    top: 50%;          /* Centering vertically */
    left: 50%;         /* Centering starts from left */
    transform: translate(-50%, -50%); /* Adjust for the width and height of the container */
}


.form-container h2 {
    font-size: 26px;
    color: #b24592; /* Empowering color */
    margin-bottom: 20px;
    font-weight: bold;
    text-transform: uppercase;
}

    /* Input field styling */
    .form-container label {
        font-size: 16px;
        color: #555;
        font-weight: bold;
        display: block;
        margin-bottom: 8px;
    }

    .form-container input[type="email"] {
        width: 100%;
        padding: 12px 15px;
        margin: 10px 0 20px;
        border: 1px solid #b24592;
        border-radius: 8px;
        font-size: 16px;
        background: #f9f9f9;
        color: #333;
    }

    /* Submit button styling */
    .form-container button {
        background: #b24592;
        color: #fff;
        padding: 12px 20px;
        font-size: 16px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: all 0.4s ease;
        text-transform: uppercase;
        font-weight: bold;
        letter-spacing: 1px;
    }

    .form-container button:hover {
        background: #f15f79;
    }

    /* Message and error styling */
    .form-container .message {
        margin-top: 15px;
        font-size: 14px;
        color: #4caf50; /* Success message */
        font-weight: bold;
    }

    .form-container .error {
        margin-top: 15px;
        font-size: 14px;
        color: #f44336; /* Error message */
        font-weight: bold;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        body {
            padding: 20px;
        }

        .form-container {
            width: 100%;
        }
    }
</style>
    
</head>
<body>
<%@ include file="components/navbar.jsp" %>
    <div class="form-container">
        <h2>Forgot Password</h2>
        <form action="/forgot-password" method="post">
            <label for="email">Enter your email address:</label>
            <input type="email" id="email" name="email" required>
            <button type="submit">Send Password Reset Link</button>
        </form>
        <div>
            ${message}
            ${error}
        </div>
    </div>
</body>
</html>