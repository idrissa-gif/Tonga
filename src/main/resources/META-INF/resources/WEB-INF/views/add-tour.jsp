<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
    <link href="./css/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div style="margin-bottom: 5%;">
    <jsp:include page="includes/sidebar.jsp"/>
</div>
<form method="post" th:th:action="@{/login}">
    <div class="form-group">
        <input type="text" class="form-control" id="tour_name" name = "tour_name" aria-describedby="Tour title" placeholder="Enter Tour name">
        <br>
    </div>
    <div class="form-group">
        <input type="text" class="form-control" id="tour_operator" name="tour_operator" placeholder="tour operator">
        <br>
    </div>

    <div class="form-group">
        <input type="text" class="form-control" id="countries" name="countries" placeholder="Countries">
        <br>
    </div>

    <div class="form-group">
        <input type="text" class="form-control" id="prices" name="prices" placeholder="tour operator">
        <br>
    </div>

    <div class="form-group">
        <input type="text" class="form-control" id="number_person" name="number_person" placeholder="number of person">
        <br>
    </div>

    <div class="form-group">
        <input type="text" class="form-control" id="rate" name="rate" placeholder="rate">
        <br>
    </div>
    <div class="form-group">
        <input type="file" class="form-control" id="image1" name="image1" placeholder="image 1">
        <br>
    </div>
    <div class="form-group">
        <input type="file" class="form-control" id="image2" name="image2" placeholder="image 2">
        <br>
    </div>
    <div class="form-group">
        <input type="file" class="form-control" id="image3" name="image3" placeholder="image 3">
        <br>
    </div>

    <button type="submit" class="btn btn-outline-primary" style="margin-left: 50%;">Add</button>
</form>
<div>
    <jsp:include page="includes/footer.jsp"/>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</html>