<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Tour</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>
<div style="margin-bottom: 5%;">
    <jsp:include page="includes/sidebar.jsp"/>
</div>

<h1 style="text-align: center">Tour Details</h1>
<table class="table table-bordered">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Tour name</th>
        <th scope="col">Tour operator</th>
        <th scope="col">Countries</th>
        <th scope="col">Price</th>
        <th scope="col">Number of person</th>
        <th scope="col">Rate</th>
        <th scope="col">Image 1</th>
        <th scope="col">Image 2</th>
        <th scope="col">Image 3</th>
        <th scope="col">Settings</th>
    </tr>
    </thead>
    <tbody>
    <c:set var="count" value="0" />
    <c:forEach items="${tours}" var="tour">
    <tr>

        <c:set var="count" value="${count + 1}" />
        <th scope="row">${count}</th>
        <th >${tour.tour_name}</th>
        <td >${tour.tour_operator}</td>
        <td >${tour.countries}</td>
        <td >${tour.prices}</td>
        <td >${tour.number_person}</td>
        <td >${tour.rate}</td>
        <td >${tour.image1}</td>
        <td >${tour.image2}</td>
        <td >${tour.image1}</td>
        <td ><a type="btn" href="@{/edit-tour-detail}">Edit</a>  <a class="btn btn-light" href="/delete-tour?tour_id=${tour.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </tbody>
</table>

</body>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</html>