<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JFSD Domestic Violence Project</title>
    <link rel="stylesheet" href="components/usernavbar.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            top: 100%; /* Positions dropdown below the parent */
            left: 0;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Styling for the profile icon */
        .profile-icon {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-left: 10px;
            cursor: pointer;
            font-size: 18px;
        }

        .profile-icon img {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 5px;
        }

        .profile-icon:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo-header">
            <img src="img/logo.jpg" alt="logo"/>
            <a href="/userhome">SafeHaven Foundation</a>
        </div>
        <div class="navbar-links">
            <a href="/userhome"><i class="fas fa-home"></i>Home</a>
            <a href="/userabout">About</a>
            <a href="/userresources">Resources</a>
            <a href="/usersupport">Support Services</a>
            <a href="/userforum">Community Forum</a>
            <div class="dropdown">
                <a href="javascript:void(0)">Request <i class="fas fa-caret-down"></i></a>
                <div class="dropdown-content">
                    <a href="/userrequest">Submit Request</a>
                    <a href="/viewuserrequest">View Requests</a>
                    <a href="/viewcommunity">View Community</a>
                    <a href="/viewshelter">Book Shelters</a>
                    <a href="/viewmybooking">View My Booking</a>
                </div>
            </div>
            <a href="/userlogout"><i class="fas fa-sign-out-alt"></i>Logout</a>
            <!-- Profile Icon -->
            <a href="/userprofile" class="profile-icon">
                <img src="img/profileicon.jpg" alt="" />
            </a>
        </div>
    </div>

</body>
</html>
