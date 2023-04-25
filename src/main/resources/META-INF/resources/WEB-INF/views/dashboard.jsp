<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
    <link href="../../../../css/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div style="margin-bottom: 200px;">
    <jsp:include page="includes/sidebar.jsp"/>
</div>
<div class="row">
    <div class="col-md-4" style="margin-bottom: 100px;">
        <div class="card" style="text-align: center; margin-left: 2%">
            <div class="card-body">
                <h5 class="card-title">TOTAL COUNTRY</h5>
                <p class="card-text">(${totalcountry})</p>
                <a href="/manage-country" class="btn btn-secondary">View Details</a>
            </div>
        </div>
    </div>

    <div class="col-md-4" style="margin-bottom: 100px;">
        <div class="card" style="text-align: center; margin-left: 2%">
            <div class="card-body">
                <h5 class="card-title">TOTAL TOUR</h5>
                <p class="card-text">(${totaltour})</p>
                <a  href="/manage-tour" class="btn btn-secondary">View Details</a>
            </div>
        </div>
    </div>

    <div class="col-md-4" style="margin-bottom: 100px;">
        <div class="card" style="text-align: center; margin-left: 2%">
            <div class="card-body">
                <h5 class="card-title">TOTAL USERS</h5>
                <p class="card-text">(${totaloperator})</p>
                <a class="btn btn-secondary" href="#">View Details</a>
            </div>
        </div>
    </div>

    <div class="col-md-4" style="margin-bottom: 100px;">
        <div class="card" style="text-align: center; margin-left: 2%">
            <div class="card-body">
                <h5 class="card-title">TOTAL OPERATOR</h5>
                <p class="card-text">(${totaloperator})</p>
                <a  class="btn btn-secondary" href="/manage-operator">View Details</a>
            </div>
        </div>
    </div>

    <div class="col-md-4" style="margin-bottom: 100px;">
        <div class="card" style="text-align: center; margin-left: 2%">
            <div class="card-body">
                <h5 class="card-title">TOTAL REVIEWS</h5>
                <p class="card-text">(${totalreview})</p>
                <a class="btn btn-secondary" href="/reviews">View Details</a>
            </div>
        </div>
    </div>

    <div class="col-md-4" style="margin-bottom: 100px;">
        <div class="card" style="text-align: center; margin-left: 2%">
            <div class="card-body">
                <h5 class="card-title">TOTAL BOOKS</h5>
                <p class="card-text">(${totalbook})</p>
                <a class="btn btn-secondary" href="/books">View Details</a>
            </div>
        </div>
    </div>

</div>
<div class="fixed-bottom">
    <jsp:include page="includes/footer.jsp"/>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</html>