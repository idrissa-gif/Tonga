<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Tour Detail</title>
    <!-- Include Bootstrap CSS and JS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <ul class="nav nav-tabs card-header-tabs" id="myTab">
                <li class="nav-item">
                    <a href="#home" class="nav-link active" id="home-tab" data-toggle="tab">Overview</a>
                </li>
                <li class="nav-item">
                    <a href="#rates" class="nav-link" id="rates-tab" data-toggle="tab">Rates</a>
                </li>
                <li class="nav-item">
                    <a href="#inclusions" class="nav-link" id="inclusions-tab" data-toggle="tab">Inclusions</a>
                </li>
                <li class="nav-item">
                    <a href="#offeredby" class="nav-link" id="offeredby-tab" data-toggle="tab">Offered By</a>
                </li>
            </ul>
        </div>
        <div class="card-body">
            <div class="tab-content">
                <div class="tab-pane fade show active" id="home">
                    <%-- Display Overview tab content --%>
                    <h2>Tour Name: </h2>
                    <p>Location:</p>
                    <p>Description:</p>
                </div>
                <div class="tab-pane fade" id="rates">
                    <%-- Display Rates tab content --%>
                    <p>Rates: $</p>
                </div>
                <div class="tab-pane fade" id="inclusions">
                    <%-- Display Inclusions tab content --%>
                    <p>Inclusions:</p>
                </div>
                <div class="tab-pane fade" id="offeredby">
                    <%-- Display Offered By tab content --%>
                    <p>Offered By: </p>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<script src = "script.js"/>
</body>
</html>
