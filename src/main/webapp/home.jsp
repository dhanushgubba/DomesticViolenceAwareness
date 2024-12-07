<%@page import="klu.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
User u = (User) session.getAttribute("user");
if (u == null) {
    response.sendRedirect("login.jsp"); // Redirect to login if no admin session exists
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>JFSD Domestic Violence Project - Home</title>
    <link rel="stylesheet" href="css/userhome.css" />
</head>
<body>

    <%@ include file="components/usernavbar.jsp" %>

    <!-- Welcome Section -->
    <div class="welcome-section">
        <h1>Welcome to the Domestic Violence Support Platform</h1>
        <h2>Mr.<%=u.getLastname()%> </h2>
        <p>Your safety and well-being are our priority. Access resources, support, and community help to navigate through challenges.</p>
    	<img src="/img/userhome.jpg" />
    </div>

    <!-- Quick Links to Resources -->
    <div class="resources-container">
        <div class="resource-card">
            <h2>Listed Counsellors</h2>
            <p>Manage your personal information and update preferences.</p>
            <a href="/usercounsellorlist" class="resource-button">View Counsellors</a>
        </div>
        
        
        <div class="resource-card">
            <h2>Listed Advisors</h2>
            <p>Advisors that Counsellors take help in solving the issue.</p>
            <a href="useradvisorlist" class="resource-button">View Advisors</a>
        </div>
        
        <div class="resource-card">
            <h2>Resources</h2>
            <p>Access educational guides, awareness material, and safety tips.</p>
            <a href="/userresources" class="resource-button">Explore Resources</a>
        </div>
        
        <div class="resource-card">
            <h2>Support Services</h2>
            <p>Connect with legal aid, counseling, and shelter services.</p>
            <a href="/usersupport" class="resource-button">Get Support</a>
        </div>
        
        <div class="resource-card">
            <h2>Community Forum</h2>
            <p>Join the community forum to share experiences and receive peer support.</p>
            <a href="/userforum" class="resource-button">Visit Forum</a>
        </div>
        
        <div class="resource-card">
            <h2>View All Blogs</h2>
            <p>View all the blogs to share experiences and receive peer support.</p>
            <a href="/viewallblogs" class="resource-button">View All Blogs</a>
        </div>
        
        <div class="resource-card">
            <h2>Request / Approval</h2>
            <p>Submit requests for assistance and track approval status.</p>
            <a href="userrequest" class="resource-button">Request Assistance</a>
        </div>
        
        
        
        <div class="resource-card">
            <h2>Logout</h2>
            <p>End your session and ensure privacy for your data.</p>
            <a href="/userlogout" class="resource-button">Logout</a>
        </div>
    </div>

    <!-- Statistics Section -->
    <div class="statistics-section">
        <h2>Our Impact in Numbers</h2>
        <div class="stats-container">
            <div class="stat-card">
                <h3>500+</h3>
                <p>Support Services Delivered</p>
            </div>
            <div class="stat-card">
                <h3>1,000+</h3>
                <p>Community Forum Members</p>
            </div>
            <div class="stat-card">
                <h3>95%</h3>
                <p>Approval Success Rate</p>
            </div>
        </div>
    </div>

    <!-- Testimonials Section -->
    <div class="testimonials-section">
        <h2>What Our Users Say</h2>
        <div class="testimonial">
            <p>"This platform has been a life-saver. The resources and support I received were invaluable."</p>
            <h4>- Jane Doe</h4>
        </div>
        <div class="testimonial">
            <p>"I finally feel heard and supported. Thank you for creating such a safe space."</p>
            <h4>- John Smith</h4>
        </div>
    </div>

    <!-- Blogs and Workshops Section -->
    <div class="resource-container1">
    	<div class="blogs-workshops-section">
        <h2>Learn and Grow</h2>
        <div class="resource-card1">
            <h2>Workshops</h2>
            <p>Join our regular workshops to learn about legal rights and self-defense and help them to live.</p>
            <a href="/workshops" class="resource">View Workshops</a>
        </div>
        <div class="resource-card1">
            <h2>Add Blogs</h2>
            <p>Add inspiring stories and expert advice on handling domestic violence situations.</p>
            <a href="/blogs" class="resource">Add Blogs</a>
        </div>
        <div class="resource-card1">
    		<h2>Know Rights</h2>
   	 		<p>Understand the laws and policies in place to protect victims of domestic violence.</p>
    		<a href="/lawpolicies" class="resource">Learn Your Rights</a>
		</div>
        
    </div>
    	
    
    </div>
    <!-- Contact Section -->
    <div class="contact-section">
        <h2>Contact Us</h2>
        <p>If you have questions or need assistance, don't hesitate to reach out.</p>
        <p>Email: support@domesticviolenceplatform.com</p>
        <p>Phone: +1-800-123-4567</p>
    </div>

    <%@ include file="components/footer.jsp" %>
</body>
</html>
