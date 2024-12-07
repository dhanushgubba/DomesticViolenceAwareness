<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Bookings</title>
    <style>
        /* Remove margins and padding for full-page coverage */
        html, body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
		
		.container {
			margin-bottom: 168px;
		}
        h1 {
            text-align: center;
            margin: 20px 0;
            font-size: 2em;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 1em;
            table-layout: auto; /* Allows column widths to adjust based on content */
        }
        

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
            word-wrap: break-word; 
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
            font-weight: bold;
           
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        td {
            color: #333;
        }

        .actions {
    display: flex; /* Enables flexbox layout */
    gap: 10px; /* Adds spacing between buttons */
}

.actions a {
    text-decoration: none;
    padding: 8px 14px;
    border-radius: 5px;
    color: #fff;
    text-align: center;
}

.actions a.edit {
    background-color: #28a745;
}

.actions a.delete {
    background-color: #dc3545;
}

.actions a:hover {
    opacity: 0.8;
}
        

        .no-bookings {
            text-align: center;
            margin: 20px 0;
            font-size: 1.2em;
            color: #666;
        }
    </style>
</head>
<body>
    <%@ include file="components/adminnavbar.jsp" %>
    <h1>View All Bookings</h1>
    
    <div class="container">
    <c:choose>
        <c:when test="${not empty bookings}">
            <table>
                <thead>
                    <tr>
                        <th>Booking ID</th>
                        <th>Shelter Name</th>
                        <th>Username</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Check-in Date</th>
                        <th>Check-out Date</th>
                        <th>Special Needs</th>
                        <th>No. of People</th>
                        <th>Emergency Contact</th>
                        <th>Emergency Phone</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${bookings}" var="booking">
                        <tr>
                            <td><c:out value="${booking.id}" /></td>
                            <td><c:out value="${booking.shelterName}" /></td>
                            <td><c:out value="${booking.name}" /></td>
                            <td><c:out value="${booking.phone}" /></td>
                            <td><c:out value="${booking.email}" /></td>
                            <td><c:out value="${booking.checkindate}" /></td>
                            <td><c:out value="${booking.checkoutdate}" /></td>
                            <td><c:out value="${booking.specialneeds}" /></td>
                            <td><c:out value="${booking.numpeople}" /></td>
                            <td><c:out value="${booking.emergencyname}" /></td>
                            <td><c:out value="${booking.emergencyphone}" /></td>
                            <td class="actions">
                                <a href="editBooking?id=${booking.id}" class="edit">Edit</a>
                                <a href="deleteBooking?id=${booking.id}" class="delete"
                                   onclick="return confirm('Are you sure you want to delete this booking?');">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:when>
        <c:otherwise>
            <div class="no-bookings">
                No bookings available at the moment.
            </div>
        </c:otherwise>
    </c:choose>
    </div>
   <footer>
   		 <%@ include file="components/footer.jsp" %>
   </footer>
</body>
</html>
