<%@ page import="klu.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    User user = (User) request.getAttribute("user"); // Retrieve the User object from the request attribute
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
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

    <%@ include file="components/adminnavbar.jsp" %>
    <h2>Update User</h2>

    <!-- Display the message (success or error) -->
    <c:if test="${not empty message}">
        <div class="message">
            <p>${message}</p>
        </div>
    </c:if>

    <!-- Form to update user -->
    <div class="form-container">
        <form action="/userupdate" method="post">
            <!-- Hidden field to pass user ID -->
            <input type="hidden" name="id" value="<%= user.getId() %>" />

            <label for="firstname">First Name*</label>
            <input type="text" id="firstname" name="firstname" value="<%= user.getFirstname() %>" placeholder="Enter your First name" required />
            
            <label for="lastname">Last Name*</label>
            <input type="text" id="lastname" name="lastname" value="<%= user.getLastname() %>" placeholder="Enter your Last name" required />
            
            <label for="username">Username*</label>
            <input type="text" id="username" name="username" value="<%= user.getUsername() %>" placeholder="Enter Username" required />
            
            
            <label for="contact">Contact No*</label>
            <input type="text" id="contact" name="contact" value="<%= user.getContact() %>" placeholder="Enter Contact No" required />
            
        
            <label for="address">Address*</label>
            <input type="text" id="address" name="address" value="<%= user.getAddress() %>" placeholder="Enter your address" required />
            
            <button type="submit">Update User</button>
        </form>
    </div>

    <%@ include file="components/footer.jsp" %>

</body>
</html>
