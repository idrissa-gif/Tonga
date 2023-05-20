<%--
  Created by IntelliJ IDEA.
  User: idrissamahamoudoudicko
  Date: 19/5/2023
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Suggest a Place</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/suggest.css"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container">
    <h1 class="mt-4">Suggest a Place</h1>
    <form action="/AddsuggestPlace" method="GET">
        <div class="mb-3">
            <label for="title" class="form-label">Title:</label>
            <input type="text" class="form-control" name="title" id="title" required>
        </div>
        <div class="mb-3">
            <label for="userEmail" class="form-label">User Email:</label>
            <input type="text" class="form-control" name="userEmail" id="userEmail" value="${sessionScope.email}" readonly>
        </div>

        <div class="mb-3">
            <label for="country" class="form-label">Country:</label>
            <input type="text" class="form-control" name="country" id="country" required>
        </div>
        <div class="mb-3">
            <label for="image" class="form-label">Image 1 URL:</label>
            <input type="file" class="form-control" name="image" id="image">
        </div>
        <div class="mb-3">
            <label for="image1" class="form-label">Image 2 URL:</label>
            <input type="file" class="form-control" name="image1" id="image1" >
        </div>

        <div class="mb-3">
            <label for="image2" class="form-label">Image 3 URL:</label>
            <input type="file" class="form-control" name="image2" id="image2" >
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Description:</label>
            <textarea class="form-control" name="description" id="description" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<div>
    <jsp:include page="footer.jsp"/>
</div>


<script>
    // Check if the success message is present in the session
    const suggestionSuccess = ${sessionScope.suggestionSuccess};
    if (suggestionSuccess) {
        // Display the success message in a popup window
        alert("Tour Suggestion Submitted Successfully");
        // Remove the success message from the session
        <% session.removeAttribute("suggestionSuccess"); %>
    }
</script>

<!-- Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
