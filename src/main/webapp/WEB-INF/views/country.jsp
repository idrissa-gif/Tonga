<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: idrissamahamoudoudicko
  Date: 17/4/2023
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Country List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<%--header--%>
<jsp:include page="header.jsp"/>
<div class="container mt-5">
    <div class="row">

        <!-- Iterate through the list of countries and create a Bootstrap card for each country -->
        <c:forEach items="${countryList}" var="country">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <!-- Display country image, name, tours, and operators in the card -->
                    <img src="/images/${country.image}" class="card-img-top" alt="Country Image">
                    <div class="card-body text-center">
                        <h3 class="card-title">${country.name}</h3>

                        <!-- Add an "Explore" button with a link to the country details page -->
                        <a href="/explorecountry/${country.name}" class="btn btn-primary">Explore</a>
                    </div>
                </div>
            </div>
        </c:forEach>

    </div>
</div>
<jsp:include page="footer.jsp"/>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
