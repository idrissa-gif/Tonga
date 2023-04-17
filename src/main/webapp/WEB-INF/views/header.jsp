<%--
  Created by IntelliJ IDEA.
  User: idrissamahamoudoudicko
  Date: 17/4/2023
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/css/styles.css"> <!-- Update with your CSS file path -->
</head>
<body>
<!-- Header -->
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
            <li class="nav-item">
                <a class="nav-link" id="homeLink" href="/welcome">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="tourLink" href="#">Tour</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="destinationLink" href="/country">Destination</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="signInLink" href="#">Sign In</a>
            </li>

        </ul>
    </div>
</nav>

</body>
<script src="script.js"/></script>
</html>
