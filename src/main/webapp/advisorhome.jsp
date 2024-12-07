<%@page import="klu.model.Advisor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%
Advisor ad = (Advisor) session.getAttribute("advisor");
if (ad == null) {
	response.sendRedirect("login.jsp"); // Redirect to login if no admin session exists
	return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Legal Advisor Dashboard</title>
<style>
/* Reset some default styles */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f9;
	color: #333;
	padding: 20px;
}

.container {
	max-width: 1200px;
	margin: 120px auto;
	text-align: center;
}

header {
	padding: 30px;
}

header h1 {
	font-size: 2.5rem;
	color: #2c3e50;
}

header p {
	font-size: 1.2rem;
	color: #7f8c8d;
}

.cards {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
	gap: 20px;
	margin-top: 30px;
}

.card {
	background: white;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.card h2 {
	color: #3498db;
	margin-bottom: 10px;
}

.card p {
	margin-bottom: 15px;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	background: #3498db;
	color: white;
	text-decoration: none;
	border-radius: 5px;
	transition: background 0.3s;
}

.btn:hover {
	background: #2980b9;
}

footer {
	margin-top: 40px;
	padding: 10px;
	background: #2c3e50;
	color: white;
	text-align: center;
}
</style>
</head>
<body>

	<%@ include file="components/advisornavbar.jsp"%>

	<div class="container">
		<header>
			<h1>
				Welcome
				<%=ad.getUsername()%></h1>
			<p>Your personalized dashboard for managing legal cases and
				consultations.</p>
		</header>

		<section class="cards">


			<div class="card">
				<h2>Legal Resources</h2>
				<p>Browse relevant legal documents, guidelines, and policies.</p>
				<a href="/advisorresources" class="btn">View Resources</a>
			</div>
			<div class="card">
				<h2>Legal News</h2>
				<p>Stay updated with the latest legal news and case laws.</p>
				<a href="/legalnews" class="btn">Read News</a>
			</div>

			<div class="card">
				<h2>Knowledge Base</h2>
				<p>Access articles, tutorials, and legal research documents.</p>
				<a href="/knowledgebase" class="btn">Explore Knowledge</a>
			</div>

			<div class="card">
				<h2>Support</h2>
				<p>Contact support for technical or legal assistance.</p>
				<a href="/support" class="btn">Get Support</a>
			</div>

			<div class="card">
				<h2>Profile</h2>
				<p>View personal details and manage your account settings.</p>
				<a href="/advisorprofile" class="btn">My Profile</a>
			</div>
		</section>

	</div>

	<%@ include file="components/footer.jsp"%>

</body>
</html>
