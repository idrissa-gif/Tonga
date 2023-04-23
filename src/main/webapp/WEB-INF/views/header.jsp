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
                <a class="nav-link" id="tourLink" href="/tour">Tour</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="destinationLink" href="/country">Destination</a>
            </li>
            <% if (session.getAttribute("isLoggedIn") != null && (Boolean) session.getAttribute("isLoggedIn")) { %>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <!-- User Profile Icon Image -->
                    <img src="/images/icons/user.png" alt="User Profile" width="25" height="25">
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">My Profile</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/logout">Logout</a>
                </div>
            </li>
            <% } else { %>
            <li class="nav-item">
                <a class="nav-link" href="/login">Sign In</a>
            </li>
            <% } %>
        </ul>
    </div>

</nav>

</body>
<script src="${pageContext.request.contextPath}/script.js"/></script>
</html>
