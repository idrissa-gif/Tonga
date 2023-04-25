<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Tour</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0-beta2/css/bootstrap.min.css">

</head>
<body>
<div style="margin-bottom: 5%;">
    <jsp:include page="../includes/sidebar.jsp"/>
</div>
<div class="container mt-5">
    <h1 class="text-center">Edit Tour</h1>
    <form action="/updateTour" method="get">
        <input type="hidden" name="id" value="${tour.id}">
        <div class="mb-3">
            <label for="tour_name" class="form-label">Tour Name</label>
            <input type="text" class="form-control" id="tour_name" name="tour_name" value="${tour.tour_name}">
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea class="form-control" id="description" name="description">${tour.description}</textarea>
        </div>
        <div class="mb-3">
            <label for="tour_operator" class="form-label">Tour Operator</label>
            <input type="text" class="form-control" id="tour_operator" name="tour_operator" value="${tour.tour_operator}">
        </div>
        <div class="mb-3">
            <label for="countries" class="form-label">Countries</label>
            <input type="text" class="form-control" id="countries" name="countries" value="${tour.countries}">
        </div>
        <div class="mb-3">
            <label for="prices" class="form-label">Prices</label>
            <input type="text" class="form-control" id="prices" name="prices" value="${tour.prices}">
        </div>
        <div class="mb-3">
            <label for="number_person" class="form-label">Number of Persons</label>
            <input type="text" class="form-control" id="number_person" name="number_person" value="${tour.number_person}">
        </div>
        <div class="mb-3">
            <label for="rate" class="form-label">Rate</label>
            <input type="number" class="form-control" id="rate" name="rate" value="${tour.rate}">
        </div>
        <div class="mb-3">
            <label for="image1" class="form-label">Image 1</label>
            <input type="file" class="form-control" id="image1" name="image1">
            <img src="/images/${tour.image1}" width="100" height="100">
        </div>
        <div class="mb-3">
            <label for="image2" class="form-label">Image 2</label>
            <input type="file" class="form-control" id="image2" name="image2">
            <img src="/images/${tour.image2}" width="100" height="100">
        </div>
        <div class="mb-3">
            <label for="image3" class="form-label">Image 3</label>
            <input type="file" class="form-control" id="image3" name="image3">
            <img src="/images/${tour.image3}" width="100" height="100">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-primary">Save Changes</button>
        </div>
    </form>
    <div class="text-center mt-3">
        <span>${message}</span>
    </div>
</div>
<div class="fixed-bottom">
    <jsp:include page="../includes/footer.jsp"/>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0-beta2/js/bootstrap.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0-beta2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
    </html>

