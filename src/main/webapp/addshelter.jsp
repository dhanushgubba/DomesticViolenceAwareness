<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Shelter</title>
    <style>
        .form-container {
            margin: 20px auto;
            width: 50%;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        input, textarea, select {
            width: 100%;
            padding: 8px;
            margin: 5px 0 15px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            padding: 10px 15px;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>

<%@ include file="components/adminnavbar.jsp" %>
<h2 style="text-align: center;">Add Shelter</h2>
<div class="form-container">
    <form action="/insertshelter" method="POST" enctype="multipart/form-data">
        <!-- Shelter Name -->
        <label for="name">Shelter Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter shelter name" required>

        <!-- Shelter Type -->
        <label for="type">Type:</label>
        <select id="type" name="type" required>
            <option value="" disabled selected>Select shelter type</option>
            <option value="Women">Women</option>
            <option value="Men">Men</option>
        </select>

        <!-- Support Services -->
        <label for="support">Support Services:</label>
        <textarea id="support" name="support" rows="3" placeholder="E.g., counseling, legal aid, medical support" required></textarea>

        <!-- Contact Information -->
        <label for="contact">Contact Information:</label>
        <input type="text" id="contact" name="contact" placeholder="Enter phone number or email" required>

        <!-- Location -->
        <label for="location">Location:</label>
        <input type="text" id="location" name="location" placeholder="Enter general location" required>

        <!-- Description -->
        <label for="description">Description:</label>
        <textarea id="description" name="description" rows="4" placeholder="Enter a brief description" required></textarea>

        <!-- Image Upload -->
        <label for="simage">Upload Shelter Image:</label>
        <input type="file" id="simage" name="simage" required>

        <!-- Submit Button -->
        <input type="submit" value="Add Shelter">
    </form>

</div>

</body>
</html>
