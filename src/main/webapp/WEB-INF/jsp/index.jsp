<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Reset Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        /* Navbar */
        .custom-navbar {
            background-color: #d9534f !important;
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            z-index: 1000;
        }

        .navbar-links {
            display: flex;
            gap: 20px;
        }

        .navbar-links a {
            color: white !important;
            text-decoration: none;
            font-size: 18px;
            padding: 10px;
            transition: color 0.3s ease;
        }

        .navbar-links a:hover {
            color: #ffeb3b;
        }

        /* Register & Signin Links */
        .auth-links a {
            color: white !important;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            margin-right: 15px;
            transition: color 0.3s ease;
        }

        .auth-links a:hover {
            color: #007bff !important;
        }

        /* Logo */
        .logo {
            height: 60px;
            margin-right: 20px;
        }

        /* Dark Mode */
        .dark-mode {
            background-color: black;
            color: white;
        }

        /* Dark Mode Toggle Button */
        .dark-mode-toggle {
            background: none;
            border: none;
            color: white;
            font-size: 20px;
            cursor: pointer;
            margin-left: 15px;
        }

        /* Container */
        .container {
            text-align: center;
            margin-top: 80px;
            width: 100%;
        }

        /* Search Form */
        .search-form {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
        }

        .search-box {
            width: 80%;
            max-width: 500px;
            height: 50px;
            padding: 0 10px;
            font-size: 16px;
            border: 1px solid #dcdcdc;
            border-radius: 24px;
            margin: 10px 0;
        }

        /* Donor Text */
        .donor-text {
            font-size: 18px;
            color: #00bcd4;
            text-align: center;
            margin-top: 10px;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .donor-text:hover {
            color: #ff4081;
        }

        .donor-text:active {
            color: #8bc34a;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 768px) {
            .navbar-links {
                display: none;
            }

            .logo {
                height: 40px;
            }

            .container {
                margin-top: 100px;
            }

            .search-box {
                width: 90%;
            }
        }

        @media (max-width: 480px) {
            body {
                font-size: 14px;
            }

            .search-form {
                width: 90%;
            }

            .search-box {
                width: 100%;
            }
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="custom-navbar">
    <img src="/images/BloodDonation_Logo.png" alt="Logo" class="logo">
    <div class="navbar-links">
        <a  href="${pageContext.request.contextPath}/">Home</a>
        <a href="/about">About</a>
        <a href="/blog">Blog</a>
        <a href="/activity">Activity</a>
        <a href="/service">Service</a>
        <a href="/contact">Contact</a>

    </div>
    <div class="auth-links">
       <a href="${pageContext.request.contextPath}/register">Register</a>
       <a href="${pageContext.request.contextPath}/signin">Signin</a>
       <button class="dark-mode-toggle" onclick="toggleDarkMode()">🌙</button>
    </div>
</nav>

<!-- Main Container --><div class="container">
    <form class="search-form">
        <select id="userType" class="search-box" onchange="redirectUser()">
            <option value="">Select Option</option>
               <option value="/receiver">Receiver</option>
              <option value="donor">Donor</option>
        </select>
        <p class="donor-text" onclick="alert('Thank you for your willingness to donate!')">I'm proud to Donate!</p>
    </form>
</div>

<!-- JavaScript -->
<script>
    // Toggle dark mode
    function toggleDarkMode() {
        document.body.classList.toggle("dark-mode");
        var btn = document.querySelector(".dark-mode-toggle");
        btn.innerHTML = document.body.classList.contains("dark-mode") ? "☀️" : "🌙";
    }


    // Redirect user based on selection

        function redirectUser() {
            var userType = document.getElementById("userType").value;
            if (userType) {
                window.location.href = userType;
            }
        }


</script>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>
</html>