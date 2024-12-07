<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="klu.model.Request" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Clients</title>
<style>
    /* Your existing CSS code */
    font-family: 'Roboto', Arial, sans-serif;
    background: #f4f7f9;
    margin: 0;
    padding: 20px;
}

h1 {
    text-align: center;
    color: #333;
    margin-bottom: 30px;
}

.table-container {
    width: 90%;
    margin: 0 auto;
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
}

th, td {
    padding: 12px 15px;
    text-align: left;
    border: 1px solid #ddd;
}

th {
    background: #3498db;
    color: white;
    font-weight: bold;
    text-transform: uppercase;
}

tr:nth-child(even) {
    background: #f2f2f2;
}

tr:hover {
    background: #dfeaf7;
    transition: background 0.2s ease-in-out;
}

td {
    color: #555;
}
</style>
</head>
<body>
    <%@ include file="components/counsellornavbar.jsp" %>

    <div class="table-container">
        <h1>View All Clients</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Contact</th>
                <th>Location</th>
                <th>Description</th>
                <th>Nature</th>
                <th>Urgency</th>
                <th>Assigned Counsellor</th>
            </tr>
            <c:forEach items="${clientrequests}" var="clients">
                <tr>
                    <td><c:out value="${clients.id}"/></td>
                    <td><c:out value="${clients.username}"/></td>
                    <td><c:out value="${clients.name}"/></td>
                    <td><c:out value="${clients.phone}"/></td>
                    <td><c:out value="${clients.email}"/></td>
                    <td><c:out value="${clients.contact}"/></td>
                    <td><c:out value="${clients.location}"/></td>
                    <td><c:out value="${clients.description}"/></td>
                    <td><c:out value="${clients.nature}"/></td>
                    <td><c:out value="${clients.urgency}"/></td>
                    <td><c:out value="${clients.assignedCounsellorId}"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
