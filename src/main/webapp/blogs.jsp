<%@page import="klu.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	User user = (User)session.getAttribute("user");
	if(user == null) 
	{
		response.sendRedirect("login");
		return;
	}

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blogs</title>
    <style>
        .container {
    width: 80%;
    margin: 20px auto;
    background: white;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    padding: 20px;
    transition: box-shadow 0.3s ease, transform 0.3s ease; /* Transition effect for smooth hover */
}

.container:hover {
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2); /* Darker shadow */
    transform: translateY(-5px); /* Slightly lifts the container */
}
        h1 {
            margin: 0;
            padding: 10px 0;
            color: #673AB7;
        }
        .form-group {
            margin: 15px 0;
            box-shadow: border-box;
        }
        .form-group label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        .form-group input, .form-group textarea, .form-group select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .btn {
            background-color: #673AB7;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #5e35b1;
        }
        .button-container {
            display: flex;
            gap: 20px;
            justify-content: space-between;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<%@ include file="components/usernavbar.jsp" %>
<div class="container">
    <section>
        <h1 style="text-align:center;">Create a Blog</h1>
        <form action="/addblog" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Name of the User</label>
                <input type="text" id="name" name="name" value="<%= user.getUsername() %>" readonly/>
            </div>
            <div class="form-group">
                <label for="title">Blog Title</label>
                <input type="text" id="title" name="title" placeholder="Enter blog title" required>
            </div>
            <div class="form-group">
                <label for="content">Content</label>
                <textarea id="content" name="content" rows="5" placeholder="Write your blog content here..." required></textarea>
            </div>
            <div class="form-group">
                <label for="datetime">Date and Time</label>
                <input type="datetime-local" id="datetime" name="datetime" required />
            </div>
            <div class="form-group">
                <label for="blogimage">Blog Image</label>
                <input type="file" id="blogimage" name="blogimage" accept="image/*" required />
            </div>
    
            <div class="button-container">
                <button type="submit" class="btn">Submit Blog</button>
                <a href="/viewallblogs"><button type="button" class="btn">View All Blogs</button></a>
            </div>
        </form>
    </section>
</div>

<%@ include file="components/footer.jsp" %>

</body>
</html>
