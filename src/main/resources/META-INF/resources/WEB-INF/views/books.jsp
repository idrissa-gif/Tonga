<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>List of Books</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .highlight:hover {
            background-color: #09eca7;
        }
    </style>
</head>
<body>
<div style="margin-bottom: 5%;">
    <jsp:include page="includes/sidebar.jsp"/>
</div>
<div class="container">
    <h1>List of Books</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Destination</th>
            <th>Start Date</th>
            <th>Full Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Adults</th>
            <th>Children</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${books}" var="book">
            <tr class="highlight">
                <td>${book.id}</td>
                <td>${book.destination}</td>
                <td>${book.start_date}</td>
                <td>${book.full_name}</td>
                <td>${book.email}</td>
                <td>${book.phone}</td>
                <td>${book.adults}</td>
                <td>${book.children}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="fixed-bottom">
    <jsp:include page="includes/footer.jsp"/>
</div>
</body>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>
