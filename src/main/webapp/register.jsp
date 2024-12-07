<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Here</title>
<link rel="stylesheet" href="css/register.css" />
</head>
<body>
	<%@ include file="components/navbar.jsp"%>
	<div class="register-container">
		<h2>Register Here</h2>
		
		<form action="/insertuser" method="post">
			<label>First Name*</label>
			<input type="text" id="firstname" name="firstname" placeholder="Enter your First name" required/>
			
			<label>Last Name*</label>
			<input type="text" id="lastname" name="lastname" placeholder="Enter your Last name" required/>
			
			<label>Gender*</label>
			<input type="radio" name="gender" value="Male" required />Male
			<input type="radio" name="gender" value="Female" required />Female
			<input type="radio" name="gender" value="Others" required />Others
			
			<br />
			<label>Email*</label>
			<input type="email" id="email" name="email" placeholder="Enter your Email" required/>
			
			<label>Username*</label>
			<input type="text" id="username" name="username" placeholder="Enter Username" required/>
			
			<label>Password*</label>
			<input type="password" id="password" name="password" placeholder="Enter Password" required
    pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
    title="Password must be at least 8 characters, include at least one letter, one number, and one special character." />
			
			
			<label>Address*</label>
			<input type="text" id="address" name="address" placeholder="Enter your address" required/>
			
			<label>Contact No*</label>
			<input type="text" id="contact" name="contact" placeholder="Enter Contact No" required />
			
			<!-- Change: No <a> tag inside button. It will submit the form now -->
			<button type="submit">Register</button>
			<button type="reset">Clear</button>
			
			<p>Already Registered Here?? <a href="/login">Login here</a></p>
		</form>
	</div>
	<%@ include file="components/footer.jsp" %>
</body>
</html>
