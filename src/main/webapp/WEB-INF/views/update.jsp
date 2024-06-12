<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-image: url(https://img.freepik.com/premium-vector/update-process-flat-green-blue-software-update-vector-illustration_399089-7006.jpg);
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        min-height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .form-container {
        max-width: 600px;
        width: 100%;
        margin: auto;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        background-color: #ffffff;
    }
    .form-title {
        margin-bottom: 20px;
        color: #007bff;
        text-align: center;
    }
    .btn-custom {
        width: 100%;
        margin-top: 10px;
    }
    @media (min-width: 768px) {
        .btn-custom {
            width: auto;
        }
    }
</style>
</head>
<body>
<div class="container my-5">
    <div class="form-container">
        <h2 class="form-title">Update Employee</h2>
        <form action="/CRUD-SpringMVC/updateSave" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" class="form-control" value="${emp.name}" name="name" required>
            </div>
            <div class="form-group">
                <label for="gender">Gender:</label>
                <select id="gender" class="form-control" name="gender" required>
                    <option value="Male" ${emp.gender == 'Male' ? 'selected' : ''}>Male</option>
                    <option value="Female" ${emp.gender == 'Female' ? 'selected' : ''}>Female</option>
                    <option value="Other" ${emp.gender == 'Other' ? 'selected' : ''}>Other</option>
                </select>
            </div>
            <div class="form-group">
                <label for="age">Age:</label>
                <input type="number" id="age" class="form-control" value="${emp.age}" name="age" required>
            </div>
            <div class="form-group">
                <label for="salary">Salary:</label>
                <input type="number" id="salary" class="form-control" value="${emp.salary}" name="salary" required>
            </div>
            <div class="d-flex flex-column flex-md-row justify-content-center">
                <input type="submit" class="btn btn-success btn-custom mb-3 mb-md-0" value="Submit">
                <a href="/RegistrationFrom/" class="btn btn-secondary btn-custom ml-md-3">Home Page</a>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
