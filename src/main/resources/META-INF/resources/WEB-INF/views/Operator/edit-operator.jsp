<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Operator</title>
    <!-- Bootstrap CSS -->

</head>
<body>
<div style="margin-bottom: 5%;">
    <jsp:include page="../includes/sidebar.jsp"/>
</div>
<div class="container">
    <h1>Edit Operator</h1>
    <form method="get" action="/UpdateOperator">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name" value="${operator.name}">
        </div>
        <div class="form-group">
            <label for="tours">Number of Tours</label>
            <input type="text" class="form-control" id="tours" name="tours" value="${operator.tours}">
        </div>
        <div class="form-group">
            <label for="countries">Countries</label>
            <input type="text" class="form-control" id="countries" name="countries" value="${operator.countries}">
        </div>
        <div class="form-group">
            <label for="rate">Rate</label>
            <input type="text" class="form-control" id="rate" name="rate" value="${operator.rate}">
        </div>
        <div class="form-group">
            <label for="image">Image URL</label>
            <input type="file" class="form-control" id="image" name="image" value="${operator.image}">
            <img src="/images/${operator.image}" alt="Operator Image" class="img-thumbnail" style="max-width: 100px;">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea class="form-control" id="description" name="description" rows="5">${operator.description}</textarea>
            <br>
        </div>
        <div class="form-group">
            <input type="hidden" name="id" value="${operator.id}">
            <button type="submit" class="btn btn-primary">Save</button>
            <a href="/manage-operator" class="btn border">Cancel</a>
        </div>
    </form>
</div>
<!-- jQuery -->

<script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
<footer>
    <div style="padding-top: 100px;">
        <jsp:include page="../includes/footer.jsp"/>
    </div>
</footer>
</html>
