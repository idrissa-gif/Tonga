<%--
  Created by IntelliJ IDEA.
  User: idrissamahamoudoudicko
  Date: 17/4/2023
  Time: 23:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Google Maps Places API Example</title>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjxnnlm87un5VjTqIJ_W3lb-vDtCKXxV0&libraries=places"
          async defer></script>
  <script>
    function searchLocation() {
      var searchInput = document.getElementById('searchInput').value;
      var map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: -34.397, lng: 150.644},
        zoom: 15
      });
      var service = new google.maps.places.PlacesService(map);
      service.textSearch({
        query: searchInput,
        location: map.getCenter(),
        radius: 500
      }, callback);
    }

    function callback(results, status) {
      if (status === google.maps.places.PlacesServiceStatus.OK) {
        for (var i = 0; i < results.length; i++) {
          var place = results[i];
          var marker = new google.maps.Marker({
            map: map,
            position: place.geometry.location
          });
          var infowindow = new google.maps.InfoWindow({
            content: place.name
          });
          marker.addListener('click', function() {
            infowindow.open(map, marker);
          });
        }
      }
    }
  </script>
</head>
<body>
<h1>Google Maps Places API Example</h1>
<input type="text" id="searchInput" placeholder="Enter a location">
<button onclick="searchLocation()">Search</button>
<div id="map" style="height: 400px; width: 100%;></div>
</body>
</html>
