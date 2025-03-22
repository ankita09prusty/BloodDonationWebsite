<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Role | Blood Donation</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 400px;
            margin-top: 80px;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #d9534f;
        }

        .btn-custom {
            background-color: #d9534f;
            color: white;
            font-weight: bold;
            margin-top: 10px;
        }

        .btn-custom:hover {
            background-color: #c9302c;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Select Your Role</h2>
    <p>Are you a receiver or a donor?</p>

    <a href="receiver.jsp" class="btn btn-custom btn-block">I am a Receiver</a>
    <a href="donor.jsp" class="btn btn-custom btn-block">I am a Donor</a>
</div>

</body>
</html>
