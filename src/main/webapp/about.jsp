<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Page</title>
<link rel="stylesheet" href="css/about.css" />
</head>
<body>
<%@ include file="components/navbar.jsp" %>

	<h1 style="text-align: center;">Our Story</h1>
	<div class="about-container">
	
		<div class="stories-container">
    		<div class="stories-content">
        		<p>We are a team of KL University designed to create a Website on stopping domestic violence and providing awareness to all the people and youngsters</p>
        		<p>We thought that it would be a great opportunity to eradicate domestic violence & promoting social awareness and doing justice for the affected people.</p>
        		<p>Our mission began when we realized how many people in our community struggle to access support. This platform offers reliable information, resources, and hope for survivors and supporters alike. Through partnerships and educational tools, we aim to create a safe, empowering space that inspires action and raises awareness. Though we’re students, our dedication to this cause is strong, and we’re excited to make a lasting impact.</p>    
    		</div>    
    		<div class="image-content">
        		<img src="https://globalpromotionalsales.com/media/catalog/product/cache/597609b6de45ae722eb8235cf40e5bd6/2/6/2633.png" alt=""/>
    		</div>
		</div>
		
		<div class="core-values-section">
    		<h2>Our Core Values</h2>
    		<div class="core-values-container">
        		<div class="core-value">
            		<h3>Empathy</h3>
            		<p>We listen and understand the experiences of those affected by domestic violence, offering compassion and support without judgment.</p>
        		</div>
        		<div class="core-value">
            		<h3>Respect</h3>
            		<p>We treat everyone with dignity, valuing their unique experiences and perspectives while fostering an inclusive environment.</p>
        		</div>
        		<div class="core-value">
            		<h3>Confidentiality</h3>
            		<p>We protect the privacy of survivors, ensuring that their information is kept safe and secure throughout the process.</p>
        		</div>
        		<div class="core-value">
            		<h3>Empowerment</h3>
            		<p>We provide survivors with the resources, knowledge, and support to regain control of their lives and make informed decisions.</p>
        		</div>
        		<div class="core-value">
            		<h3>Integrity</h3>
            		<p>We uphold the highest ethical standards in our work, ensuring that our actions are always aligned with our mission to support survivors.</p>
        		</div>
    		</div>
		</div>
		
		<div class="what-we-do-section">
    		<h2>What We Do</h2>
    		<div class="services-container">
        		<div class="service-item">
            		<div class="icon">
                	<img src="https://media.istockphoto.com/id/1681105205/photo/therapy-client-listens-to-therapist-discuss-coping-strategy.jpg?s=612x612&w=0&k=20&c=ON0i142fwnwNiNlZsgGf6a4AfGM030jJ-CAEL7pS5X8=" alt="Counseling Icon" />
            	</div>
            	<div class="service-info">
                	<h3>Counseling and Emotional Support</h3>
                	<p>We provide a safe, compassionate space for survivors to share their experiences and receive professional counseling to heal and rebuild their lives.</p>
            	</div>
        	</div>
        	<div class="service-item">
            	<div class="icon">
                	<img src="data:image/jpeg;base64,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" alt="Legal Assistance Icon" />
            	</div>
            	<div class="service-info">
                	<h3>Legal Assistance</h3>
                	<p>Our team offers legal guidance and support to help survivors navigate through legal processes, ensuring they know their rights and options.</p>
            	</div>
       		 </div>
        	<div class="service-item">
            	<div class="icon">
                	<img src="https://www.squareyards.com/blog/wp-content/uploads/2023/04/Shelter-Home.jpg" alt="Shelter Icon" />
            	</div>
            	<div class="service-info">
                	<h3>Safe Housing and Shelter Services</h3>
                	<p>We offer temporary safe housing and shelter options for survivors to escape dangerous environments and start fresh with safety and security.</p>
            	</div>
        	</div>
        	<div class="service-item">
            	<div class="icon">
                	<img src="https://www.shutterstock.com/image-vector/vector-illustration-education-skill-building-260nw-2258887113.jpg" alt="Job Training Icon" />
            	</div>
            	<div class="service-info">
                	<h3>Job Training and Skill-Building Programs</h3>
                	<p>We equip survivors with the skills and training needed to secure stable employment and gain financial independence through various job training programs.</p>
            	</div>
        	</div>
        	<div class="service-item">
            	<div class="icon">
            	    <img src="https://marketplace.canva.com/EADao9BEnF8/1/0/1131w/canva-violet-circles-domestic-violence-awareness-poster-k_l0Ns3dGvM.jpg" alt="Workshops Icon" />
            	</div>
            	<div class="service-info">
                	<h3>Awareness and Prevention Workshops</h3>
                	<p>We conduct workshops and awareness campaigns to educate the community, reduce stigma, and prevent domestic violence through knowledge and empowerment.</p>
            	</div>
        	</div>
    	</div>
	</div>
	<div class="meet-our-team-section">
    <h2>Meet Our Team</h2>
    <div class="team-container">
        <div class="team-member">
            <div class="member-photo">
                <img src="img/DHANUSH.jpg" alt="Founder Name" />
            </div>
            <div class="member-info">
                <h3>G VENKATA NAGA DHANUSH</h3>
                <p>Program Manager</p>
            	<p>Dhanush specializes in program development and community outreach. He is committed to creating effective programs that serve the needs of survivors.</p>
            </div>
        </div>
        
        <div class="team-member">
            <div class="member-photo">
                <img src="img/sai.jpg" alt="Counselor Name" />
            </div>
            <div class="member-info">
                <h3>KURAPATI SAI KUMAR</h3>
                <p>Team Lead</p>
            	<p>Kurapati Sai Kumar has interest in experience in social work and domestic violence advocacy. His passion for helping others drives the mission of our organization.</p> 
            </div>
        </div>

        <div class="team-member">
            <div class="member-photo">
                <img src="img/vinay.jpg" alt="Advocate Name" />
            </div>
            <div class="member-info">
                <h3>VINAY KRANTH</h3>
                <p>Program Coordinator</p>
            	<p>Vinay specializes in crisis intervention and community outreach. he works closely with survivors to provide resources and support tailored to their needs.    
            </div>
        </div>

    </div>
</div>
		
		
	</div>
	
	
<%@ include file="components/footer.jsp" %>
</body>
</html>