<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Advisor</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        padding: 20px;
    }
    .form-container {
        background: white;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 600px;
        margin: auto;
    }
    h2 {
        text-align: center;
    }
    label {
        font-weight: bold;
    }
    input, textarea, select {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    button {
        width: 100%;
        padding: 10px;
        background: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }
    button:hover {
        background: #0056b3;
    }
</style>
</head>
<body>
<%@ include file="components/adminnavbar.jsp" %>
<div class="form-container">
    <h2>Add Legal Advisor</h2>
    <form action="/insertadvisor" method="post">
        
        <!-- Personal Details -->
        <label for="firstname">First Name:</label>
        <input type="text" name="firstname" required>
        
        <label for="lastname">Last Name:</label>
        <input type="text" name="lastname" required>
        
        <label for="email">Email:</label>
        <input type="email" name="email" required>
        
        <label for="phonenumber">Phone Number:</label>
        <input type="text" name="phonenumber" required>
        
        <label for="dateofbirth">Date of Birth:</label>
        <input type="date" name="dateofbirth">
        
        <!-- Professional Details -->
        <label for="qualification">Qualification:</label>
        <select name="qualification" required>
            <option value="LLB">LLB</option>
            <option value="LLM">LLM</option>
        </select>
        
        <label for="specialization">Specialization:</label>
        <input type="text" name="specialization" placeholder="e.g., Family Law">
        
        <label for="yearsofexperience">Years of Experience:</label>
        <input type="number" name="yearsofexperience" min="0" required>
        
        <label for="barassociationmembership">Bar Association Membership:</label>
        <input type="text" name="barassociationmembership">

        <!-- Office Details -->
        <label for="officeaddress">Office Address:</label>
        <textarea name="officeaddress" rows="3"></textarea>
        
        <label for="city">City:</label>
        <input type="text" name="city">
        
        <label for="state">State:</label>
        <input type="text" name="state">
        
        <label for="postalCode">Postal Code:</label>
        <input type="text" name="postalCode">
        
        <!-- Additional Info -->
        <label for="bio">Bio:</label>
        <textarea name="bio" rows="4" placeholder="Short professional introduction..."></textarea>
        
        <label for="username">Username:</label>
        <input type="text" name="username" required>
        
        <label for="password">Password:</label>
        <input type="password" name="password" required>
        
        <button type="submit">Add Advisor</button>
    </form>
</div>
<%@include file="components/footer.jsp" %>
</body>
</html>
