<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Knowledge Base</title>
    <style>
        .knowledge-container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
        }

        .article-card {
            background: white;
            margin: 15px 0;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .article-card h3 {
            color: #3498db;
        }

        .article-card p {
            color: #555;
        }

        .btn {
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
    </style>
</head>
<body>
<%@ include file="components/advisornavbar.jsp" %>

<div class="knowledge-container">
    <h1>Legal Knowledge Base</h1>
    
    <div class="article-card">
        <h3>Understanding Contract Law</h3>
        <p>Basics of contract law, essential elements of a valid contract...</p>
        <a href="/img/contractlaw.pdf" class="btn">Read More</a>
    </div>

    <div class="article-card">
        <h3>Introduction to Criminal Law</h3>
        <p>Learn about key legal procedures and case laws in criminal law...</p>
        <a href="/img/criminallaw.pdf" class="btn">Read More</a>
    </div>

</div>

<%@ include file="components/footer.jsp" %>
</body>
</html>
