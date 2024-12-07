<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Requests Page</title>
<style>
/* General Styling */
body {
    font-family: 'Roboto', sans-serif;
    background-color: #eef2f3;
    color: #333;
    margin: 0;
    padding: 20px;
    line-height: 1.6;
}

h1, h4 {
    color: #4CAF50;
    margin: 0;
}

h1 {
    font-size: 2.5em;
    margin-bottom: 10px;
    margin-top: 10px;
}

h4 {
    font-size: 1.2em;
    margin-top: 10px;
    margin-right: 20px;
}

/* Table Container */
.table-container {
    width: 100%;
    overflow-x: auto; /* Enable scrolling if content overflows */
    margin: 20px auto;
    border-radius: 10px;
    box-shadow: 0 6px 10px rgba(0, 0, 0, 0.1);
    background-color: #fff;
}

/* Table Styling */
.table {
    width: 100%;
    table-layout: fixed; /* Ensures fixed column widths */
    border-collapse: collapse;
}

.table th, .table td {
    padding: 15px 20px;
    text-align: center;
    vertical-align: middle;
}

.table th {
    background-color: #4CAF50;
    color: white;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    border-bottom: 3px solid #388E3C;
}

.table td {
    color: #555;
    border-bottom: 1px solid #ddd;
    font-size: 0.9em;
    word-wrap: break-word; /* Allows breaking long text into multiple lines */
}

.table tr:hover {
    background-color: #f2f2f2;
    cursor: pointer;
    transition: background-color 0.3s;
}

/* Alternate Row Styling */
.table-striped tr:nth-child(even) {
    background-color: #f9f9f9;
}

/* Borders */
.table, .table th, .table td {
    border: 1px solid silver;
}
.action-buttons {
    display: flex; /* Use flexbox for alignment */
    justify-content: center; /* Center the buttons horizontally */
    padding: 20px; /* Add some padding around */
}

.assign-btn {
    background-color: #007BFF; /* Button color */
    color: white; /* Text color */
    padding: 10px 20px; /* Vertical and horizontal padding */
    text-decoration: none; /* Remove underline from link */
    border-radius: 5px; /* Rounded corners */
    font-size: 16px; /* Font size */
    transition: background-color 0.3s ease; /* Smooth transition for background color */
}

.assign-btn:hover {
    background-color: #0056b3; /* Darker shade on hover */
}


/* Responsive Styling */
@media (max-width: 768px) {
    h1 {
        font-size: 1.8em;
    }

    h4 {
        font-size: 1em;
    }
}
.assign-btn {
	background-color:green;
	color:white;
	border: none;
	height:50px;
	padding: 5px;
	border-radius: 5px;
	cursor: pointer;
	font-weight: bold;
}
.assign-btn:hover{
	transform: translateY(-5px);
	background-color: green;
}

</style>

</head>
<body>
    <%@ include file="components/adminnavbar.jsp" %>
    <h1 style="text-align:center;">View All Requests</h1>
    <h4 align="right">
        Total Requests: <c:out value="${count}" />
    </h4>
    <table align="center" border="2" class="table table-striped">
        <tr>
        	
            <th>Username</th>
            <th>Name</th>
            <th>Phone</th>
            <th>Email</th>
			<th>Contact</th>
			<th>Location</th>
			<th>Urgency</th>
			<th>Relation</th>
			<th>Nature</th>
			<th>Support</th>
			<th>Action</th>
        </tr>
        <c:forEach items="${requestslist}" var="requests">
            <tr>
            	
                <td><c:out value="${requests.username}" /></td>
                <td><c:out value="${requests.name}" /></td>
                <td><c:out value="${requests.phone}" /></td>
                <td><c:out value="${requests.email}"></c:out></td>
                <td><c:out value="${requests.contact}"></c:out></td>
                <td><c:out value="${requests.location}"></c:out></td>
                <td><c:out value="${requests.urgency}"></c:out></td>
                <td><c:out value="${requests.relationship}"></c:out></td>
                <td><c:out value="${requests.nature}"></c:out></td>
                <td><c:out value="${requests.support}"></c:out></td>
                <td>
                    <div class="action-buttons">
                    	<a href="<c:url value='/listcounsellors?id=${requests.id}' />" class="assign-btn">Assign Counsellor</a>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
    <%@include file="components/footer.jsp" %>
</body>
</html>
