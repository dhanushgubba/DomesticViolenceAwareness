<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Users</title>
<style>
    /* Basic page layout */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    /* Form Container */
    .form-container {
        width: 60%;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    /* Label and Input Styling */
    label {
        display: block;
        margin: 10px 0 5px;
        font-weight: bold;
        color: #333;
    }

    input[type="text"], input[type="email"], input[type="password"], input[type="radio"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }

    input[type="radio"] {
        width: auto;
        margin-right: 5px;
    }

    /* Submit Button Styling */
    button[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
        font-size: 16px;
        margin-top: 10px;
    }

    button[type="submit"]:hover {
        background-color: #45a049;
    }

    /* Message Box */
    .message {
        color: #d9534f;
        text-align: center;
        font-size: 16px;
        margin-bottom: 20px;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .form-container {
            width: 90%;
        }
    }

</style>
</head>
<body>

	<%@ include file="components/adminnavbar.jsp"%>
	<h2>Add a New User</h2>

	<!-- Display the message (success or error) -->
	<c:if test="${not empty message}">
		<div class="message">
			<p>${message}</p>
		</div>
	</c:if>

	<!-- Form to add user -->
	<div class="form-container">
		<form action="/insertusers" method="post">
			<label for="firstname">First Name*</label>
			<input type="text" id="firstname" name="firstname" placeholder="Enter your First name" required />
			
			<label for="lastname">Last Name*</label>
			<input type="text" id="lastname" name="lastname" placeholder="Enter your Last name" required />
			
			<label>Gender*</label>
			<input type="radio" name="gender" value="Male" required /> Male
			<input type="radio" name="gender" value="Female" required /> Female
			<input type="radio" name="gender" value="Others" required /> Others
			
			<br />
			<label for="email">Email*</label>
			<input type="email" id="email" name="email" placeholder="Enter your Email" required />
			
			<label for="username">Username*</label>
			<input type="text" id="username" name="username" placeholder="Enter Username" required />
			
			<label for="password">Password*</label>
			<!--<input type="password" id="password" name="password" placeholder="Enter Password" required />-->
			<input type="password" id="password" name="password" placeholder="Enter Password" required
    pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
    title="Password must be at least 8 characters, include at least one letter, one number, and one special character." />
			
			<label for="address">Address*</label>
			<input type="text" id="address" name="address" placeholder="Enter your address" required />
			
			<label for="contact">Contact No*</label>
			<input type="text" id="contact" name="contact" placeholder="Enter Contact No" required />
			
			<button type="submit">Add User</button>
		</form>
	</div>

	<%@ include file="components/footer.jsp" %>
</body>
</html>
