<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Blogs</title>
<style>
/* General Page Styles */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

/* Title Styling */
h1 {
    color: #673AB7;
    text-align: center;
    font-size: 36px;
    margin-top: 30px;
}

/* Container for Blog Entries */
.blog-container {
    display: flex;
    flex-wrap: wrap; /* Allows the entries to wrap onto the next row */
    justify-content: space-around; /* Center the items with space between them */
    gap: 20px; /* Space between the blog entries */
    margin-top: 20px;
    margin-bottom: 20px;
}

/* Blog Entry Container */
.blog-entry {
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 15px; /* Reduced padding for a smaller form */
    display: flex;
    flex-direction: column;
    gap: 12px; /* Slightly reduced gap between elements */
    width: 45%; /* Adjust width for horizontal layout */
    max-width: 400px; /* Limit the max width to avoid too wide entries */
    margin: 0; /* Reset margin, controlled by container */
}

/* Blog Title */
.blog-entry h3 {
    font-size: 28px;
    color: #673AB7;
    margin: 0;
}

/* Blog Details */
.blog-entry p {
    font-size: 16px;
    color: #333;
    margin: 5px 0;
}

.blog-entry .author, .blog-entry .datetime {
    font-style: italic;
    color: #888;
}

/* Image Styling */
.blog-entry img {
    width: 100%; /* Ensure image takes full width of the container */
    height: auto;
    object-fit: cover;
    border-radius: 8px;
    margin-top: 10px;
    display: block;
    margin-left: auto;
    margin-right: auto;
}

/* Styling for Blog Content */
.blog-entry .content {
    font-size: 16px;
    color: #555;
    line-height: 1.6;
}

/* Hover effect for Blog Cards */
.blog-entry:hover {
    transform: translateY(-5px);
    transition: 0.3s;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
}

/* Navbar Styles */
#navbar {
    background-color: #673AB7;
    padding: 10px;
    color: white;
    text-align: center;
}

/* Media Query for Responsive Design */
@media (max-width: 768px) {
    .blog-entry {
        width: 100%; /* Make blog entries take full width on small screens */
        margin: 10px 0; /* Adjust margins */
    }

    h1 {
        font-size: 28px;
    }
}

</style>
</head>
<body>
<%@ include file="components/usernavbar.jsp" %>

<h1>View All Blogs</h1>

<!-- Container for Blog Entries -->
<div class="blog-container">
    <!-- Iterate over each blog in the list -->
    <c:forEach items="${blogslist}" var="blogs">
        <div class="blog-entry">
            <!-- Blog Title -->
            <h3><c:out value="${blogs.title}"></c:out></h3>
            
            <!-- Blog Details -->
            <p class="author"><strong>Posted By: </strong><c:out value="${blogs.name}"></c:out></p>
            <p class="datetime"><strong>Published on: </strong><c:out value="${blogs.datetime}"></c:out></p>
            
            <!-- Blog Content (excerpt) -->
            <p class="content"><strong>Content: </strong><c:out value="${blogs.content}"></c:out></p>

            <!-- Blog Image -->
            <c:if test="${not empty blogs.blogimage}">
                <img src="displayblogimage?id=${blogs.id}" alt="Blog Image">
            </c:if>
        </div>
    </c:forEach>
</div>

<%@ include file="components/footer.jsp" %>

</body>
</html>
