<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Workshop</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .form-container {
            width: 50%;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input,
        .form-group textarea,
        .form-group select {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group textarea {
            resize: vertical;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            background: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .form-group button:hover {
            background: #0056b3;
        }
        .message {
        	text-align: center;
        	color: green;
        	font-weight: bold;
        }
    </style>
</head>
<body>
	<%@ include file="components/adminnavbar.jsp" %>
    <div class="form-container">
        <h2>Add Workshop</h2>
        <form action="/insertworkshop" method="POST" enctype="multipart/form-data">
        	<c:if test="${not empty message}">
        		<div class="message">
					<p>${message}</p>
				</div>
			</c:if>
            <div class="form-group">
                <label for="title">Workshop Title:</label>
                <input type="text" id="title" name="title" placeholder="Enter workshop title" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea id="description" name="description" rows="4" placeholder="Enter workshop description"></textarea>
            </div>
            <div class="form-group">
                <label for="datetime">Date & Time:</label>
                <input type="datetime-local" id="datetime" name="datetime" required>
            </div>
            <div class="form-group">
                <label for="venue">Venue:</label>
                <input type="text" id="venue" name="venue" placeholder="Enter workshop venue">
            </div>
            <div class="form-group">
                <label for="mode">Mode:</label>
                <select id="mode" name="mode" required>
                    <option value="Online">Online</option>
                    <option value="Offline">Offline</option>
                    <option value="Hybrid">Hybrid</option>
                </select>
            </div>
            <div class="form-group">
                <label for="contact">Contact Details:</label>
                <input type="text" id="contact" name="contact" placeholder="Enter contact details">
            </div>
            <div class="form-group">
                <label for="speaker">Speaker:</label>
                <input type="text" id="speaker" name="speaker" placeholder="Enter speaker name">
            </div>
            <div class="form-group">
                <label for="resources">Resources:</label>
                <input type="text" id="resources" name="resources" placeholder="Enter resources">
            </div>
            <div class="form-group">
                <label for="image">Upload Image:</label>
                <input type="file" id="image" name="image" accept="image/*" required>
            </div>
            <div class="form-group">
                <button type="submit">Add Workshop</button>
            </div>
        </form>
    </div>
    <%@ include file="components/footer.jsp" %>
</body>
</html>
