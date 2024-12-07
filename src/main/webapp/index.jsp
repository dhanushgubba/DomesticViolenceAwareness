<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="css/home.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const modal = document.getElementById('donateModal');
            const btn = document.getElementById('donateBtn');
            const span = document.getElementsByClassName('close')[0];

            // Open modal
            btn.onclick = function() {
                modal.style.display = "block";
            };

            // Close modal
            span.onclick = function() {
                modal.style.display = "none";
            };

            // Close modal when clicking outside
            window.onclick = function(event) {
                if (event.target === modal) {
                    modal.style.display = "none";
                }
            };
        });
    </script>
</head>
<body>
    <!-- Include the Navbar -->
    <%@ include file="components/navbar.jsp" %>

    <div class="home-container">
        <!-- Introduction Section -->
        <div class="content-wrapper">
            <div class="intro-content">
                <h1>Welcome to Together Against Domestic Violence</h1>
                <p>Your trusted resource for support, safety, and legal guidance.</p>
                
                <div class="button-container">
					<button class="help-btn" onclick="window.location.href='/about'"> <i class="fa fa-question-circle" style="margin-right: 8px;"></i> Get Help</button>
					<button class="help-btn" id="donateBtn">
    <i class="fa fa-heart" style="margin-right: 8px;"></i> Donate
</button>
				</div>
                
                
            </div>
            <div id="donateModal" class="modal">
                <div class="modal-content">
                    <span class="close">&times;</span>
                    <h2>Your Generosity Can Save Lives</h2>
                    <img class="modal-image" src="img/qrscanner.jpg" alt="Donate Image" />
                    <p class="donate-message">
                        Every donation helps us provide better support, counseling, and advocacy for survivors of domestic violence. Thank you for your kindness!
                    </p>
                </div>
            </div>
            <div class="image-content">
                <img src="img/homeimage.jpg" alt="Support Against Domestic Violence" />
            </div>
        </div>

        <!-- Text Content Section -->
        <div class="text-container">
            <div class="text-header">
                <h1>What is Domestic Violence?</h1>
                <p>
                    Domestic violence refers to abusive behavior in any relationship that is used by one partner to gain or maintain control over another intimate partner. It includes physical, emotional, sexual, economic, and psychological abuse and affects people of all genders, ages, races, and religions.
                </p>
            </div>
            <div class="text-image-content">
                <img src="https://c8.alamy.com/comp/2AHD4C2/domestic-violence-word-concepts-banner-physical-assault-family-abuse-school-bullying-presentation-website-isolated-lettering-typography-idea-wit-2AHD4C2.jpg" alt="Domestic Violence Word Concepts" />
            </div>
        </div>

        <!-- Mission Section -->
        <div class="mission-container">
            <div class="mission-header">
                <h1>Our Mission</h1>
                <p>
                    “Our mission is to create a safe, informed, and supportive environment where individuals affected by domestic violence can find the help they need. Through a gender-responsive approach, we aim to address the specific needs and challenges of survivors, promoting not just safety but equality and justice for all.”
                </p>
            </div>
            <div class="scrolling-image">
                <img src="https://sandiegoleadershipinstitute.com/wp-content/uploads/2018/10/Seven_Steps__Supporting_your_Team_to_Unlock_Their_Confidence.png" alt="Support Team" />
                <img src="https://img.freepik.com/free-photo/teenage-girl-with-praying-peace-hope-dreams-concept_1150-7222.jpg" alt="Hope and Dreams" />
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdTKFS-7KWtNcKZ9zj0D6pQwxj1zZ0BsbdKw&s" alt="Empowerment Image" />
            </div>
        </div>

        <!-- Highlights Section -->
        <div class="highlights-header">
            <h1>Highlights of Recent Initiatives</h1>
        </div>
        <div class="highlights-container">
            <div class="highlights-content">
                <h2>Domestic Violence Awareness Month</h2>
                <p>Join us this October to raise awareness and support survivors. Learn more about our events and how you can participate.</p>
                <img src="https://www.shutterstock.com/image-vector/domestic-violence-awareness-month-logo-260nw-1829479913.jpg" alt="Awareness Month Logo" />
            </div>
            <div class="highlights-content">
                <h2>Youth Education and Empowerment</h2>
                <p>Support young adults to confidently speak up against violence and seek help.</p>
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYLlQk9SVwdPuGE11rTDyoifFMQK7QWy4BWw&s" alt="Youth Empowerment" />
            </div>
            <div class="highlights-content">
                <h2>Spotlight on Law and Policy</h2>
                <p>Break down survivor rights in simple language, covering areas like custody and financial support.</p>
                <img src="https://thumbs.dreamstime.com/b/themis-spotlight-law-concept-justice-45409847.jpg" alt="Law and Policy Spotlight" />
            </div>
            <div class="highlights-content">
                <h2>Survivor Support Hub</h2>
                <p>List available counseling services or partnerships providing free sessions for survivors.</p>
                <img src="https://media.istockphoto.com/id/519749080/photo/help-support-advice-guidance-signpost.jpg?s=612x612&w=0&k=20&c=hXetfeUaFCs0vet3Jxl3iTwtUGv-mtsN-9KiFzfxlMI=" alt="Support Signpost" />
            </div>
        </div>

        <!-- Stories Section -->
        <div class="stories-header">
            <h1>Stories of Hope and Recovery</h1>
        </div>
        <div class="stories-container">
            <div class="stories-content">
                <h2>Sarah’s Story: Reclaiming My Life</h2>
                <p>
                    Sarah endured five years of abuse before reaching out for help. With therapy and support groups, she rebuilt her life. Now, she advocates for other survivors, showing it's never too late to start over.
                </p>
                <h3 style="text-align: right">~ Sarah</h3>
            </div>
            <div class="stories-content">
                <h2>Mark’s Journey: From Victim to Advocate</h2>
                <p>
                    Mark, a male survivor of emotional abuse, struggled in silence due to societal stigma. Attending a support group helped him heal and find his voice. Today, he leads campaigns to raise awareness for male survivors.
                </p>
                <h3 style="text-align: right">~ Mark</h3>
            </div>
            <div class="stories-content">
                <h2>Asha’s Path to Empowerment</h2>
                <p>
                    Asha, who grew up witnessing abuse and entered an abusive marriage, found help through a domestic violence hotline. She rebuilt her life through therapy and now empowers other women as a counselor.
                </p>
                <h3 style="text-align: right">~ Asha</h3>
            </div>
            <div class="stories-content">
                <h2>Maria’s Story: A New Beginning After Abuse</h2>
                <p>
                    Maria, who grew up witnessing abuse and entered an abusive marriage, found help through a domestic violence hotline. She rebuilt her life through therapy and now empowers other women as a counselor.
                </p>
                <h3 style="text-align: right">~ Maria</h3>
            </div>
        </div>
    </div>

    <!-- Include the Footer -->
    <%@ include file="components/footer.jsp" %>
</body>
</html>
