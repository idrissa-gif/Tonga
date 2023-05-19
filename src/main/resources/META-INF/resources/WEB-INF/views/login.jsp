<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Log in with your account</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        .form-heading {
            text-align: center;
        }

        body {
            background-image: url("https://www.w3schools.com/w3images/mountains.jpg");
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            height: 100vh;
            overflow: hidden;
        }


        .container {
            background-color: rgb(228, 238, 235);
            border-radius: 10px;
            padding: 20px;
            margin-top: 200px;
        }

        .login-btn {
            margin-top: 20px;
            margin-left: 500px;
            font-size: 14px;
        }

        .form-signin .form-heading,
        .form-signin input[type="text"],
        .form-signin input[type="password"]
        {
            margin-bottom: 20px;
        }

        .forgot-password-link {
            margin-left: 10px;
            font-size: 14px;
        }

        /* Style for the logo */
        .mb-4 {
            margin-bottom: 2rem!important;
        }


    </style>

</head>

<body>

<div class="container">
    <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">Log in</h1>
    </div>

    <form method="POST" th:th:action="@{/login}" class="form-signin">
        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span><br>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <a href="#" class="forgot-password-link">Forgot Password?</a>
            <br>
            <button class="btn btn-lg btn-primary login-btn" type="submit">Log In</button>

        </div>
    </form>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>