<%@ page import="klu.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%
    User user = (User) session.getAttribute("user");

    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Workshops</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h3 {
            font-size: 28px;
            color: #333;
            margin-top: 20px;
            text-align: center;
            font-weight: bold;
        }

        /* Search Container */
        .search-container {
            text-align: center;
            margin: 20px auto;
            max-width: 800px;
        }

        .search-container input {
            padding: 12px;
            width: 80%;
            max-width: 600px;
            font-size: 18px;
            border: 2px solid #ddd;
            border-radius: 8px;
            box-sizing: border-box;
            outline: none;
            transition: border 0.3s ease;
        }

        .search-container input:focus {
            border-color: #4CAF50;
        }

        .no-results {
            text-align: center;
            font-size: 18px;
            color: #777;
            display: none;
            margin: 30px 0;
        }

        /* Card Container */
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 25px;
            padding: 20px;
            margin-top: 50px;
        }

        /* Individual Card */
        .card {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 280px;
            padding: 15px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            margin-bottom: 30px;
            box-sizing: border-box;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.15);
        }

        .card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .card h4 {
            font-size: 22px;
            margin: 10px 0;
            color: #333;
            font-weight: bold;
        }

        .card p {
            font-size: 14px;
            color: #555;
            line-height: 1.6;
            margin: 5px 0;
        }

        /* Button Styling */
        .card a {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 16px;
            margin-top: 15px;
            transition: background-color 0.3s ease;
        }

        .card a:hover {
            background-color: #45a049;
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal-content {
        	position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            width: 80%;
            max-width: 400px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            z-index: 1000;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        
        .modal form {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .modal input {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .modal button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .modal button:hover {
            background-color: #45a049;
        }
    </style>
    <script>
        function searchWorkshops() {
            let input = document.getElementById("searchInput").value.toUpperCase();
            let cards = document.getElementsByClassName("card");
            let noResults = document.getElementById("noResults");
            let visibleCount = 0;

            for (let i = 0; i < cards.length; i++) {
                let card = cards[i];
                let matchFound = card.innerText.toUpperCase().includes(input);

                card.style.display = matchFound ? "block" : "none";

                if (matchFound) visibleCount++;
            }

            noResults.style.display = visibleCount === 0 ? "block" : "none";
        }

        function openModal(workshopId, workshopTitle, workshopVenue, workshopSpeaker) {
            document.getElementById("workshopId").value = workshopId;
            document.getElementById("workshopTitle").value = workshopTitle;
            document.getElementById("venue").value = workshopVenue;
            document.getElementById("speaker").value = workshopSpeaker;
            document.getElementById("modal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("modal").style.display = "none";
        }
    </script>
</head>
<body>
    <%@ include file="components/usernavbar.jsp" %>
    
    <h3>View All Workshops</h3>

    <div class="search-container">
        <input type="text" id="searchInput" onkeyup="searchWorkshops()" placeholder="Search workshops...">
    </div>

    <div class="card-container">
        <c:forEach items="${workshopslist}" var="workshop">
            <div class="card">
            	<h3 align="center" class="error">
					<c:out value="${message}"></c:out>
				</h3>
                <img src="displayworkshopimage?id=${workshop.id}" alt="Workshop Image">
                <h4><c:out value="${workshop.title}" /></h4>
                <p><strong>Venue:</strong> <c:out value="${workshop.venue}" /></p>
                <p><strong>Time:</strong> <c:out value="${workshop.datetime}"></c:out></p>
                <a href="javascript:void(0);" onclick="openModal('${workshop.id}', '<c:out value="${workshop.title}" />', '<c:out value="${workshop.venue}" />', '<c:out value="${workshop.speaker}" />')">
                    Register for Workshop
                </a>
            </div>
        </c:forEach>
    </div>

    <div id="modal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h3>Register for Workshop</h3>
            <form action="/registerworkshop" method="post">           
            	<c:out value="${message}"></c:out>
                <input type="hidden" id="workshopId" name="workshopId" />
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" value="<%= user.getUsername() %>" readonly />
				
				<label for="email">Email:</label>
                <input type="text" id="email" name="email" value="<%= user.getEmail() %>" readonly />
                
                <label for="workshopTitle">Workshop Name:</label>
                <input type="text" id="workshopTitle" name="workshopTitle" readonly />

                <label for="venue">Venue:</label>
                <input type="text" id="venue" name="venue" readonly />

                <label for="speaker">Speaker:</label>
                <input type="text" id="speaker" name="speaker" readonly />

                <button type="submit">Register</button>
            </form>
        </div>
    </div>

    <div id="noResults" class="no-results">
        <p>No workshops found. Please try again.</p>
    </div>
	<%@ include file="components/footer.jsp" %>
</body>
</html>
