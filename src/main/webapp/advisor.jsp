<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Counsellors</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
            font-size: 2.5em;
            font-weight: 700;
            margin: 40px 0;
        }

        /* Card Container */
        .counsellor-card {
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 300px;
            margin: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            min-height: 450px; /* Increased height for additional details */
        }

        .counsellor-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
        }

        .card-header {
            background-color: #007bff;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .card-content {
            padding: 20px;
            font-size: 16px;
            color: #555;
            line-height: 1.6;
            flex-grow: 1; /* Ensures content takes up remaining space */
            margin-bottom: 13px;
        }

        .card-content p {
            margin-bottom: 12px;
            display: flex;
            align-items: center;
        }

        .card-content i {
            margin-right: 10px;
            font-size: 18px;
            color: #007bff;
        }

        .card-footer {
            background-color: #f9f9f9;
            text-align: center;
            padding: 15px;
        }

        .card-footer a {
            text-decoration: none;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border-radius: 8px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .card-footer a:hover {
            background-color: #218838;
        }

        /* Flexbox Layout */
        .cards-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }

        @media (max-width: 1024px) {
            .counsellor-card {
                width: 45%; /* Two cards per row on medium screens */
            }
        }

        @media (max-width: 768px) {
            .counsellor-card {
                width: 48%; /* Two cards per row on smaller screens */
            }
        }

        @media (max-width: 480px) {
            .counsellor-card {
                width: 100%; /* One card per row on extra small screens */
            }
        }

    </style>
</head>
<body>

    <%@ include file="components/usernavbar.jsp"%>

    <h1>Counsellors List</h1>

    <div class="cards-container">
        <c:forEach items="${advisorlist}" var="advisor">
            <div class="counsellor-card">
                <div class="card-header">
                    ${advisor.firstname} ${advisor.lastname}
                </div>
                <div class="card-content">
                    <p><i class="fas fa-envelope"></i> Email: ${advisor.email}</p>
                    <p><i class="fas fa-phone"></i> Phone: ${advisor.phonenumber}</p>
                    <p><i class="fas fa-calendar-alt"></i> Date of Birth: ${advisor.dateofbirth}</p>
                    <p><i class="fas fa-graduation-cap"></i> Qualification: ${advisor.qualification}</p>
                    <p><i class="fas fa-briefcase"></i> Specialization: ${advisor.specialization}</p>
                    <p><i class="fas fa-trophy"></i> Years of Experience: ${advisor.yearsofexperience}</p>
                    <p><i class="fas fa-university"></i> Bar Association: ${advisor.barassociationmembership}</p>
                    <p><i class="fas fa-map-marker-alt"></i> Office: ${advisor.officeaddress}, ${advisor.city}, ${advisor.state}, ${advisor.postalcode}</p>
                    <p><i class="fas fa-info-circle"></i> Bio: ${advisor.bio}</p>
                </div>
                <div class="card-footer">
                    <a href="mailto:${advisor.email}">Contact Advisor</a>
                </div>
            </div>
        </c:forEach>
    </div>

    <%@ include file="components/footer.jsp"%>

</body>
</html>
