<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Suggested Places</title>
    <link rel="stylesheet" href="/css/suggestedplaces.css">
</head>
<body>
<div style="margin-bottom: 5%;">
    <jsp:include page="includes/sidebar.jsp"/>
</div>
<h1>Suggested Places</h1>

<table id="placesTable">
    <tr>
        <th>ID</th>
        <th>Place Name</th>
        <th>Country</th>
        <th>Description</th>
        <th>Image 1</th>
        <th>Image 2</th>
        <th>Image 3</th>
    </tr>
    <c:forEach var="suggestion" items="${suggestedPlaces}">
        <tr>
            <td>${suggestion.id}</td>
            <td>${suggestion.title}</td>
            <td>${suggestion.country}</td>
            <td>${suggestion.description}</td>
            <td><img src="/images/${suggestion.image}" width="70" height="70" class="image1"></td>
            <td><img src="/images/${suggestion.image1}" width="70" height="70" class="image2"></td>
            <td><img src="/images/${suggestion.image2}" width="70" height="70" class="image3"></td>
        </tr>
    </c:forEach>
</table>
<div class="fixed-bottom" style="margin-top:20px">
    <jsp:include page="includes/footer.jsp"/>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>

</body>

</html>
