<%--
  Created by IntelliJ IDEA.
  User: idrissamahamoudoudicko
  Date: 17/4/2023
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!DOCTYPE HTML>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<!-- Header -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">
        <!-- Logo Image -->
        <img src="${pageContext.request.contextPath}/images/logo/TONGA.png" alt="Logo" width="50" height="50">
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
                <button class="btn btn-link dropdown-toggle" type="button" id="userProfileDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <!-- User Profile Icon Image -->
                    <img src="${pageContext.request.contextPath}/images/${sessionScope.image}" alt="User Profile" width="25" height="25">
                </button>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#"  id="userProfileBtn"  data-toggle="modal" data-target="#userProfileModal">${sessionScope.username}</a>
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
<div class="modal fade" id="userProfileModal" tabindex="-1" role="dialog" aria-labelledby="userProfileModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="userProfileModalLabel">User Profile</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="modal-body">
                <!-- User details will be displayed here -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
</body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script>
    $(document).ready(function() {

        $('#userProfileBtn').click(function() {
            // Send an AJAX request to the backend to retrieve the user details
            $.ajax({
                url: '/users/${sessionScope.email}',
                method: 'GET',
                success: function(user) {
                    // Update the modal body with the user's details
                    $('#userProfileModal .modal-body').html(
                        '<p><strong>Name:</strong> ' + user.fullName + '</p>' +
                        '<p><strong>Email:</strong> ' + user.email + '</p>' +
                        '<p><strong>Phone:</strong> ' + user.phone + '</p>' +
                        '<p><strong>Address:</strong> ' + user.address + '</p>' +
                        '<img src="' + user.image + '" alt="' + user.fullName + '" width="100">'
                    );
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    // Handle the error
                    console.log("Error: " + textStatus + ": " + errorThrown);
                }
            })
        });
    });

</script>

</html>
