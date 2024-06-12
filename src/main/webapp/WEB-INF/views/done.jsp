<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
/* Custom CSS */
body {
    /*background-color: #c5b352; /* Light grey background */
    background-image: url(https://img.freepik.com/free-vector/team-business-people-putting-hands-up-together_74855-19906.jpg);
    color: #343a40; /* Dark grey text */
}

.card-custom {
    margin-top: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    background: #141314; /* White background for the card */
}

.card-header-custom {
    background-color: #c87076; /* Blue background for the header */
    color: rgb(102, 76, 76);
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    padding: 20px;
}

.card-body-custom {
    padding: 30px;
    color: #343a40; /* Dark grey text inside the card */
}

.card-title-custom {
    margin-bottom: 20px;
    color: #007bff; /* Blue color for the card title */
}

.card-text-custom {
    font-size: 18px;
    margin-bottom: 10px;
    color: #343a40; /* Dark grey text for the card details */
}

/* Additional CSS */
.container-custom {
    max-width: 600px;
}

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
    <div class="container mt-5 container-custom">
        <div class="card card-custom">
            <div class="card-header card-header-custom">
                <h1>Welcome to the Corporate World</h1>
            </div>
            <div class="card-body card-body-custom">
                <h2 class="card-title card-title-custom">This is your employee detail!</h2>
                <p class="card-text card-text-custom">
                    <strong>Your Name:</strong> ${emp.name}
                </p>
                <p class="card-text card-text-custom">
                    <strong>Your Gender:</strong> ${emp.gender}
                </p>
                <p class="card-text card-text-custom">
                    <strong>Your Age:</strong> ${emp.age}
                </p>
                <p class="card-text card-text-custom">
                    <strong>Your Salary:</strong> ${emp.salary}
                </p>
            </div>
            <div class="row justify-content-center mb-4">
                <div class="col-auto">
                    <a href="find" class="btn btn-success btn-custom">Back to Search</a> 
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
