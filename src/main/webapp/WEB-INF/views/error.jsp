<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    /* Custom CSS */
    body {
        background-image: url(https://www.shutterstock.com/image-vector/computer-server-big-data-error-260nw-2156541851.jpg);
        color: #343a40; /* Dark grey text */
    }

    .card-custom {
        margin-top: 50px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        background: #ffffff; /* White background for the card */
    }

    .card-header-custom {
        background-color: #dc3545; /* Red background for the header */
        color: white;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
        padding: 20px;
        text-align: center;
    }

    .card-body-custom {
        padding: 30px;
        text-align: center;
        color: #343a40; /* Dark grey text inside the card */
    }

    .card-title-custom {
        margin-bottom: 20px;
        color: #dc3545; /* Red color for the card title */
    }

    /* Additional CSS */
    .btn-custom {
        width: 150px;
        margin: 10px;
        border-radius: 50px;
        transition: all 0.3s ease-in-out;
    }

    .btn-custom:hover {
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        transform: scale(1.05);
    }
</style>
</head>
<body>
<div class="container">
    <div class="card card-custom">
        <div class="card-header card-header-custom">
            <h1>Error</h1>
        </div>
        <div class="card-body card-body-custom">
            <h2 class="card-title card-title-custom">ID Not Found</h2>
            <p class="card-text">Sorry! The ID <strong>${id}</strong> is not present in our database.</p>
            <a href="searchEmp.jsp" class="btn btn-primary btn-custom">Back to Search</a>
        </div>
        <div class="row justify-content-center mb-4">
            <div class="col-auto">
                <a href="/RegistrationFrom/" class="btn btn-secondary btn-custom">Home Page</a>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
