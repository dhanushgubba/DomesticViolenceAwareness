<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deleted Users</title>
    <style>
    <style>
<style>
/* Reset styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html, body {
    height: 100%;
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    color: #333;
}

/* Main content wrapper */
.wrapper {
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

/* Page header */
h1 {
    text-align: center;
    color: #555;
    margin: 20px 0;
}

/* Table styles */
table {
    width: 100%;
    border-collapse: collapse;
    background: white;
    margin: 0 auto 20px auto;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin-bottom: 395px;
}

th, td {
    padding: 15px;
    text-align: left;
}

th {
    background: #555;
    color: white;
    text-transform: uppercase;
    font-weight: bold;
}

td {
    color: #333;
}

tr:nth-child(even) {
    background: #f2f2f2;
}

tr:hover {
    background: #f4f4f4;
    cursor: pointer;
}

/* No data message */
.no-data {
    text-align: center;
    font-size: 18px;
    font-weight: bold;
    color: #888;
    margin-top: 20px;
}

/* Footer styles */
.footer {
    margin-top: auto; /* Push footer to the bottom */
    background: #555;
    color: white;
    text-align: center;
    padding: 10px 0;
}
</style>


</style>
    
    
    </style>
</head>
<body>

<%@ include file="components/adminnavbar.jsp" %>
<h1>Deleted Users</h1>

<c:if test="${empty deletelist}">
    <p>No deleted users found.</p>
</c:if>

<c:if test="${not empty deletelist}">
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>FirstName</th>
                <th>Name</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Address</th>
                <th>Gender</th>
          		<th>Username</th>
                <th>Deleted At</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${deletelist}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.firstname}</td>
                    <td>${user.name}</td>
                    <td>${user.contact}</td>
                    <td>${user.email}</td>
                    <td>${user.address}</td>
                    <td>${user.gender}</td>
                    <td>${user.username}</td>
                    <td>${user.deletedAt}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</c:if>
<%@ include file = "components/footer.jsp" %>
</body>
</html>
