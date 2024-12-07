	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>View Community</title>
	<link rel="stylesheet" href="css/viewcommunity.css" />
	<style>
	</style>
	</head>
	<body>
		<%@ include file="components/usernavbar.jsp"%>
	
		<div class="view-community-container">
			<h1 align="center">View My Community</h1>
			<table align="center" border="2" class="table table-striped">
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Subject</th>
					<th>Description</th>
					<th>Created Date</th>
				</tr>
	
				<c:forEach var="community" items="${userVoice}">
	
					<tr>
						<td><c:out value="${community.name}"></c:out></td>
						<td><c:out value="${community.email}"></c:out></td>
						<td><c:out value="${community.subject}"></c:out></td>
						<td><c:out value="${community.description}"></c:out></td>
						<td><c:out value="${community.createdDate}"></c:out></td>
					</tr>
				</c:forEach>
				</table>
		</div>
		<%@include file="components/footer.jsp" %>
	</body>
	</html>