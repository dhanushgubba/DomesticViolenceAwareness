<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Users</title>
    <link rel="stylesheet" href="css/viewallshelters.css" />
    <style>
    	
        .search-container {
            text-align: center;
            margin: 20px 0;
        }

        .search-container input {
            padding: 10px;
            width: 75%;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
            border: 3px solid black;
        }

        .no-results {
            text-align: center;
            font-size: 16px;
            color: #777;
            display: none;
            margin: 20px 0;
        }
      	.action-links-container {
    display: flex; /* Use flexbox for horizontal alignment */
    gap: 10px; /* Space between links */
    align-items: center; /* Vertical alignment */
    justify-content: start; /* Align links to the start (left) */
    margin-top: 10px; /* Optional: Add space above the container */
}

.action-link {
    text-decoration: none;
    padding: 5px 10px;
    border-radius: 5px;
    font-weight: bold;
    color: white;
    font-size: 14px;
   
}

.delete-link {
    background-color: red;
    border: 1px solid darkred;
}

.update-link {
    background-color: green;
    border: 1px solid darkgreen;
}

.action-link:hover {
    opacity: 0.8;
    cursor: pointer;
}
        
    </style>
    <script>
        function searchUsers() {
            let input = document.getElementById("searchInput").value.toUpperCase();
            let table = document.getElementById("usersTable");
            let rows = table.getElementsByTagName("tr");
            let noResults = document.getElementById("noResults");
            let visibleCount = 0;

            // Start from row index 1 to skip the table headers
            for (let i = 1; i < rows.length; i++) {
                let row = rows[i];
                let cells = row.getElementsByTagName("td");
                let matchFound = false;

                // Check all cells in the row for a match
                for (let j = 0; j < cells.length; j++) {
                    let cell = cells[j];
                    if (cell && cell.innerText.toUpperCase().indexOf(input) > -1) {
                        matchFound = true;
                        break;
                    }
                }

                if (matchFound) {
                    row.style.display = ""; // Show matching rows
                    visibleCount++;
                } else {
                    row.style.display = "none"; // Hide non-matching rows
                }
            }

            // Show or hide the "No results" message
            noResults.style.display = visibleCount === 0 ? "block" : "none";
        }
    </script>
</head>
<body>
    <%@ include file="components/adminnavbar.jsp"%>
    <h3 align="center">View All Workshops</h3>

    <div class="search-container">
        <input type="text" id="searchInput" onkeyup="searchUsers()" placeholder="Search users...">
    </div>

    <table id="usersTable" align="center" border="2" class="table table-striped">
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Description</th>
            <th>Date & Time</th>
            <th>Venue</th>
            <th>Mode</th>
            <th>Contact</th>
            <th>Speaker</th>
            <th>Resources</th>
        	<th>Image</th>
        	<th>Action</th>
        </tr>
        <c:forEach items="${workshops}" var="workshop">
        	<tr>
        		<td><c:out value="${workshop.id }"></c:out></td>
        		<td><c:out value="${workshop.title}"></c:out></td>
        		<td><c:out value="${workshop.description}"></c:out></td>
        		<td><c:out value="${workshop.datetime}"></c:out></td>
        		<td><c:out value="${workshop.venue}"></c:out></td>
        		<td><c:out value="${workshop.mode}"></c:out></td>
        		<td><c:out value="${workshop.contact}"></c:out></td>
        		<td><c:out value="${workshop.speaker}"></c:out></td>
        		<td><c:out value="${workshop.resources}"></c:out></td>
        		<td>
        			<img src="displayworkshopimage?id=${workshop.id}" alt="Shelter Image" width="100" height="100" />		
        		</td>
        		<td class="action-links-container">
    				<a href="<c:url value='delete?id=${workshop.id}' />" class="action-link delete-link">Delete</a>
    				<a href="<c:url value='update?id=${workshop.id}' />" class="action-link update-link">Update</a>
				</td>
        		
        	</tr>
        </c:forEach>
    </table>

    <div id="noResults" class="no-results">
        No users found.
    </div>

    <%@ include file="components/footer.jsp"%>
</body>
</html>
