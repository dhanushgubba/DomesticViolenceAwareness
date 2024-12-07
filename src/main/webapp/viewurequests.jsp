<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View My Requests</title>
<style>

    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f7f7f7;
        display: flex;
		flex-direction: column;
		min-height: 100vh;
    }

    h1 {
        text-align: center;
        font-weight: bold;
        color: #444;
        margin-top: 20px;
        margin-bottom: 30px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
    }

    th {
        background-color: #5c85d6; /* Soft blue for headers */
        color: #fff;
        text-transform: uppercase;
        padding: 15px;
        border: 1px solid #ddd;
        font-size: 14px;
    }

    td {
        background-color: #fefefe; /* Light background for cells */
        color: #555;
        padding: 15px;
        text-align: left;
        border: 1px solid #ddd;
        font-size: 14px;
    }

    tr:nth-child(even) td {
        background-color: #f4f8fc; /* Slightly different background for alternate rows */
    }

    tr:hover td {
        background-color: #eaf3ff; /* Subtle blue hover effect */
        color: #333;
    }

    .add-request-button {
        display: block;
        width: 200px;
        padding: 10px 20px;
        font-size: 16px;
        background-color: #5c85d6; /* Match header color */
        color: #fff;
        border: none;
        border-radius: 5px;
        text-align: center;
        cursor: pointer;
        text-decoration: none;
        margin: 20px auto;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .add-request-button:hover {
        background-color: #4973b8; /* Darker blue on hover */
        transform: scale(1.05);
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        table {
            font-size: 13px;
        }

        th, td {
            padding: 10px;
        }

        h1 {
            font-size: 22px;
        }

        .add-request-button {
            width: 180px;
        }
    }
    .content {
    	flex: 1;
    }
</style>
</head>
<body>

<div class="content">
    <%@ include file="components/usernavbar.jsp" %>

    <h1>View My Requests</h1>

    <table>
        <thead>
            <tr>
            	<th>ID</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Urgency</th>
                <th>Location</th>
                <th>Nature</th>
                <th>Services</th>
                <th>Assigned Counsellor</th>
                <!-- Add more headers here as needed -->
            </tr>
        </thead>
        <tbody>
            <c:forEach var="request" items="${userRequests}">
                <tr>
                	<td><c:out value="${request.id}"/></td>
                    <td><c:out value="${request.name}"/></td>
                    <td><c:out value="${request.phone}"/></td>
                    <td><c:out value="${request.urgency}"/></td>
                    <td><c:out value="${request.location}"/></td>
                    <td><c:out value="${request.nature}" /></td>
                    <td><c:out value="${request.support}" /></td>
                  	<td><c:out value="${request.assignedCounsellorId}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a class="add-request-button" href="/userrequest">Add New Request</a>
</div>
<%@ include file="components/footer.jsp" %>
</body>
</html>
