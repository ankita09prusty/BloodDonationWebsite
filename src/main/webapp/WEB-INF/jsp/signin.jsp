<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sigin | Blood Donation</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"> <!-- For eye icon -->

    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }

        .container {
            width: 80%;
            max-width: 400px;
            margin: 100px auto;
            background-color: #c0ded9;
            color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #ff0000;
            margin-bottom: 20px;
            display: inline-block; /* Align with the input box */
            margin-right: 10px; /* Space between title and input fields */
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
            width: 100%;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .form-group label {
            font-size: 16px;
            font-weight: bold;
            color: #ff0000;
            width: 100%;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: #ffffff;
            color: #000000;
            font-size: 14px;
            box-sizing: border-box;
        }

        .password-container {
            position: relative;
            width: 100%;
        }

        .password-container i {
            color: black; /* Change eye icon color to black */
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            font-size: 16px;
            cursor: pointer;
        }

        .password-container i {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            font-size: 16px;
            cursor: pointer;
        }

        /* Buttons styling */
        .form-actions {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .btn-custom {
            background-color: white; /* Button color changed to white */
            color: red; /* Text color remains red */
            padding: 10px 20px;
            border: 1px solid red; /* Red border to match the theme */
            border-radius: 5px;
            cursor: pointer;
            width: 48%;
            text-align: center; /* Ensure text is aligned in the center */
        }

        .btn-custom:hover {
            background-color: #fefbd8;
            color: #ff0000;
        }

        /* Popup Styling */
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 350px;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            z-index: 1000;
        }

        .popup h2 {
            color: red;
        }

        .popup button {
            margin-top: 10px;
            padding: 10px;
            border: none;
            background-color: red;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

        .popup button:hover {
            background-color: #fefbd8;
            color: red;
        }

    </style>
</head>
<body>

<!-- Sign-in Form -->
<div class="container">
    <h1>Sign In</h1>
    <form id="signinForm">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" class="form-control" placeholder="Enter your username" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <div class="password-container">
                <input type="password" id="password" class="form-control" placeholder="Enter your password" required>
                <i class="fas fa-eye" id="togglePassword" style="cursor: pointer;"></i> <!-- Eye icon -->
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn-custom">Sign In</button>
            <button type="button" class="btn-custom" id="forgotPassword">Forgot Password?</button>
        </div>
    </form>
</div>

<!-- Popup for Login after Registration -->
<div class="popup" id="loginPopup" style="display:none;">
    <h2>Registration Successful!</h2>
    <p>You can now sign in with your credentials.</p>
    <button onclick="closePopup()">OK</button>
</div>
<script>
document.getElementById("signinForm").addEventListener("submit", function(event) {
    event.preventDefault();  // Prevent form submission

    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;

    // Regular Expression for Password Validation (at least one uppercase, one lowercase, one special character, one digit, and min length of 8)
    const passwordRegex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[\d@_&])[A-Za-z\d@_&]{8,}$/;

    // Validate username and password
    if (!username || !password) {
        alert("Please enter both username and password!");
        return;
    }

    if (!passwordRegex.test(password)) {
        alert("Password must contain at least one uppercase letter, one lowercase letter, one special character (@, _, or &), one digit, and must be at least 8 characters long.");
        return;
    }

    let users = JSON.parse(localStorage.getItem("users")) || [];

    // Check if the user exists in the stored data
    let user = users.find(user => user.username === username && user.password === password);

    if (user) {
        alert("Login Successful!");
        window.location.href = "dashboard.html";  // Redirect to Dashboard
    } else {
        alert("Invalid Username or Password!"); // Show error if credentials are wrong
    }
});

// Forgot password functionality
document.getElementById("forgotPassword").addEventListener("click", function() {
    alert("Password recovery link sent to your email!");
});

// Popup logic for registration
document.addEventListener("DOMContentLoaded", function() {
    if (localStorage.getItem("registered") === "true") {
        document.getElementById("loginPopup").style.display = "block";
        localStorage.removeItem("registered"); // Remove flag after showing popup
    }
});

function closePopup() {
    document.getElementById("loginPopup").style.display = "none";
}
document.getElementById("togglePassword").addEventListener("click", function() {
    const passwordField = document.getElementById("password");
    const type = passwordField.type === "password" ? "text" : "password";
    passwordField.type = type;

    // Toggle eye icon
    this.classList.toggle("fa-eye-slash");
})

</script>
</body>
</html>