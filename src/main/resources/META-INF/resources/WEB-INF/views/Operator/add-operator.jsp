<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Operator</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div style="margin-bottom: 5%;">
    <jsp:include page="../includes/sidebar.jsp"/>
</div>
<div class="container mt-5" style="margin-bottom: 100px">
    <h1 class="text-center mb-4">Add Operator</h1>
    <h3 style="text-align: center"><strong>${message}</strong></h3>
    <form action="/saveOperator" method="get">
        <div class="form-group row">
            <label for="name" class="col-sm-2 col-form-label">Name:</label>
            <div class="col-sm-10">
                <input type="text" id="name" name="name" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label for="country" class="col-sm-2 col-form-labe">Country</label>
            <div class="col-sm-10">
                <select id="country" name="country" class="form-control">
                    <option value="">Select Country</option>
                    <c:forEach items="${countries}" var="country">
                        <option value="${country.name}">${country.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label for="rate" class="col-sm-2 col-form-label">Rate:</label>
            <div class="col-sm-10">
                <input type="number" id="rate" name="rate" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label for="offices" class="col-sm-2 col-form-label">Offices:</label>
            <div class="col-sm-10">
                <input type="text" id="offices" name="offices" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label for="image" class="col-sm-2 col-form-label">Image:</label>
            <div class="col-sm-10">
                <input type="file" id="image" name="image" class="form-control-file">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-10 offset-sm-2">
                <input type="submit" value="Submit" class="btn btn-primary">
            </div>
        </div>
    </form>
</div>
<div class="fixed-bottom">
    <jsp:include page="../includes/footer.jsp"/>
</div>
<!-- Include Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
