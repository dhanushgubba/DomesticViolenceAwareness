<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About - Domestic Violence Awareness</title>
    <style>
        /* Basic Styles */
body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #ffff;
    line-height: 1.8;
    color: #333;
}

/* Header */
header {
    background-color: #333;
    color: white;
    padding: 20px 0;
    text-align: center;
    font-size: 24px;
}

header h1 {
    margin: 0;
}
h1 {
	text-align:center;
}

/* Navigation */
nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
}

nav ul li {
    margin: 0 20px;
}

nav ul li a {
    color: white;
    text-decoration: none;
    font-size: 18px;
    padding: 8px 15px;
    display: inline-block;
}

nav ul li a:hover {
    text-decoration: underline;
    background-color: #1a73e8;
    border-radius: 4px;
}

/* Main Content Styles */
main {
    padding: 40px 20px;
    max-width: 1200px;
    margin: 0 auto;
    background-color: white;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    margin-top: 30px;
}

/* Section Styles */
section {
    margin-bottom: 40px;
    padding: 20px;
    background-color: #fafafa;
    border-radius: 8px;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

section h2 {
    color: #1a73e8;
    font-size: 26px;
    text-align: center;
    width: 100%;
    margin-bottom: 20px;
}

/* Image Styles */
section img {
    max-width: 50%;
    height: auto;
    border-radius: 8px;
    margin-right: 20px;
    object-fit: cover;
    transition: transform 0.3s ease;
}

section img:hover {
    transform: scale(1.05);
}

/* Text Content Styles */
section .intro-text,
section .prevention-text,
section .legal-rights-text,
section .get-help-text {
    flex: 1;
    padding: 20px;
}

section p {
    font-size: 16px;
    line-height: 1.8;
}

/* List Styles */
ul {
    list-style: square inside;
    margin-left: 20px;
}

ul li a {
    color: #1a73e8;
    text-decoration: none;
}

ul li a:hover {
    text-decoration: underline;
}

/* Button Styles */
button {
    background-color: #1a73e8;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #1565c0;
}

/* Footer Styles */
footer {
    text-align: center;
    padding: 20px;
    background-color: #333;
    color: white;
    margin-top: 40px;
}

/* Responsive Design */
@media (max-width: 768px) {
    main {
        padding: 20px;
    }

    section {
        flex-direction: column;
        align-items: flex-start;
        padding: 15px;
    }

    section img {
        max-width: 100%;
        margin-bottom: 20px;
    }

    .intro-text, .prevention-text, .legal-rights-text, .get-help-text {
        flex: 1;
    }

    nav ul {
        flex-direction: column;
    }

    nav ul li {
        margin: 10px 0;
    }

    section h2 {
        font-size: 22px;
    }

    footer {
        font-size: 14px;
    }
}

/* Keyframe Animation for Image Fade In */
@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

section img {
    animation: fadeIn 2s ease-in-out;
}
        
    </style>
</head>
<body>
	
	<%@ include file="components/usernavbar.jsp" %>
    <main>
		<h1>Understanding Domestic Violence</h1>
        <section class="intro">
            
            <img src="img/image1.jpg" alt="Domestic Violence Awareness">
            <div class="intro-text">
                <p>Domestic violence is a pattern of behavior that involves the abuse of power and control in a relationship. It includes physical, emotional, financial, and sexual abuse. It can happen to anyone, regardless of age, gender, or background. Our goal is to provide awareness and resources to help individuals escape violence and seek support.</p>
            </div>
        </section>

		<h1>Preventing Domestic Violence</h1>
        <section class="prevention">   
            <img src="img/image2.jpg" alt="Preventing Domestic Violence">
            <div class="prevention-text">
                <p>Prevention of domestic violence involves recognizing the signs early and seeking help. Some key signs of domestic violence include:</p>
                <ul>
                    <li>Physical harm or threats of harm</li>
                    <li>Verbal abuse, intimidation, or threats</li>
                    <li>Isolation from family and friends</li>
                    <li>Controlling behavior, including financial control</li>
                </ul>
                <p>If you or someone you know is experiencing any form of abuse, it's essential to seek help immediately. There are several resources available for support.</p>
            </div>
        </section>
		
		<h1>Legal Rights and Support</h1>
        <section class="legal-rights">
            
            <img src="img/image3.jpg" alt="Legal Rights">
            <div class="legal-rights-text">
                <p>In many regions, laws exist to protect individuals from domestic violence. Some legal rights include:</p>
                <ul>
                    <li>Right to file a police report</li>
                    <li>Protection orders or restraining orders</li>
                    <li>Access to emergency shelters and legal aid</li>
                    <li>Right to medical care if injured</li>
                </ul>
                <p>If you are in immediate danger, call emergency services or a national helpline.</p>
            </div>
        </section>

		<h1>Where to Get Help</h1>
        <section class="get-help">
            <img src="img/image4.jpg" alt="Getting Help">
            <div class="get-help-text">
                <p>There are many organizations that provide support for victims of domestic violence, offering everything from counseling to legal aid. Below are some examples:</p>
                <ul>
                    <li><a href="https://www.nationaldomesticviolencehotline.org/" target="_blank">National Domestic Violence Hotline</a></li>
                    <li><a href="https://www.thehotline.org/" target="_blank">The Hotline (USA)</a></li>
                    <li><a href="https://www.womensaid.org.uk/" target="_blank">Women's Aid (UK)</a></li>
                </ul>
            </div>
        </section>
    </main>

    <%@ include file="components/footer.jsp" %>
</body>
</html>
