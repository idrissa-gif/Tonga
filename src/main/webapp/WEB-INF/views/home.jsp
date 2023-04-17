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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
</head>

<body>
<jsp:include page="header.jsp"/>
<div class="banner">
    <h1 class="text-center">Tonga Welcomes you to Africa</h1>
    <p class="text-center">Your ultimate guide to exploring the stunning continent of Africa. Our mission is to help you discover the best of Africa's natural beauty, diverse cultures, and unforgettable experiences. From majestic safaris to breathtaking landscapes, we provide expert recommendations and insider tips to help you plan your perfect African adventure. Join us as we explore the wonders of Africa and create memories that will last a lifetime.</p>
</div>

<!-- Tour section -->
<section class="bg-light py-5">
    <div class="container">
        <div class="row mt-4">
            <c:forEach var="tour" items="${tourList}">
                <div class="col-md-4">
                    <div class="card">
                        <img src="/images/${tour.image1}" alt="${tour.tour_name}" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">${tour.tour_name}</h5>
                            <p class="card-text"><strong>Operator:</strong> ${tour.tour_operator}</p>
                            <p class="card-text"><strong>Countries:</strong> ${tour.countries}</p>
                            <p class="card-text"><strong>Price:</strong> ${tour.prices} $</p>
                            <p class="card-text"><strong>No. of Persons:</strong> ${tour.number_person}</p>
                            <p class="card-text">
                                <c:forEach var="i" begin="1" end="${tour.rate}">
                                    <span class="fa fa-star" aria-hidden="true" style="color: gold;"></span>
                                </c:forEach>
                            </p>
                            <div class="text-center">
                                <a href="/DetailTourView" class="btn btn-primary btn-sm">More</a>
                            </div>
                        </div>
                    </div>
                </div>

            </c:forEach>

        </div>
    </div>
</section>
</div>
<jsp:include page="footer.jsp"/>
<!-- Add Bootstrap and jQuery scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="/resources/fontawesome/js/all.min.js"></script>

</body>

</html>
