<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JFSD Domestic Violence Project</title>
    <link rel="stylesheet" href="components/adminnavbar.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
    body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}
.adminlogo-header {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 10px 20px;
    background-color: #333;
    color: white;
    font-size: 24px;
    font-weight: bold;
    border-radius: 8px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    animation: fadeIn 3s ease-in-out;
}

.adminlogo-header img {
    width: 50px;
    height: 50px;
    margin-right: 10px;
    animation: fadeIn 3s ease-in-out;
}

@keyframes fadeIn {
	from  {
		opacity:0;
	}
	to {
		opacity:1;
	}
}

.adminlogo-header h1 {
    font-size: 30px;
}

.adminnavbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #333;
	padding: 14px 20px;
}

.adminnavbar a {
	color: white;
	text-decoration: none;
	padding: 12px 20px;
	text-align: center;
}

.adminnavbar a:hover {
	background-color: #575757;
}

.adminnavbar .logo {
	font-size: 20px;
	font-weight: bold;
}

.adminnavbar-links {
	display: flex;
	gap: 20px;
}

/* Mobile responsiveness */
@media ( max-width : 768px) {
	.navbar {
		flex-direction: column;
		align-items: flex-start;
	}
	.navbar-links {
		flex-direction: column;
		width: 100%;
	}
	.navbar-links a {
		width: 100%;
		text-align: left;
		padding: 12px 20px;
	}
}
    
    
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="adminnavbar">
        <div class="adminlogo-header">
        	<img src="img/domestic.png" alt="logo" />
            <a href="/adminhome">SafeHaven Foundation</a>
        </div>
        <div class="adminnavbar-links">
            <a href="/advisorhome"><i class="fas fa-home"></i>Home</a>
            <a href="/advisorresources">Resources</a>
            <a href="/advisorprofile">My Profile</a>
            <a href="/"><i class="fas fa-sign-out-alt"></i>Logout</a>
        </div>
    </div>

</body>
</html>
