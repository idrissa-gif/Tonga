// JavaScript
document.addEventListener("DOMContentLoaded", function() {
    var currentUrl = window.location.href;
    var homeLink = document.getElementById("homeLink");
    var tourLink = document.getElementById("tourLink");
    var destinationLink = document.getElementById("destinationLink");
    var signInLink = document.getElementById("signInLink");

    if (currentUrl.includes("/welcome")) {
        homeLink.classList.add("active");
    } else if (currentUrl.includes("/tour")) {
        tourLink.classList.add("active");
    } else if (currentUrl.includes("/country")) {
        destinationLink.classList.add("active");
    } else if (currentUrl.includes("/signin")) {
        signInLink.classList.add("active");
    }
});

// Enable tab functionality
$(document).ready(function() {
    $('#myTab a').click(function(e) {
        e.preventDefault();
        $(this).tab('show');
    });
});