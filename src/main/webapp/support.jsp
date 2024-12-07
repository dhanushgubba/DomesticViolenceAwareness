<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Support</title>
    <style>
        .support-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
            color: #333;
        }

        input, textarea, select {
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            margin-top: 20px;
            padding: 10px 20px;
            background: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            transition: background 0.3s;
        }

        .btn:hover {
            background: #2980b9;
        }
    </style>
</head>
<body>
<%@ include file="components/advisornavbar.jsp" %>

<div class="support-container">
    <h1>Contact Support</h1>

    <form action="/insertsupport" method="post">
        <label for="name">Full Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email Address:</label>
        <input type="email" id="email" name="email" required>

        <label for="issuetype">Type of Issue:</label>
        <select id="issuetype" name="issuetype" required>
            <option value="Technical">Technical Issue</option>
            <option value="Legal">Legal Consultation</option>
            <option value="Billing">Billing Inquiry</option>
        </select>

        <label for="message">Describe Your Issue:</label>
        <textarea id="message" name="message" rows="5" required></textarea>

        <button type="submit" class="btn">Submit Request</button>
    </form>
</div>

<%@ include file="components/footer.jsp" %>
</body>
</html>
