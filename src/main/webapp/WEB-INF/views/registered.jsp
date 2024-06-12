<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Success</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-image: url(https://c4.wallpaperflare.com/wallpaper/306/192/894/success-in-life-quotes-hd-wallpaper-preview.jpg);
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .container-custom {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100%;
    }
    .card-custom {
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        background-color: #ffffff;
        padding: 30px;
        max-width: 90%;
        text-align: center;
    }
    .card-title-custom {
        color: #28a745;
        margin-bottom: 20px;
    }
    .btn-custom {
        width: 100%;
    }
</style>
</head>
<body>
<div class="container container-custom">
    <div class="card card-custom">
        <div class="card-body">
            <h2 class="card-title card-title-custom">Your registration is successfully done!</h2>
            <a href="registration-form" class="btn btn-success btn-custom mb-3">Back to Register</a>
            <a href="/RegistrationFrom/" class="btn btn-primary btn-custom">Home Page</a>
        </div>
    </div>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
