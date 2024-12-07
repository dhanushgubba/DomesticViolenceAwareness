<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Counsellors</title>
<style>
/* All CSS styles remain unchanged */
/* Reset and Base Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f4f7fa;
    padding: 0 20px;
}

/* Page Title and Info */
h3 {
    text-align: center;
    margin-top: 40px;
    color: #333;
}

h4 {
    text-align: right;
    margin: 20px 30px;
    font-size: 16px;
    color: #555;
}

/* Search Bar */
.search-container {
    text-align: center;
    margin: 20px 0;
}

.search-container input {
    padding: 10px 15px;
    width: 80%;
    font-size: 16px;
    border: 2px solid #000;
    border-radius: 5px;
}

/* No Results Message */
.no-results {
    text-align: center;
    font-size: 16px;
    color: #777;
    display: none;
    margin: 20px 0;
}

/* Card Container */
.cards-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    padding: 20px;
}

/* Individual Card */
.counsellor-card {
    width: 22%;
    margin: 15px;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    border: 1px solid #ddd;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.counsellor-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
}

/* Card Header */
.card-header {
    font-size: 18px;
    font-weight: bold;
    color: #333;
    text-align: center;
    margin-bottom: 10px;
    text-transform: capitalize;
}

/* Card Content */
.card-content {
    margin-top: 15px;
    font-size: 14px;
    color: #555;
    line-height: 1.6;
}

.card-content p {
    margin-bottom: 8px;
}

/* Card Footer (Buttons) */
.card-footer {
    text-align: center;
    margin-top: 15px;
}

.card-footer form {
    display: inline-block;
    margin: 10px 5px;
}

.card-footer button {
    padding: 10px 15px;
    background-color: #007bff;
    color: white;
    border: none;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.card-footer button:hover {
    background-color: #0056b3;
}

.card-footer button:focus {
    outline: none;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
}

/* View More Button */
.view-more-btn {
    background: none;
    color: #007bff;
    font-size: 14px;
    font-weight: bold;
    cursor: pointer;
    border: none;
    text-decoration: underline;
}

/* Hidden Info Section */
.more-info {
    display: none;
}

/* Responsive Design */
@media (max-width: 1024px) {
    .counsellor-card {
        width: 30%; /* Three cards per row */
    }
}

@media (max-width: 768px) {
    .counsellor-card {
        width: 45%; /* Two cards per row */
    }
}

@media (max-width: 480px) {
    .counsellor-card {
        width: 100%; /* One card per row */
    }

    .search-container input {
        width: 90%;
    }
}

</style>

<script>
function toggleCounsellorDetails(counsellorId) {
    var moreInfo = document.getElementById('more-info-' + counsellorId);
    var viewMoreBtn = document.getElementById('view-more-btn-' + counsellorId);
    if (moreInfo.style.display === 'none') {
        moreInfo.style.display = 'block';
        viewMoreBtn.textContent = 'View Less';
    } else {
        moreInfo.style.display = 'none';
        viewMoreBtn.textContent = 'View More';
    }
}

function searchAdvisors() {
    let input = document.getElementById("searchInput").value.toUpperCase();
    let cards = document.getElementsByClassName("counsellor-card");
    let noResults = document.getElementById("noResults");
    let visibleCount = 0;

    for (let i = 0; i < cards.length; i++) {
        let card = cards[i];
        let cardText = card.textContent || card.innerText;

        if (cardText.toUpperCase().indexOf(input) > -1) {
            card.style.display = "inline-block"; 
            visibleCount++;
        } else {
            card.style.display = "none"; 
        }
    }
    noResults.style.display = visibleCount === 0 ? "block" : "none";
}
</script>
</head>

<body>
<%@ include file="components/adminnavbar.jsp"%>

<h3>View All Counsellors</h3>

<h4>Total Counsellors: <c:out value="${count}"/></h4>

<div class="search-container">
    <input type="text" id="searchInput" onkeyup="searchAdvisors()" placeholder="Search Advisors...">
</div>

<div class="cards-container">
    <c:forEach items="${advisorslist}" var="advisor">
        <div class="counsellor-card">
            <div class="card-header">
                <c:out value="${advisor.firstname}"/> <c:out value="${advisor.lastname}"/>
            </div>

            <div class="card-content">
                <p><strong>Email:</strong> <c:out value="${advisor.email}"/></p>
                <p><strong>Phone:</strong> <c:out value="${advisor.phonenumber}"/></p>
                <p><strong>Qualification:</strong> <c:out value="${advisor.qualification}"/></p>
                <p><strong>Experience:</strong> <c:out value="${advisor.yearsofexperience}"/> years</p>

                <div id="more-info-${advisor.id}" class="more-info">
                    <p><strong>Specialization:</strong> <c:out value="${advisor.specialization}"/></p>
                    <p><strong>Office Address:</strong> <c:out value="${advisor.officeaddress}"/></p>
                    <p><strong>City:</strong> <c:out value="${advisor.city}"/></p>
                    <p><strong>State:</strong> <c:out value="${advisor.state}"/></p>
                    <p><strong>Postal Code:</strong> <c:out value="${advisor.postalcode}"/></p>
                    <p><strong>Bio:</strong> <c:out value="${advisor.bio}"/></p>
                </div>

                <button id="view-more-btn-${advisor.id}" class="view-more-btn"
                    onclick="toggleCounsellorDetails(${advisor.id})">View More</button>
            </div>

            <div class="card-footer">
                <form method="post" action="deleteAdvisor">
                    <input type="hidden" name="advisorId" value="${advisor.id}">
                    <button type="submit">Delete</button>
                </form>
                
                <form method="get" action="editAdvisor">
                    <input type="hidden" name="advisorId" value="${advisor.id}">
                    <button type="submit">Edit</button>
                </form>
            </div>
        </div>
    </c:forEach>
</div>

<div id="noResults" class="no-results">No results found.</div>

<%@ include file="components/footer.jsp"%>
</body>
</html>
