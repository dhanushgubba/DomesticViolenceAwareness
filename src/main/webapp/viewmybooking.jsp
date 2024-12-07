<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Booked Shelters</title>
<style>
/* General body styling */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(135deg, #f5f7fa, #e1e5ea);
    color: #333;
}

/* Header styling */
h2 {
    text-align: center;
    margin-top: 30px;
    font-size: 2em;
    color: #2c3e50;
    text-transform: uppercase;
    letter-spacing: 1px;
}

/* Table container for responsiveness */
table {
    margin: 30px auto;
    border-collapse: collapse;
    width: 90%; /* Responsive width */
    max-width: 1200px; /* Prevent table from being too wide */
    background: #fff;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    border-radius: 12px;
    overflow: hidden;
}

/* Table header styling */
table thead {
    background: #2980b9;
    color: white;
    text-transform: uppercase;
    font-size: 0.9em;
    letter-spacing: 1px;
}

table thead th {
    padding: 12px 15px;
    border-right: 1px solid #2c6d93; /* Separator color */
}

table thead th:last-child {
    border-right: none; /* No separator for the last column */
}

/* Table body styling */
table tbody {
    color: #444;
    font-size: 0.95em;
}

table tbody tr {
    border-bottom: 1px solid #e1e5ea; /* Light row separator */
    transition: background 0.3s ease;
}

table tbody tr:hover {
    background: #f5f5f5; /* Light gray hover effect */
}

table tbody td {
    padding: 12px 15px;
    text-align: center;
}

/* Alternate row background */
table tbody tr:nth-child(even) {
    background: #f9f9f9;
}

/* Highlight emergency fields */
table tbody td:nth-child(10), /* Emergency Name */
table tbody td:nth-child(11) /* Emergency Phone */ {
    color: #c0392b;
    font-weight: bold;
}

/* Responsive Design */
@media (max-width: 768px) {
    table {
        font-size: 0.85em;
        width: 95%;
    }

    table thead th, table tbody td {
        padding: 10px 8px;
    }
}

@media (max-width: 480px) {
    table {
        font-size: 0.75em;
    }

    h2 {
        font-size: 1.5em;
    }
}

</style>
</head>
<body>
<%@ include file="components/usernavbar.jsp" %>
<h2>View My Bookings</h2>
<table align="center" border="2">
	<thead>
		<tr>
			<th>ID</th>
			<th>ShelterName</th>
			<th>Name</th>
			<th>Phone</th>
			<th>Email</th>
			<th>Check In Date</th>
			<th>Check Out Date</th>
			<th>Special Needs</th>
			<th>No of People</th>
			<th>Emergency Name</th>
			<th>Emergency Phone</th>
			<th>Id Proof</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="booking" items="${userBookings}">
		<tr>
			<td><c:out value="${booking.id}"></c:out></td>
			<td><c:out value="${booking.shelterName}"></c:out></td>
			<td><c:out value="${booking.name}"></c:out></td>
			<td><c:out value="${booking.phone}"></c:out></td>
			<td><c:out value="${booking.email}"></c:out></td>
			<td><c:out value="${booking.checkindate}"></c:out></td>
			<td><c:out value="${booking.checkoutdate}"></c:out></td>
			<td><c:out value="${booking.specialneeds}"></c:out></td>
			<td><c:out value="${booking.numpeople}"></c:out></td>
			<td><c:out value="${booking.emergencyname}"></c:out></td>
			<td><c:out value="${booking.emergencyphone}"></c:out></td>
			<td>
				<img src="displayidimage?id=${booking.id}" />
				
			</td>
		</tr>
		
		</c:forEach>
	</tbody>
</table>

<%@ include file="components/footer.jsp" %>
</body>
</html>