<%--
  Created by IntelliJ IDEA.
  User: idrissamahamoudoudicko
  Date: 16/4/2023
  Time: 03:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <!-- Add Bootstrap CSS link here -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1>User Registration</h1>
    <form action="/register" method="get" class="needs-validation">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" class="form-control" required>
            <div class="invalid-feedback">
                Please enter a username.
            </div>
        </div>
        <div class="form-group">
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" class="form-control" required>
            <div class="invalid-feedback">
                Please enter your full name.
            </div>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" class="form-control" required>
            <div class="invalid-feedback">
                Please enter a valid email address.
            </div>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" class="form-control" required>
            <div class="invalid-feedback">
                Please enter a password.
            </div>
        </div>
        <div class="form-group">
            <label for="passwordConfirm">Confirm Password:</label>
            <input type="password" id="passwordConfirm" name="passwordConfirm" class="form-control" required>
            <div class="invalid-feedback">
                Please confirm your password.
            </div>
        </div>
        <div class="form-group">
            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" class="form-control" required>
            <div class="invalid-feedback">
                Please enter a phone number.
            </div>
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" class="form-control" required>
            <div class="invalid-feedback">
                Please enter an address.
            </div>
        </div>
        <!-- Additional form fields or validation can be added here -->
        <input type="submit" value="Register" class="btn btn-primary">
    </form>
</div>

<!-- Add Bootstrap JS link here for form validation -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
