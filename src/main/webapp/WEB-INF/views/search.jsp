<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Search</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-image: url(https://img.freepik.com/free-photo/searching-discovery-perforated-paper-magnifying-glass_53876-31073.jpg);
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        min-height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .container-custom {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        max-width: 500px;
        width: 100%;
    }
    .form-header {
        margin-bottom: 20px;
        text-align: center;
    }
</style>
</head>
<body>
<div class="container container-custom">
	<h1 class="form-header mt-4">Search Employee</h1>
	<form action="searchEmp" method="post">
		<div class="form-group">
			<label for="id">ID:</label>
			<input type="number" class="form-control" id="id" name="id" required>
		</div>
		<div class="d-flex justify-content-between">
			<button type="submit" class="btn btn-primary btn-custom">Submit</button>
			<a href="/RegistrationFrom/" class="btn btn-secondary btn-custom">Home Page</a>
		</div>
	</form>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
