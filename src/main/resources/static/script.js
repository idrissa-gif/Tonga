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

/*** google api**/
var map;
function initialize() {
    var mapOptions = {
        zoom: 8,
        center: new google.maps.LatLng(-34.397, 150.644)
    };
    map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);
}

google.maps.event.addDomListener(window, 'load', initialize);



/** for the adding review to the tour**/

// Function to handle sliding stars
function handleRatingStars() {
    // Get the clicked star and its value
    var selectedStar = $(this);
    var rating = selectedStar.data('value');

    // Mark the clicked star as active and unselect other stars
    selectedStar.siblings().removeClass('active');
    selectedStar.addClass('active');

    // Update the hidden input field with the selected rating
    $('#ratingInput').val(rating);
}

// Attach event listeners to stars for sliding effect
$('.stars .star').on('click', handleRatingStars);
$('.stars .star').on('mouseenter', handleRatingStars);