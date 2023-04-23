<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Map Example</title>
  <style>
    #map {
      height: 400px;
    }
  </style>
  <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
  <script>
    const process = { env: {} };
    process.env.GOOGLE_MAPS_API_KEY =
            "AIzaSyCBXxFvb3CSMuRa1fy2sadaSPICOte7gx8";
  </script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCBXxFvb3CSMuRa1fy2sadaSPICOte7gx8"></script>
  <script>
    let infowindow; // define the infowindow variable

    function initMap() {
      const center = {lat: 37.7749, lng: -122.4194};
      const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 12,
        center: center,
      });

      infowindow = new google.maps.InfoWindow(); // initialize the infowindow

      const service = new google.maps.places.PlacesService(map);
      const request = {
        query: "dhaka",
        fields: ["name", "geometry"],
      };

      service.textSearch(request, (results, status) => {
        if (status === google.maps.places.PlacesServiceStatus.OK) {
          for (let i = 0; i < results.length; i++) {
            createMarker(results[i], map);
          }
        }
      });
    }

    function createMarker(place, map) {
      if (!place.geometry || !place.geometry.location) return;

      const marker = new google.maps.Marker({
        map,
        position: place.geometry.location,
      });

      google.maps.event.addListener(marker, "click", () => {
        infowindow.setContent(place.name || "");
        infowindow.open(map, marker);
      });
    }

  </script>
</head>
<body>
<div id="map"></div>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCBXxFvb3CSMuRa1fy2sadaSPICOte7gx8&callback=initMap"></script>
</body>
</html>
