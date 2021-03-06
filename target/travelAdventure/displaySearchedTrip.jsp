
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
  Created by IntelliJ IDEA.
  User: nknudson
  Date: 10/19/16
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="contentType.jsp" />
<jsp:include page="head.jsp" />
<jsp:include page="navigationBar.jsp" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<div class="wrapper">
    <body id="colorForAllTrips" >
<div class="container theme-showcase" role="main" class="jumbotron"  >
    <div class="page-header">
        <h1 style="color: blue; text-align: center">Selected Dream Trip Info</h1>
    </div>


        <div class="col-sm-7">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">${trip.country}</h3> <h5><i> (from ${trip.beginDate} to ${trip.endDate})</i> </h5>
                </div>
                <div class="panel-body">
                        I arrived to ${trip.city} and stayed in ${trip.hotel}. During this trip I ${trip.activity}.<br />
                        Total cost for the trip was <b>$${trip.cost}</b>.
                </div>
            </div>
        </div>
<div>
<input id="pac-input" class="controls" type="text"
       placeholder="Enter a location">
<div id="map"style="height:400px; width:800px"></div>
<div id="infowindow-content">
    <span id="place-name"  class="title"></span><br>
    Place ID <span id="place-id"></span><br>
    <span id="place-address"></span>
</div>
</div>
<script>
    // This sample uses the Place Autocomplete widget to allow the user to search
    // for and select a place. The sample then displays an info window containing
    // the place ID and other information about the place that the user has
    // selected.

    // This example requires the Places library. Include the libraries=places
    // parameter when you first load the API. For example:
    // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: 35.8617, lng: 104.1954 },
            zoom: 4
        });
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode( { 'address': '${trip.country}'}, function(results, status) {
            if (status == 'OK') {
                map.setCenter(results[0].geometry.location);
                var marker = new google.maps.Marker({
                    map: map,
                    position: results[0].geometry.location
                });
            } else {
                alert('Geocode was not successful for the following reason: ' + status);
            }
        });
        var input = document.getElementById('pac-input');

        var autocomplete = new google.maps.places.Autocomplete(input);
        autocomplete.bindTo('bounds', map);

        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        var infowindow = new google.maps.InfoWindow();
        var marker = new google.maps.Marker({
            map: map
        });
        marker.addListener('click', function() {
            infowindow.open(map, marker);
        });

        autocomplete.addListener('place_changed', function() {
            infowindow.close();
            var place = autocomplete.getPlace();
            if (!place.geometry) {
                return;
            }

            if (place.geometry.viewport) {
                map.fitBounds(place.geometry.viewport);
            } else {
                map.setCenter(place.geometry.location);
                map.setZoom(17);
            }

            // Set the position of the marker using the place ID and location.
            marker.setPlace({
                placeId: place.place_id,
                location: place.geometry.location
            });
            marker.setVisible(true);

            document.getElementById('place-name').textContent = place.name;
            document.getElementById('place-id').textContent = place.place_id;
            document.getElementById('place-address').textContent =
                    place.formatted_address;
            infowindow.setContent(document.getElementById('infowindow-content'));
            infowindow.open(map, marker);
        });
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDA0PIMpvt1rg0PvK_PKX6pm85leZYAKfY&libraries=places&callback=initMap" async defer></script>

</div>

</body>

</div>
<jsp:include page="footer.jsp" />

</html>

