<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Shelters</title>
    <link rel="stylesheet" href="css/viewallusers.css" />
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

    /* Responsive Styles */
    @media (max-width: 768px) {
        .search-container input {
            width: 90%;
        }

        .card-container {
            gap: 15px;
        }

        .card {
            width: 100%;
            max-width: 320px;
        }

        h3 {
            font-size: 24px;
        }
    }

    @media (max-width: 480px) {
        .search-container input {
            width: 100%;
        }

        .card-container {
            gap: 15px;
            padding: 10px;
        }

        .card {
            width: 100%;
            max-width: 350px;
        }

        h3 {
            font-size: 20px;
        }
    }
</style>
    
    <script>
        function searchUsers() {
            let input = document.getElementById("searchInput").value.toUpperCase();
            let cards = document.getElementsByClassName("card");
            let noResults = document.getElementById("noResults");
            let visibleCount = 0;

            for (let i = 0; i < cards.length; i++) {
                let card = cards[i];
                let matchFound = false;

                // Check all content in the card for a match
                let cardContent = card.innerText.toUpperCase();
                if (cardContent.indexOf(input) > -1) {
                    matchFound = true;
                }

                if (matchFound) {
                    card.style.display = "block"; // Show matching cards
                    visibleCount++;
                } else {
                    card.style.display = "none"; // Hide non-matching cards
                }
            }

            // Show or hide the "No results" message
            noResults.style.display = visibleCount === 0 ? "block" : "none";
        }
    </script>
</head>
<body>
    <%@ include file="components/usernavbar.jsp"%>
    <h3 align="center">View All Shelters</h3>

    <div class="search-container">
        <input type="text" id="searchInput" onkeyup="searchUsers()" placeholder="Search shelters...">
    </div>

    <div class="card-container">
        <c:forEach items="${shelters}" var="shelter">
            <div class="card">
                <img src="displayshelterimage?id=${shelter.id}" alt="Shelter Image">
             
                <h4><c:out value="${shelter.name}"></c:out></h4>
                <p><strong>Type:</strong> <c:out value="${shelter.type}"></c:out></p>
                <p><strong>Support:</strong> <c:out value="${shelter.support}"></c:out></p>
                <p><strong>Location:</strong> <c:out value="${shelter.location}"></c:out></p>
                <p><strong>Description:</strong> <c:out value="${shelter.description}"></c:out></p>
                <a href="userbook?id=${shelter.id}" class="edit-btn">Book the Shelter</a>
                
            </div>
        </c:forEach>
    </div>

    <div id="noResults" class="no-results">
        No shelters found.
    </div>

    <%@ include file="components/footer.jsp"%>
</body>
</html>
