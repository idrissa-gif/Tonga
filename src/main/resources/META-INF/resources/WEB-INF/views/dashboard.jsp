<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<jsp:include page="includes/sidebar.jsp"/>
<!-- Start Welcome area -->
<div class="all-content-wrapper">

    <div class="white-box analytics-info-cs">

        <h3 class="box-title">Total Countries</h3>
        <ul class="list-inline two-part-sp">
            <li>
                <div><i class="fa fa-globe" aria-hidden="true" style="color: red"></i></div>
            </li>
            <li class="text-right sp-cn-r"> <span class="counter text-success" style="color: blue">(<?php echo htmlentities($totcountries); ?>)</span></li>
            <a href="manage-countries.jsp"><STRONG> View Detail</STRONG></a>
        </ul>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</html>