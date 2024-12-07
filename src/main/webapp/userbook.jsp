<%@page import="klu.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%
User u = (User) session.getAttribute("user");
if(u==null) {
	response.sendRedirect("usershelter.jsp");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book the Shelter</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            font-size: 28px;
            color: #333;
            margin-top: 20px;
            font-weight: bold;
        }

        form {
            max-width: 600px;
            margin: 30px auto;
            background-color: #fff;
            padding: 20px 30px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 16px;
            color: #555;
            font-weight: bold;
        }

        input, textarea, button {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            box-sizing: border-box;
            outline: none;
        }

        input:focus, textarea:focus {
            border-color: #4CAF50;
            box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
        }

        textarea {
            resize: none;
        }

        button {
            background-color: #4CAF50;
            color: white;
            font-size: 18px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }

        input[type="checkbox"] {
            width: auto;
            margin-right: 10px;
        }

        input[type="file"] {
            padding: 5px;
        }

        /* Media Query for Mobile Devices */
        @media (max-width: 768px) {
            form {
                padding: 15px 20px;
            }

            h3 {
                font-size: 24px;
            }
        }

        /* Media Query for Small Screens */
        @media (max-width: 480px) {
            h3 {
                font-size: 20px;
            }

            label {
                font-size: 14px;
            }

            input, textarea, button {
                font-size: 14px;
                padding: 10px;
            }
        }
       	/* Style for the select dropdown */
select {
    width: 100%;
    padding: 12px;
    border: 1px solid #ddd;
    border-radius: 8px;
    font-size: 16px;
    background-color: #fff;
    color: #555;
    outline: none;
    margin-bottom: 20px;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

/* Add focus style for the select dropdown */
select:focus {
    border-color: #4CAF50;
    box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
}

/* Style the label */
label {
    font-size: 16px;
    font-weight: bold;
    color: #333;
    margin-bottom: 8px;
    display: block;
}

/* Wrapper for the label and select to arrange them nicely */
.select-container {
    max-width: 600px;
    margin: 20px auto;
}

/* For mobile responsiveness */
@media (max-width: 768px) {
    select {
        font-size: 14px;
        padding: 10px;
    }

    label {
        font-size: 14px;
    }
}

@media (max-width: 480px) {
    select {
        font-size: 12px;
    }

    label {
        font-size: 12px;
    }
}
       	
    </style>
</head>
<body>
<%@ include file="components/usernavbar.jsp" %>
<form action="/bookshelter" method="post" enctype="multipart/form-data">
    <h3>Book a Shelter</h3>
    <div class="select-container">
    	<label for="shelterName">Select Shelter:</label>
    	<select name="shelterName" id="shelterName" required>
        	<c:forEach items="${shelterslist}" var="shelter">
            	<option value="${shelter.name}">${shelter.id} - ${shelter.name}</option>
        	</c:forEach>
    	</select>
	</div>
    
    <!-- User Information -->
    <label for="name">Your Name:</label>
    <input type="text" id="name" name="name" value="<%= u.getUsername() %>" readonly>
    
    <label for="phone">Phone Number:</label>
    <input type="text" id="phone" name="phone" value="<%= u.getContact() %>" readonly>
    
    <label for="email">Email Address:</label>
    <input type="email" id="email" name="email" value="<%= u.getEmail() %>" readonly>
    
    <label for="idproof">Upload ID Proof:</label>
    <input type="file" id="idproof" name="idproof" required>
    
    <label for="checkindate">Check-In Date:</label>
    <input type="date" id="checkindate" name="checkindate" required>
    
    <label for="checkoutdate">Check-Out Date:</label>
    <input type="date" id="checkoutdate" name="checkoutdate">
    
    <!-- Additional Requirements -->
    <label for="specialneeds">Special Assistance Needed:</label>
    <textarea id="specialneeds" name="specialneeds" rows="4"></textarea>
    
    <label for="numpeople">Number of People:</label>
    <input type="number" id="numpeople" name="numpeople" min="1" required>
    
    <!-- Emergency Contact -->
    <label for="emergencyname">Emergency Contact Name:</label>
    <input type="text" id="emergencycontact" name="emergencyname" required>
    
    <label for="emergencyphone">Emergency Contact Phone:</label>
    <input type="text" id="emergencyphone" name="emergencyphone" required>
    
    <!-- Agreement -->
    <input type="checkbox" id="agreement" name="agreement" required>
    <label for="agreement">I agree to the shelter terms and conditions.</label>
    
    <!-- Submit Button -->
    <button type="submit">Book Shelter</button>
</form>

<%@include file="components/footer.jsp" %>
</body>
</html>