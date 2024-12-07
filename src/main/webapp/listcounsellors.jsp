<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Counsellors List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #eaeaea;
        color: #333;
    }
    h1 {
        text-align: center;
        color: #4a4a4a;
        margin: 20px 0;
    }
    .table-container {
        width: 90%;
        margin: 30px auto;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        overflow-x: auto;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 0;
    }
    th, td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #ff5757; /* Red for a bold and empathetic theme */
        color: #fff;
        text-align: center;
    }
    td {
        text-align: center;
    }
    tr:hover {
        background-color: #f9f9f9;
    }
    .radio-button input {
        cursor: pointer;
    }
    .button-container {
        text-align: center;
        margin: 20px 0;
    }
    .button-container button {
        padding: 12px 25px;
        font-size: 16px;
        color: #fff;
        background-color: #ff5757;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .button-container button:hover {
        background-color: #e04e4e;
    }
</style>
</head>
<body>
<%@ include file="components/adminnavbar.jsp"%>
<h1>Select a Counsellor</h1>
<form action="<c:url value='/assigncounsellor' />" method="post">
    <input type="hidden" name="requestId" value="${param.id}" />
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Select</th>
                    <th>Name</th>
                    <th>Specialization</th>
                    <th>Experience (Years)</th>
                    <th>Availability</th>
                    <th>Languages</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${counsellorslist}" var="counsellor">
                    <tr>
                        <td class="radio-button">
                            <input type="radio" name="counsellorId" value="${counsellor.id}" required />
                        </td>
                        <td><c:out value="${counsellor.name}"></c:out></td>
                        <td><c:out value="${counsellor.specialization}"></c:out></td>
                        <td><c:out value="${counsellor.experience}"></c:out></td>
                        <td><c:out value="${counsellor.availability}"></c:out></td>
                        <td><c:out value="${counsellor.languages}"></c:out></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="button-container">
            <button type="submit">Assign Counsellor</button>
        </div>
    </div>
</form>
</div>
</body>
</html>
