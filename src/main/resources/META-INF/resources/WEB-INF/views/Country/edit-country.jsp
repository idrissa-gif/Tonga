<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Country</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css">
    <!-- Font Awesome CSS for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div style="margin-bottom: 5%;">
    <jsp:include page="../includes/sidebar.jsp"/>
</div>
<div class="container mt-5">
    <h1 class="text-center">Edit Country</h1>
    <h5 class="text-info">${message}</h5>
    <form action="/updateCountry" method="get">
        <input type="hidden" name="id" value="${country.id}">
        <div class="form-group mt-4">
            <label for="name">Country Name</label>
            <input type="text" class="form-control" id="name" name="name" value="${country.name}">
        </div>
        <div class="form-group">
            <label for="tours">Tours</label>
            <input type="number" class="form-control" id="tours" name="tours" value="${country.tours}">
        </div>
        <div class="form-group">
            <label for="operators">Operators</label>
            <input type="number" class="form-control" id="operators" name="operators" value="${country.operators}">
        </div>
        <div class="form-group">
            <label for="image">Image</label><br>
            <img src="/images/${country.image}" alt="Country Image" class="img-thumbnail" width="200" height="200">
            <input type="file" class="form-control-file mt-2" id="image" name="image">
        </div>
        <div class="text-center mt-4">
            <button type="submit" class="btn btn-primary">Update Country</button>
            <a href="/manage-country" class="btn btn-secondary">Cancel</a>
        </div>
    </form>
</div>
<div class="fixed-bottom">
    <jsp:include page="../includes/footer.jsp"/>
</div>

<!-- Bootstrap JS -->

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
<footer>
    <div>
        <jsp:include page="../includes/footer.jsp"/>
    </div>
</footer>
</html>
