<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Legal News</title>
    <style>
        .news-container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
        }

        .news-article {
            border-bottom: 1px solid #ddd;
            padding: 15px 0;
        }

        .news-article h3 {
            color: #3498db;
        }

        .news-article p {
            color: #555;
        }

        .news-article a {
            color: #2980b9;
            text-decoration: none;
        }

        .news-article a:hover {
            text-decoration: underline;
        }

        .news-article .date {
            font-size: 0.9rem;
            color: #7f8c8d;
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

<div class="news-container">
    <h1>Latest Legal News</h1>

    <!-- Article 1 -->
    <div class="news-article">
        <h3>New Law Passed on Cybersecurity Regulations</h3>
        <p>Details on the newly passed cybersecurity regulation designed to protect sensitive data and prevent cyber-attacks.</p>
        <div class="date">Published on: 8th December 2024</div>
    </div>

    <!-- Article 2 -->
    <div class="news-article">
        <h3>Landmark Case: Supreme Court's Latest Verdict</h3>
        <p>A significant decision in the realm of constitutional law regarding the powers of the judiciary in India.</p>
        <div class="date">Published on: 5th December 2024</div>
    </div>

    <!-- Article 3 -->
    <div class="news-article">
        <h3>International Trade Agreements and Their Impact on Local Laws</h3>
        <p>The effects of new international trade agreements on domestic policies and legal frameworks in various countries.</p>
        <div class="date">Published on: 2nd December 2024</div>
    </div>

    <!-- Article 4 -->
    <div class="news-article">
        <h3>Government Proposes Amendments to Family Law</h3>
        <p>Recent proposals for amendments to family law, aimed at improving the legal framework for marriage and divorce proceedings.</p>
        <div class="date">Published on: 30th November 2024</div>
    </div>

    <!-- Article 5 -->
    <div class="news-article">
        <h3>Supreme Court Ruling on Privacy Laws in Digital Age</h3>
        <p>The Indian Supreme Court has ruled on the extent of privacy rights in the digital age, balancing security with individual freedoms.</p>
        <div class="date">Published on: 28th November 2024</div>
    </div>

    <!-- Article 6 -->
    <div class="news-article">
        <h3>New Anti-Terrorism Bill Under Scrutiny</h3>
        <p>The controversial anti-terrorism bill is under review as human rights organizations raise concerns about civil liberties.</p>
       	<div class="date">Published on: 25th November 2024</div>
    </div>

    <!-- Article 7 -->
    <div class="news-article">
        <h3>Legal Implications of Autonomous Vehicles on Road Safety</h3>
        <p>The advent of self-driving cars has prompted legal experts to analyze the implications for traffic law and safety regulations.</p>
        <div class="date">Published on: 20th November 2024</div>
    </div>

</div>

<%@ include file="components/footer.jsp" %>
</body>
</html>
