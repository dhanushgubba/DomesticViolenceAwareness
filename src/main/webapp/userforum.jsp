<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Share Your Voice</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
            color: #333;
        }
        .container {
            width: 100%;
            max-width: 800px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #d9534f;
            font-size: 2rem;
            margin-bottom: 20px;
        }
        p {
            text-align: center;
            font-size: 1rem;
            color: #555;
            margin-bottom: 30px;
        }
        form {
            width: 100%;
        }
        label {
            font-size: 1rem;
            color: #555;
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input, textarea, select {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
            box-sizing: border-box;
        }
        button {
            background-color: #d9534f;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            display: block;
            width: 100%;
        }
        button:hover {
            background-color: #c9302c;
        }
        .message {
            text-align: center;
            color: green;
            font-weight: bold;
            margin-top: 20px;
        }
        
        .voice-btn {
        	height:25%;
        	width: 25%;
        	background-color: blue;
        	padding: 10px 20px;
        	margin-top: 20px;
       	}
       	.voice-btn a{
       		color: white;
       		text-decoration: none;
       	}
    </style>
</head>
<body>
<%@ include file="components/usernavbar.jsp" %>
    <div class="container">
        <h1>Share Your Voice</h1>
        <p>Your voice matters. Share your experiences, concerns, or suggestions to help stop domestic violence.</p>
        <form action="/community" method="post">
            <label for="name">Your Name (Optional):</label>
            <input type="text" id="name" name="name" placeholder="Enter your name (optional)">

            <label for="email">Your Email (Optional):</label>
            <input type="email" id="email" name="email" placeholder="Enter your email (Required)">

            <label for="subject">Subject:</label>
            <select id="subject" name="subject" required>
                <option value="" disabled selected>Select a subject</option>
                <option value="Share a Story">Share a Story</option>
                <option value="Report an Incident">Report an Incident</option>
                <option value="Request Help">Request Help</option>
                <option value="Offer Support">Offer Support</option>
            </select>

            <label for="description">Your Message:</label>
            <textarea id="description" name="description" rows="6" placeholder="Write your message here..." required></textarea>

            <button type="submit">Submit</button>	
            <button class="voice-btn">
            	<a href="/viewcommunity">View My Voices</a>
            </button>
        </form>
        <div class="message">
            <p>${successMessage}</p>
        </div>
    </div>
  <%@ include file="components/footer.jsp" %>
</body>
</html>
