<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Users</title>
    <link rel="stylesheet" href="css/viewallusers.css" />
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
    <h3 align="center">View All Users</h3>
    <h4 align="right">
        Total Users: 
        <c:out value="${count}"></c:out>
    </h4>

    <div class="search-container">
        <input type="text" id="searchInput" onkeyup="searchUsers()" placeholder="Search users...">
    </div>

    <table id="usersTable" align="center" border="2" class="table table-striped">
        <tr>
            <th>ID</th>
            <th>FirstName</th>
            <th>LastName</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Username</th>
            <th>Address</th>
            <th>Contact</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${userslist}" var="user">
            <tr>
                <td><c:out value="${user.id}"></c:out></td>
                <td><c:out value="${user.firstname}"></c:out></td>
                <td><c:out value="${user.lastname}"></c:out></td>
                <td><c:out value="${user.gender}"></c:out></td>
                <td><c:out value="${user.email}"></c:out></td>
                <td><c:out value="${user.username}"></c:out></td>
                <td><c:out value="${user.address}"></c:out></td>
                <td><c:out value="${user.contact}"></c:out></td>
                <td>
                    <div class="action-buttons">
                        <a href="userupdate?id=${user.id}" class="edit-btn">Edit</a>
                        <!--<a href="" class="delete-btn" onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>-->
                    	<a href='<c:url value="userdelete?id=${user.id}" />' class="delete-btn">Delete</a>
                    	
                    </div>
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
