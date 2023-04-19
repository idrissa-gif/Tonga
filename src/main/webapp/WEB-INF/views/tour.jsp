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
    <title>tour</title>
    <!-- Add Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
</head>

<body>
<jsp:include page="header.jsp"/>

<!-- Tour section -->
<section class="bg-light py-5">
    <div class="container">
        <div class="row mt-4">
            <c:forEach var="tour" items="${tourList}">
                <div class="col-md-4">
                    <div class="card">
                        <div style="position: relative;">
                            <img src="/images/${tour.image1}" alt="${tour.tour_name}" class="card-img-top">
                            <h5 class="card-title" style="position: absolute; bottom: 0; left: 0; right: 0; margin-bottom: 10px; background-color: rgba(0,0,0,0.7); color: #fff; padding: 10px; text-align: center; z-index: 1;">${tour.tour_name}</h5>
                        </div>
                        <div class="card-body">
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
                                <a href="/DetailTourView/${tour.id}" class="btn btn-primary btn-sm">More</a>
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
