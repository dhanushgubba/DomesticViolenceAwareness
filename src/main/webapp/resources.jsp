<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resources Page</title>
<link rel="stylesheet" href="css/resources.css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet">
</head>
<body>
	<%@ include file="components/navbar.jsp"%>
	<div class="resources-container">
		<!-- Support Information Section -->
		<div class="resources-section">
			<h3>
				<i class="fas fa-hand-holding-heart"></i> Support Information
			</h3>
			<div class="resources-items">
				<div class="resource-item">
					<i class="fas fa-gavel"></i>
					<h4>Legal Aid</h4>
					<p>Access free legal consultation and assistance for domestic
						violence-related cases.</p>
					<a href="login.jsp" target="_blank" class="resource-button">Get Legal Help</a>
				</div>
				<div class="resource-item">
					<i class="fas fa-home"></i>
					<h4>Shelter Services</h4>
					<p>Confidential and safe housing for individuals fleeing
						domestic violence.</p>
				    <a href="login.jsp" target="_blank" class="resource-button">Get Shelter Services</a>
				</div>
				<div class="resource-item">
					<i class="fas fa-comments"></i>
					<h4>Counseling & Therapy</h4>
					<p>Supportive emotional and psychological services for
						survivors to heal from trauma.</p>
					<a href="login.jsp" target="_blank" class="resource-button">Get Counselling</a>
				</div>
			</div>
		</div>

		<!-- Educational Material Section -->
		<div class="resources-section">
			<h3>
				<i class="fas fa-book-open"></i> Educational Material
			</h3>
			<div class="resources-items">
				<div class="resource-item">
					<i class="fas fa-book"></i>
					<h4>Domestic Violence Awareness Guide</h4>
					<p>A comprehensive guide to understanding and recognizing signs
						of domestic violence.</p>
				</div>
				<div class="resource-item">
					<i class="fas fa-shield-alt"></i>
					<h4>Prevention Tips</h4>
					<p>Effective steps to prevent domestic violence and promote
						healthy relationships.</p>
				</div>
				<div class="resource-item">
					<i class="fas fa-video"></i>
					<h4>Video Series</h4>
					<p>Educational videos about the impacts of domestic violence
						and supporting victims.</p>
				</div>
			</div>
		</div>

		<!-- External Resources Section -->
		<div class="resources-section">
			<h3>
				<i class="fas fa-external-link-alt"></i> External Resources
			</h3>
			<ul>
				<li><a href="https://www.thehotline.org/" target="_blank"><i
						class="fas fa-phone-alt"></i> National Domestic Violence Hotline</a></li>
				<li><a href="https://www.safehorizon.org/" target="_blank"><i
						class="fas fa-map-marker-alt"></i> Local Shelters</a></li>
				<li><a
					href="https://www.domesticshelters.org/en-in/domestic-abuse-help-in-india"
					target="_blank"><i class="fas fa-building"></i> Government
						Support</a></li>
			</ul>
		</div>
	</div>
	<%@ include file="components/footer.jsp"%>
</body>
</html>