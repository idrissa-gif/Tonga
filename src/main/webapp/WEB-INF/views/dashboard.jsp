<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.visitafrica.tongaclient.model.Tour" %><%--
  Created by IntelliJ IDEA.
  User: idrissamahamoudoudicko
  Date: 16/4/2023
  Time: 00:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <!-- Add Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">
        <!-- Logo Image -->
        <img src="/images/logo/TONGA.png" alt="Logo" width="50" height="50">
    </a>
    <!-- Toggle button for small screens -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <!-- Navbar items -->
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Tour</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Destination</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Sign In</a>
            </li>
        </ul>
    </div>
</nav>
<div class="container mt-5">
    <h1>Welcome to Our Website</h1>
    <p>Explore the best tours and destinations in Africa!</p>
</div>
<!-- Tour section -->
<section class="bg-light py-5">
    <div class="container">
        <div class="row mt-4">
            <c:forEach var="tour" items="${tourList}">
                <div class="col-md-4">
                    <div class="card">
                        <img src="${tour.image1}" alt="${tour.tour_name}" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">${tour.tour_name}</h5>
                            <p class="card-text"><strong>Operator:</strong> ${tour.tour_operator}</p>
                            <p class="card-text"><strong>Countries:</strong> ${tour.countries}</p>
                            <p class="card-text"><strong>Price:</strong> ${tour.prices}</p>
                            <p class="card-text"><strong>No. of Persons:</strong> ${tour.number_person}</p>
                            <p class="card-text"><strong>Rate:</strong> ${tour.rate}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
</div>
<!-- Add Bootstrap and jQuery scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
