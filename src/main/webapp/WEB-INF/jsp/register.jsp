<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <style>
        /* Page Styles */
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }

        .container {
            width: 80%;
            max-width: 500px;
            margin: 50px auto;
            background-color: #c0ded9;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            position: relative;
        }

        /* Back Arrow Button */
        .back-arrow {
            position: absolute;
            top: 10px;
            left: 10px;
            font-size: 20px;
            color: #ff0000;
            background-color: white;
            padding: 5px 10px;
            border-radius: 5px;
            text-decoration: none;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        }

        .back-arrow:hover {
            color: #d40000;
            background-color: #f8d7da;
        }

        /* Form Styles */
        h1 {
            text-align: center;
            color: #ff0000;
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
            color: #ff0000;
        }

        .form-control {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: #ffffff;
        }

        /* Custom Button */
        .btn-custom {
            background-color: red;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            border: none;
        }

        .btn-custom:hover {
            background-color: #fefbd8;
            color: #ff0000;
        }

        /* Password Toggle Icon */
        .input-group-text {
            cursor: pointer;
        }
    </style>
</head>
<body>

    <div class="container">
        <!-- Back to Home Arrow -->
        <a href="${pageContext.request.contextPath}/" class="back-arrow">
            <i class="fas fa-arrow-left"></i>
        </a>

        <!-- Page Title -->
        <h1>User Registration</h1>

        <!-- Registration Form -->
        <form id="registrationForm" action="registerUser" method="post">

            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" name="name" id="name" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" name="email" id="email" required>
                <small id="emailError" class="text-danger"></small>
            </div>

            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="text" class="form-control" name="phone" id="phone" pattern="\d{10}" required>
            </div>

            <div class="form-group">
                <label for="dob">Date of Birth:</label>
                <input type="date" class="form-control" name="dob" id="dob" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <div class="input-group">
                    <input type="password" class="form-control" name="password" id="password" required>
                    <span class="input-group-text" onclick="togglePassword('password', 'toggleIcon1')">
                        <i id="toggleIcon1" class="fas fa-eye"></i>
                    </span>
                </div>
            </div>

            <div class="form-group">
                <label for="confirm-password">Confirm Password:</label>
                <div class="input-group">
                    <input type="password" class="form-control" id="confirm-password" required>
                    <span class="input-group-text" onclick="togglePassword('confirm-password', 'toggleIcon2')">
                        <i id="toggleIcon2" class="fas fa-eye"></i>
                    </span>
                </div>
            </div>

            <div class="text-center mt-3">
                <button type="submit" class="btn btn-custom">Register</button>
            </div>

        </form>
    </div>

    <!-- JavaScript for Password Toggle -->
    <script>
        function togglePassword(fieldId, iconId) {
            let passwordField = document.getElementById(fieldId);
            let icon = document.getElementById(iconId);
            if (passwordField.type === "password") {
                passwordField.type = "text";
                icon.classList.add("fa-eye-slash");
            } else {
                passwordField.type = "password";
                icon.classList.remove("fa-eye-slash");
            }
        }
    </script>

</body>
</html>
