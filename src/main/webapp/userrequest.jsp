<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submit a Request Form</title>
<link rel="stylesheet" href="css/userrequest.css">
<!-- Link your CSS here -->
</head>
<body>
	<%@ include file="components/usernavbar.jsp"%>
	<div class="request-container">
		<h1>Submit a Request for Assistance</h1>

		<form action="/insertrequest" method="post">
			<!-- Full Name -->
			<label for="fullName">Full Name (Required):</label> <input
				type="text" id="fullName" name="name" placeholder="Your full name"
				required> <label for="username">Enter Your
				Registered Username *</label> <input type="text" id="username"
				name="username" placeholder="Your Registered username" required />

			<!-- Contact Information -->
			<label for="phone">Phone Number (Required):</label> <input
				type="text" id="phone" name="phone" placeholder="Your phone number"
				required> <label for="email">Email Address
				(Required):</label> <input type="email" id="email" name="email"
				placeholder="Your email address" required> <label>Preferred
				Contact Method:</label> <input type="radio" name="contact" value="phone"
				required />Phone <input type="radio" name="contact" value="email"
				required />Email <input type="radio" name="contact" value="text"
				required />Text

			<!-- Location -->
			<label for="location">Location (Optional):</label> <input type="text"
				id="location" name="location" placeholder="City, State">

			<!-- Urgency Level -->
			<label for="urgency">Urgency Level:</label> <select id="urgency"
				name="urgency">
				<option value="Immediate Help Needed">Immediate Help Needed</option>
				<option value="Guidance Only">Guidance Only</option>
				<option value="Just Looking for Information">Just Looking
					for Information</option>
			</select>

			<!-- Relationship to Victim -->
			<label>Relationship to Victim:</label>
			<div>
				<input type="radio" id="self" name="relationship" value="Self"
					checked>Self <input type="radio" id="familyMember"
					name="relationship" value="Family Member">Family Member <input
					type="radio" id="friend" name="relationship" value="Friend">Friend
				<input type="radio" id="neighbor" name="relationship"
					value="Neighbor">Neighbor <input type="radio" id="other"
					name="relationship" value="Other">Other
			</div>

			<!-- Nature of the Case -->
			<label>Nature of the Case:</label>
			<div>
				<input type="checkbox" id="physicalAbuse" name="nature"
					value="Physical Abuse">Physical Abuse <input
					type="checkbox" id="emotionalAbuse" name="nature"
					value="Emotional Abuse">Emotional Abuse <input
					type="checkbox" id="financialAbuse" name="nature"
					value="Financial Abuse">Financial Abuse <input
					type="checkbox" id="sexualAbuse" name="nature" value="Sexual Abuse">Sexual
				Abuse <input type="checkbox" id="stalking" name="nature"
					value="Stalking">Stalking <input type="checkbox"
					id="threats" name="nature" value="Threats">Threats
			</div>

			<!-- Description of the Situation -->
			<label for="description">Description of the Situation:</label>
			<textarea id="description" name="description" rows="4"
				placeholder="Briefly describe your situation"></textarea>

			<!-- Preferred Support Services -->
			<label>Preferred Support Services (Optional):</label>
			<div>
				<input type="checkbox" id="counseling" name="support"
					value="Counseling">Counselling <input type="checkbox"
					id="legalAdvice" name="support" value="Legal Advice">Legal
				Advice <input type="checkbox" id="shelter" name="support"
					value="Shelter Information">Shelter Information <input
					type="checkbox" id="medical" name="support" value="Medical Support">Medical
				Support
			</div>

			<!-- Confidentiality Agreement -->
			<label for="confidentiality"> <input type="checkbox"
				id="confidentiality" name="confidential" required> I
				understand that my information will be kept confidential and used
				only to provide the requested assistance.
			</label>

			<!-- Submit Button -->
			<button type="submit">Submit Request</button>
		</form>

		<c:if test="${not empty message}">
			<div class="error">${message}</div>
		</c:if>

	</div>

	<%@ include file="components/footer.jsp"%>
</body>
</html>
