<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Blood Receiver Form</title>
    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 80%;
            max-width: 500px;
            margin: 50px auto;
            background-color: #c0ded9;
            color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #ff0000;
            margin-bottom: 20px;
        }
        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        .form-group label {
            width: 150px;
            font-size: 16px;
            font-weight: bold;
            color: #ff0000;
        }
        .form-control {
            flex: 1;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: white;
            color: black;
            font-size: 14px;
        }
        .form-actions {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .btn-custom {
            background-color: red;
            color: white;
            padding: 5px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }
        .btn-custom:hover {
            background-color: #fefbd8;
            color: #ff0000;
        }
    </style>
    <script>
        function validateAge(input) {
            var age = input.value;
            var ageError = document.getElementById("ageError");
            if (age < 18) {
                ageError.style.display = "block";
                input.setCustomValidity("Age must be 18+ years old.");
            } else {
                ageError.style.display = "none";
                input.setCustomValidity("");
            }
        }
    </script>
</head>
<body>

    <div class="container">
        <h1>Blood Receiver Form</h1>
        <form action="/receiver/save" method="post">
            <!-- Blood Group Selection -->
            <div class="form-group">
                <label for="bloodGroup">Blood Group:</label>
                <select id="bloodGroup" name="bloodGroup" class="form-control" required>
                    <option value="">Select Blood Group</option>
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                </select>
            </div>

            <!-- Hospital Selection -->
            <div class="form-group">
                <label for="hospitalList">Hospital:</label>
                <select id="hospitalList" name="hospitalName" class="form-control" required>
                    <option value="">Select Hospital</option>
                    <option value="Hospital 1">Hospital 1</option>
                    <option value="Hospital 2">Hospital 2</option>
                    <option value="Hospital 3">Hospital 3</option>
                    <option value="Hospital 4">Hospital 4</option>
                </select>
            </div>

            <!-- Patient Name -->
            <div class="form-group">
                <label for="patientName">Patient Name:</label>
                <input type="text" id="patientName" name="patientName" class="form-control" required>
            </div>

            <!-- Age Validation -->
            <div class="form-group">
                <label for="age">Age:</label>
                <input type="number" id="age" name="age" class="form-control" min="18" required oninput="validateAge(this)">
            </div>

            <!-- Address -->
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" class="form-control" required value="">

            </div>

            <!-- Submit & Reset Buttons -->
            <div class="form-actions">
                <button type="submit" class="btn-custom">Submit</button>
                <button type="reset" class="btn-custom">Reset</button>
            </div>
        </form>
    </div>
</body>
</html>
