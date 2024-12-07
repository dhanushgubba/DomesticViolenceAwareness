<%@ page import="klu.model.Shelter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Shelter shelter = (Shelter) request.getAttribute("shelter"); // Retrieve the Shelter object from the request attribute
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Shelter</title>
    <style>
        /* Example styles, adjust as needed */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .form-container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="file"], select, textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border-radius: 4px;
            border: 1px solid #ddd;
        }
        textarea {
            resize: vertical;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<%@ include file="components/adminnavbar.jsp" %> <!-- Including the navigation bar -->

<h2>Update Shelter</h2>
<div class="form-container">
    <!-- Form to update shelter details -->
    <form action="/update" method="POST" enctype="multipart/form-data">
        <!-- Shelter Name -->
        <label for="name">Shelter Name:</label>
        <input type="text" id="name" name="name" value="<%= shelter.getName() %>" placeholder="Enter shelter name" required>

        <!-- Shelter Type -->
        <label for="type">Type:</label>
        <select id="type" name="type" required>
            <option value="" disabled>Select shelter type</option>
            <option value="Women" <%= "Women".equals(shelter.getType()) ? "selected" : "" %>>Women</option>
            <option value="Men" <%= "Men".equals(shelter.getType()) ? "selected" : "" %>>Men</option>
        </select>

        <!-- Support Services -->
        <label for="support">Support Services:</label>
        <textarea id="support" name="support" rows="3" placeholder="Enter support services" required><%= shelter.getSupport() %></textarea>

        <!-- Contact Information -->
        <label for="contact">Contact Information:</label>
        <input type="text" id="contact" name="contact" value="<%= shelter.getContact() %>" placeholder="Enter contact details" required>

        <!-- Location -->
        <label for="location">Location:</label>
        <input type="text" id="location" name="location" value="<%= shelter.getLocation() %>" placeholder="Enter location" required>

        <!-- Description -->
        <label for="description">Description:</label>
        <textarea id="description" name="description" rows="4" placeholder="Enter description" required><%= shelter.getDescription() %></textarea>

        <!-- Image Upload -->
        <label for="simage">Upload Shelter Image:</label>
        <input type="file" id="simage" name="simage">

        <!-- Hidden Field for Shelter ID -->
        <input type="hidden" name="id" value="<%= shelter.getId() %>">

        <!-- Submit Button -->
        <input type="submit" value="Update">
    </form>
</div>
</body>
</html>
