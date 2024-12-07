<%@page import="klu.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%
Admin a = (Admin) session.getAttribute("admin");
if (a == null) {
    response.sendRedirect("login.jsp"); // Redirect to login if no admin session exists
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Home</title>
<link rel="stylesheet" href="css/adminhome.css" />
</head>
<body>
	<!-- Include the Navbar -->
	<%@ include file="components/adminnavbar.jsp"%>
	<h1>Welcome Mr.<%= a.getUsername() %></h1>
	<h4 align="right">
		Total Users :
		<c:out value="${count}"></c:out>
	</h4>
	<div class="adminavail-container">
		<div class="adminavail-card">
			<h2>Add User</h2>
			<p>To Add the Users Explicitly</p>
			<a href="/adduser" class="adminavail-button">Add Users</a>
		</div>
		
		<div class="adminavail-card">
			<h2>Add Counsellor</h2>
			<p>To Add the Counsellors Explicitly</p>
			<a href="/addcounsellor" class="adminavail-button">Add Counsellors</a>
		</div>
		
		<div class="adminavail-card">
			<h2>Add Legal Advisor</h2>
			<p>To Add the Lawyers Explicitly to help the people</p>
			<a href="/addadvisor" class="adminavail-button">Add Advisors</a>
		</div>
		
		<div class="adminavail-card">
			<h2>Add Shelters</h2>
			<p>To Add Shelters for helping people</p>
			<a href="/addshelter" class="adminavail-button">Add Shelters</a>
		</div>
		
		<div class="adminavail-card">
			<h2>View All Bookings</h2>
			<p>To View all the bookings made by the user.</p>
			<a href="/viewallbookings" class="adminavail-button">View All Bookings</a>
		</div>
		
		<div class="adminavail-card">
			<h2>Add Workshops</h2>
			<p>To Add the workshops to create awareness for user.</p>
			<a href="/addworkshop" class="adminavail-button">Add Workshops</a>
		</div>
		
		<div class="adminavail-card">
			<h2>View All Workshops</h2>
			<p>To View the workshops to create awareness for user.</p>
			<a href="/viewallworkshops" class="adminavail-button">View All Workshops</a>
		</div>
		<div class="adminavail-card">
			<h2>View All Advisors</h2>
			<p>To View the adviosrs to help users.</p>
			<a href="/viewalladvisors" class="adminavail-button">View All Workshops</a>
		</div>
		
		<div class="adminavail-card">
			<h2>Deleted User</h2>
			<p>To see the Deleted user.</p>
			<a href="/viewalldeletedusers" class="adminavail-button">View All Deleted Users</a>
		</div>
		<div class="adminavail-card">
			<h2>Admin Logout</h2>
			<p>End your session and ensure privacy.</p>
			<a href="/" class="adminavail-button">Logout</a>
		</div>
		
		
	</div>
	<div class="footer">
		<%@ include file = "components/footer.jsp" %>
	</div>

</body>
</html>
