<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Counsellors</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f7fa;
	margin: 0;
	padding: 0;
}

/* Card container styles */
.counsellor-card {
	border: 1px solid #ddd;
	margin: 15px;
	padding: 20px;
	border-radius: 8px;
	width: 22%;
	display: inline-block;
	vertical-align: top;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	background-color: #ffffff;
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

/* Card hover effect */
.counsellor-card:hover {
	transform: translateY(-5px);
	box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
}

.card-header {
	font-size: 18px;
	font-weight: bold;
	color: #333;
	text-align: center;
	margin-bottom: 10px;
	text-transform: capitalize;
}

.card-content {
	margin-top: 15px;
	font-size: 14px;
	color: #555;
	line-height: 1.6;
}

.card-content p {
	margin-bottom: 8px;
}

.card-footer {
	text-align: center;
	margin-top: 15px;
	
}

.card-footer a {
	text-decoration: none;
	padding: 8px 15px;
	background-color: #007bff;
	color: white;
	border-radius: 5px;
	margin: 0 5px;
	font-size: 17px;
}

.card-footer a:hover {
	background-color: #0056b3;
}

/* Flexbox Layout */
.cards-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	padding: 20px;
}

/* Responsive Design */
@media ( max-width : 768px) {
	.counsellor-card {
		width: 48%; /* Two cards per row */
	}
}

@media ( max-width : 480px) {
	.counsellor-card {
		width: 100%; /* One card per row on smaller screens */
	}
}

h4 {
	text-align: right;
	margin: 20px 30px;
	font-size: 16px;
	color: #555;
}

.more-info {
	display: none; /* Initially hidden */
}

.view-more-btn {
	cursor: pointer;
	color: #007bff;
	background: none;
	border: none;
	font-size: 14px;
	font-weight: bold;
	text-decoration: underline;
}

.search-container {
	text-align: center;
	margin: 20px 0;
}

.search-container input {
	padding: 10px;
	width: 80%;
	font-size: 16px;
	border: 1px solid #ddd;
	border-radius: 5px;
	border: 3px solid black;
}

h3 {
	text-align: center;
	margin-top: 40px;
	color: #333;
}

.no-results {
	text-align: center;
	font-size: 16px;
	color: #777;
	display: none;
	margin: 20px 0;
}
form {
    display: inline-block;
    margin: 10px 0;
}

form button {
    background-color: #dc3545;
    color: white;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

form button:hover {
    background-color: #c82333;
}

form button:focus {
    outline: none;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
}

form button + button {
    margin-left: 10px;
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
        function searchCounsellors() {
            let input = document.getElementById("searchInput").value.toUpperCase();
            let cards = document.getElementsByClassName("counsellor-card");
            let noResults = document.getElementById("noResults");
            let visibleCount = 0;

            for (let i = 0; i < cards.length; i++) {
                let card = cards[i];
                let cardText = card.textContent || card.innerText;

                if (cardText.toUpperCase().indexOf(input) > -1) {
                    card.style.display = "inline-block"; // Show matching cards
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
	<%@ include file="components/adminnavbar.jsp"%>

	<h3>View All Counsellors</h3>

	<h4>
		Total Counsellors:
		<c:out value="${count}"></c:out>
	</h4>

	<div class="search-container">
		<input type="text" id="searchInput" onkeyup="searchCounsellors()"
			placeholder="Search counsellors...">
	</div>

	<div class="cards-container">
		<c:forEach items="${counsellorslist}" var="counsellor">
			<div class="counsellor-card">
				<div class="card-header">
					<c:out value="${counsellor.name}"></c:out>
				</div>
				<div class="card-content">
					<p>
						<strong>Gender: </strong>
						<c:out value="${counsellor.gender}"></c:out>
					</p>
					<p>
						<strong>DOB: </strong>
						<c:out value="${counsellor.dob}"></c:out>
					</p>
					<p>
						<strong>Email: </strong>
						<c:out value="${counsellor.email}"></c:out>
					</p>
					<p>
						<strong>Phone: </strong>
						<c:out value="${counsellor.phone}"></c:out>
					</p>
					<p>
						<strong>City: </strong>
						<c:out value="${counsellor.city}"></c:out>
					</p>
					<p>
						<strong>State: </strong>
						<c:out value="${counsellor.state}"></c:out>
					</p>
					<p>
						<strong>Postal Code: </strong>
						<c:out value="${counsellor.postalcode}"></c:out>
					</p>
					<p>
						<strong>Experience: </strong>
						<c:out value="${counsellor.experience}"></c:out>
					</p>

					<!-- View More Button and Additional Info (Initially Hidden) -->
					<button id="view-more-btn-${counsellor.id}" class="view-more-btn"
						onclick="toggleCounsellorDetails(${counsellor.id})">View
						More</button>
					<div id="more-info-${counsellor.id}" class="more-info">
						<p>
							<strong>Address: </strong>
							<c:out value="${counsellor.address}"></c:out>
						</p>
						<p>
							<strong>Qualification: </strong>
							<c:out value="${counsellor.qualification}"></c:out>
						</p>
						<p>
							<strong>Specialization: </strong>
							<c:out value="${counsellor.specialization}"></c:out>
						</p>
						<p>
							<strong>Certification: </strong>
							<c:out value="${counsellor.certification}"></c:out>
						</p>
						<p>
							<strong>License No: </strong>
							<c:out value="${counsellor.licenceno}"></c:out>
						</p>
						<p>
							<strong>Languages: </strong>
							<c:out value="${counsellor.languages}"></c:out>
						</p>
						<p>
							<strong>Availability: </strong>
							<c:out value="${counsellor.availability}"></c:out>
						</p>
						<p>
							<strong>Status: </strong>
							<c:out value="${counsellor.status}"></c:out>
						</p>
						<p>
							<strong>HCases: </strong>
							<c:out value="${counsellor.hcases}"></c:out>
						</p>
						<p>
							<strong>Counselling Mode: </strong>
							<c:out value="${counsellor.counsellingmode}"></c:out>
						</p>
						<p>
							<strong>Therapy Issues: </strong>
							<c:out value="${counsellor.therapyissues}"></c:out>
						</p>
					</div>
				</div>
				<div class="card-footer">
					<a href="/editcounsellor/${counsellor.id}">Edit</a>
					
					<!-- For deleting counsellor 
					<a href="${pageContext.request.contextPath}/deletecounsellor/${counsellor.id}" class="btn btn-danger">Delete</a>
                   	-->

					<form
						action="${pageContext.request.contextPath}/deletecounsellor/${counsellor.id}"
						method="post">
						<button type="submit" class="btn btn-danger">Delete</button>
					</form>

				</div>
			</div>
		</c:forEach>
	</div>

	<%@ include file="components/footer.jsp"%>
</body>
</html>
