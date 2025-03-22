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
        /* General Styling */
        body {
            background-color: #f0f0f0; /* Matte off-white background */
            font-family: Arial, sans-serif;
        }

        /* Container Styling */
        .container {
            width: 80%;
            max-width: 800px;
            margin: 50px auto;
            background-color: #c0ded9; /* Black container background */
            color: white; /* White text */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Shadow effect */
        }

        /* Title Styling */
        h1 {
            text-align: center;
            color: #ff0000; /* Red color for title */
            margin-bottom: 20px;
        }

        /* Flexbox Styling for all form fields */
        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        /* Label Styling */
        .form-group label {
            margin-right: 10px; /* space between label and input */
            font-size: 16px;
            font-weight: bold;
            color: #ff0000; /* Red text for labels */
            width: 150px;
        }

        /* Input and Select Field Styling */
        .form-control {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: #ffffff; /* White background for input fields */
            color: #000000; /* Black text inside input fields */
            font-size: 14px;
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

        /* Button Styling */
        .btn-custom {
            background-color: red; /* Red color for the button */
            color: white; /* White text for the button */
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-custom:hover {
            background-color: #fefbd8; /* Light color background on hover */
            color: #ff0000; /* Red text on hover */
        }

        /* Logo Styling */
        .img-fluid {
            max-width: 80%;
            height: auto;
            margin-top: 50px;
        }
        /* Responsive Design */
        @media screen and (max-width: 200px) {
            .container {
                width: 100%;
                padding: 10px;
            }
            .form-group {
                flex-direction: column;
                align-items: flex-start;
            }
            .form-group label {
                margin-bottom: 10px;
            }
            .form-control {
                width: 100%;
            }
        }

    </style>
</head>
<body>

 <div class="container">
         <!-- Back to Home Arrow -->
         <a href="${pageContext.request.contextPath}/" class="back-arrow">
          <i class="fas fa-arrow-left"></i>
          </a>
.,
        <h1>Blood Donor</h1>
        <form action="saveDonor" method="post">
            <div class="form-group">
                <label for="donorName">Donor Name</label>
                <input type="text" id="donorName" name="donorName" class="form-control" placeholder="Enter your name" required>
            </div>
            <div class="form-group">
                <label for="bloodGroup">Blood Group</label>
                <select id="bloodGroup" name="bloodGroup" class="form-control" required>
                    <option value="">Select Type</option>
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                </select>
            </div>
            <!-- Auto-fetched State, District, and City -->
                  <!-- State Input (Autofilled as Odisha) -->
                                  <div class="form-group d-flex align-items-center">
                                      <label for="state" class="mr-3">State</label>
                                      <input type="text" id="state" class="form-control" value="Odisha" readonly>
                                  </div>

                                  <!-- District Input (Autofilled as Khordha) -->
                                  <div class="form-group d-flex align-items-center">
                                      <label for="district" class="mr-3">District</label>
                                      <input type="text" id="district" class="form-control" value="Khordha" readonly>
                                  </div>

                                  <!-- City Input (Autofilled as Bhubaneswar) -->
                                  <div class="form-group d-flex align-items-center">
                                      <label for="city" class="mr-3">City</label>
                                      <input type="text" id="city" class="form-control" value="Bhubaneswar" readonly>
                                  </div>

            <div class="form-group">
                <label for="location">Location</label>
                <select id="location" name="location" class="form-control" required>
                    <option value="">Select Location</option>
                    <option value="Location1">Location1</option>
                    <option value="Location2">Location2</option>
                    <option value="Location3">Location3</option>
                </select>
            </div>
            <div class="d-flex justify-content-between">
                <button type="submit" class="btn-custom">Submit</button>
                <button type="reset" class="btn-custom" style="background-color: white; color: red; border: 1px solid red;">
                    Reset
                </button>
            </div>
        </form>
    </div>
</body>
</html>
