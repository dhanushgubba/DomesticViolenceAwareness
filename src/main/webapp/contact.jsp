<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Domestic Violence Support</title>
    <link rel="stylesheet" href="css/contact.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>
    <%@ include file="components/navbar.jsp" %>
    
    <div class="contact-container">
        <!-- Contact Form Section -->
        <div class="contact-section">
            <h3><i class="fas fa-envelope"></i> Get In Touch</h3>
            <form action="#" method="POST" class="contact-form">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your full name" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email address" required>
                </div>

                <div class="form-group">
                    <label for="message">Your Message</label>
                    <textarea id="message" name="message" placeholder="Tell us how we can help you" rows="4" required></textarea>
                </div>
				
                <a href="/login" type="submit">Submit</a>
                
            </form>
        </div>

        <!-- Contact Information Section -->
        <div class="contact-section">
            <h3><i class="fas fa-map-marker-alt"></i>Our Contact Information</h3>
            <p><strong>Address:</strong>Guntur Vari Thota 3rd Lane</p>
            <p><strong>Phone:</strong> +91 9100638384</p>
            <p><strong>Email:</strong>2200030302@kluniversity.in</p>
        </div>

        <!-- Social Media Links Section -->
        <div class="contact-section">
            <h3><i class="fas fa-share-alt"></i> Follow Us</h3>
            <ul class="social-links">
                <li><a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook-f"></i> Facebook</a></li>
                <li><a href="https://www.twitter.com" target="_blank"><i class="fab fa-twitter"></i> Twitter</a></li>
                <li><a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i> Instagram</a></li>
                <li><a href="https://www.linkedin.com" target="_blank"><i class="fab fa-linkedin"></i>LinkedIn</a>
            </ul>
        </div>
    </div>

    <%@ include file="components/footer.jsp" %>
</body>
</html>
