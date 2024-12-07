<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Counsellor</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/components/adminnavbar.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/components/footer.css" />
    
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        .form-container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-container label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        .form-container input, 
        .form-container select, 
        .form-container textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }

        .form-container input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .form-container input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .form-container textarea {
            resize: none;
        }
    </style>
</head>
<body>
    <%@ include file="components/adminnavbar.jsp" %>
	
    <h3>Edit Counsellor</h3>
    <div class="form-container">
        <form action="/updatecounsellor/${counsellor.id}" method="post">
            <!-- Hidden field to store the counsellor ID -->
            <input type="hidden" name="id" value="${counsellor.id}">

            <label for="name">Name</label>
            <input type="text" id="name" name="name" value="${counsellor.name}" required>

            <label for="gender">Gender</label>
            <select id="gender" name="gender" required>
                <option value="Male" ${counsellor.gender == 'Male' ? 'selected' : ''}>Male</option>
                <option value="Female" ${counsellor.gender == 'Female' ? 'selected' : ''}>Female</option>
                <option value="Other" ${counsellor.gender == 'Other' ? 'selected' : ''}>Other</option>
            </select>

            <label for="dob">Date of Birth</label>
            <input type="date" id="dob" name="dob" value="${counsellor.dob}" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="${counsellor.email}" required>

            <label for="phone">Phone</label>
            <input type="tel" id="phone" name="phone" value="${counsellor.phone}" required>

            <label for="city">City</label>
            <input type="text" id="city" name="city" value="${counsellor.city}" required>

            <label for="state">State</label>
            <input type="text" id="state" name="state" value="${counsellor.state}" required>

            <label for="postalcode">Postal Code</label>
            <input type="text" id="postalcode" name="postalcode" value="${counsellor.postalcode}" required>

            <label for="experience">Experience</label>
            <input type="number" id="experience" name="experience" value="${counsellor.experience}" required>

            <label for="address">Address</label>
            <textarea id="address" name="address" rows="3" required>${counsellor.address}</textarea>

            <label for="qualification">Qualification</label>
            <input type="text" id="qualification" name="qualification" value="${counsellor.qualification}" required>

            <label for="specialization">Specialization</label>
            <input type="text" id="specialization" name="specialization" value="${counsellor.specialization}" required>

            <label for="certification">Certification</label>
            <input type="text" id="certification" name="certification" value="${counsellor.certification}" required>

            <label for="licenceno">License Number</label>
            <input type="text" id="licenceno" name="licenceno" value="${counsellor.licenceno}" required>

            <label for="languages">Languages Known</label>
            <input type="text" id="languages" name="languages" value="${counsellor.languages}" required>

            <label for="availability">Availability</label>
            <input type="text" id="availability" name="availability" value="${counsellor.availability}" required>

            <label for="status">Status</label>
            <select id="status" name="status" required>
                <option value="Active" ${counsellor.status == 'Active' ? 'selected' : ''}>Active</option>
                <option value="Inactive" ${counsellor.status == 'Inactive' ? 'selected' : ''}>Inactive</option>
            </select>

            <label for="hcases">Handled Cases</label>
            <input type="number" id="hcases" name="hcases" value="${counsellor.hcases}" required>

            <label for="counsellingmode">Counselling Mode</label>
            <input type="text" id="counsellingmode" name="counsellingmode" value="${counsellor.counsellingmode}" required>

            <label for="therapyissues">Therapy Issues</label>
            <textarea id="therapyissues" name="therapyissues" rows="3" required>${counsellor.therapyissues}</textarea>

            <input type="submit" value="Update Counsellor">
        </form>
        
        <form action="/deletecounsellor/${counsellor.id}" method="post" onsubmit="return confirm('Are you sure you want to delete this counsellor?');">
            <input type="hidden" name="id" value="${counsellor.id}">
            <input type="submit" class="delete-btn" value="Delete Counsellor">
        </form>
    </div>

    <%@ include file="components/footer.jsp" %>
</body>
</html>
