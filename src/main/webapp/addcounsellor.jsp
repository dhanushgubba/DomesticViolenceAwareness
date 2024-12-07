<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Counsellor</title>
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
            width: 90%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid black;
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

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <%@ include file="components/adminnavbar.jsp" %>

    <h3>Add Counsellor</h3>
````<!-- Display the message (success or error) -->
    <div class="form-container">
        <form action="/insertcounsellors" method="post">
        <c:if test="${not empty message}">
        	<div class="message">
				<p>${message}</p>
			</div>
		</c:if>
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Enter full name" required>

            <label for="gender">Gender</label>
            <select id="gender" name="gender" required>
                <option value="" disabled selected>Select gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>

            <label for="dob">Date of Birth</label>
            <input type="date" id="dob" name="dob" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter email address" required>

            <label for="phone">Phone</label>
            <input type="tel" id="phone" name="phone" placeholder="Enter phone number" required>

            <label for="city">City</label>
            <input type="text" id="city" name="city" placeholder="Enter city" required>

            <label for="state">State</label>
            <input type="text" id="state" name="state" placeholder="Enter state" required>

            <label for="postalcode">Postal Code</label>
            <input type="text" id="postalcode" name="postalcode" placeholder="Enter postal code" required>

            <label for="experience">Experience</label>
            <input type="number" id="experience" name="experience" placeholder="Enter years of experience" required>

            <label for="address">Address</label>
            <textarea id="address" name="address" placeholder="Enter full address" rows="3" required></textarea>

            <label for="qualification">Qualification</label>
            <input type="text" id="qualification" name="qualification" placeholder="Enter highest qualification" required>

            <label for="specialization">Specialization</label>
            <input type="text" id="specialization" name="specialization" placeholder="Enter area of specialization" required>

            <label for="certification">Certification</label>
            <input type="text" id="certification" name="certification" placeholder="Enter certification details" required>

            <label for="licenceno">License Number</label>
            <input type="text" id="licenceno" name="licenceno" placeholder="Enter license number" required>

            <label for="languages">Languages Known</label>
            <input type="text" id="languages" name="languages" placeholder="Enter languages (comma-separated)" required>

            <label for="availability">Availability</label>
            <input type="text" id="availability" name="availability" placeholder="Enter availability details" required>

            <label for="status">Status</label>
            <select id="status" name="status" required>
                <option value="" disabled selected>Select status</option>
                <option value="Active">Active</option>
                <option value="Inactive">Inactive</option>
            </select>

            <label for="hcases">Handled Cases</label>
            <input type="number" id="hcases" name="hcases" placeholder="Enter number of handled cases" required>

            <label for="counsellingmode">Counselling Mode</label>
            <input type="text" id="counsellingmode" name="counsellingmode" placeholder="Enter counselling mode (e.g., Online/Offline)" required>

            <label for="therapyissues">Therapy Issues</label>
            <textarea id="therapyissues" name="therapyissues" placeholder="Enter therapy issues (comma-separated)" rows="3" required></textarea>

			<label for="password">Password</label>
			<!-- <input type id="password" name="password" placeholder="Please Enter your password" required />-->
			<input type="password" id="password" name="password" placeholder="Enter Password" required
    pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
    title="Password must be at least 8 characters, include at least one letter, one number, and one special character." />
            <input type="submit" value="Add Counsellor">
        </form>
    </div>

    <a href="/viewallcounsellors" class="back-link">Back to View Counsellors</a>

    <%@ include file="components/footer.jsp" %>
</body>
</html>
