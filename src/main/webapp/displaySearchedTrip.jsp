
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
  Created by IntelliJ IDEA.
  User: nknudson
  Date: 10/19/16
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="contentType.jsp" />
<html>
<jsp:include page="head.jsp" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
   <%-- <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDA0PIMpvt1rg0PvK_PKX6pm85leZYAKfY&sensor=false">
    </script>--%>



    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
            <meta charset="utf-8">
            <style>
    /* Always set the map height explicitly to define the size of the div
     * element that contains the map. */
    #map {
        height: 50%;
    }
    </style>

    <%--<script>
    // This example requires the Places library. Include the libraries=places
    // parameter when you first load the API. For example:
    // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

    var map;
    var infowindow;

    function initMap() {
        var pyrmont = {lat: -33.867, lng: 151.195};

        map = new google.maps.Map(document.getElementById('map'), {
            center: pyrmont,
            zoom: 15
        });

        infowindow = new google.maps.InfoWindow();
        var service = new google.maps.places.PlacesService(map);
        service.nearbySearch({
            location: pyrmont,
            radius: 500,
            type: ['store']
        }, callback);
    }

    function callback(results, status) {
        if (status === google.maps.places.PlacesServiceStatus.OK) {
            for (var i = 0; i < results.length; i++) {
                createMarker(results[i]);
            }
        }
    }

    function createMarker(place) {
        var placeLoc = place.geometry.location;
        var marker = new google.maps.Marker({
            map: map,
            position: place.geometry.location
        });

        google.maps.event.addListener(marker, 'click', function() {
            infowindow.setContent(place.name);
            infowindow.open(map, this);
        });
    }
</script>--%>

    <%--var map;
    function initialize() {
        var mapOptions = {
            zoom: 8,
            center: new google.maps.LatLng(-34.397, 150.644)
        };
        map = new google.maps.Map(document.getElementById('map-canvas'),
                mapOptions);
    }
    google.maps.event.addDomListener(window, 'load', initialize);--%>
    <%--var marker = null;
    var map = null;
    var markers = [];
    function initializeMap()
    {
        var map_canvas = document.getElementById('map_canvas');
        var map_options = {
            //center: myCenter,
            zoom: 15,
            mapTypeId: google.maps.MapTypeId.SATELLITE
        }
        map = new google.maps.Map(map_canvas, map_options)
    }
    function updateMap(gps)
    {
        var latitude = "${country.latitude}";
        var longitude = "${country.logitude}";
        var gpsPoint = new google.maps.LatLng(latitude, longitude);
        if(marker != null)
            marker.setMap(null);
        if(map!=null)
            map.setCenter(gpsPoint);
        marker = new google.maps.Marker({
            position:gpsPoint,
            map:map
        });
        markers.push(marker);
    }--%>

    <style>
        /* Always set the map height explicitly to define the size of the div
         * element that contains the map. */
        #map {
            height: 60%;
            width: 100%;
        }

        /* Optional: Makes the sample page fill the window. */

        .controls {
            background-color: #fff;
            border-radius: 2px;
            border: 1px solid transparent;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
            box-sizing: border-box;
            font-family: Roboto;
            font-size: 15px;
            font-weight: 300;
            height: 29px;
            margin-left: 17px;
            margin-top: 10px;
            outline: none;
            padding: 0 11px 0 13px;
            text-overflow: ellipsis;
            width: 400px;
        }

        .controls:focus {
            border-color: #4d90fe;
        }
        .title {
            font-weight: bold;
        }
        #infowindow-content {
            display: none;
        }
        #map #infowindow-content {
            display: inline;
        }

    </style>

</head>


<body role="document">
<jsp:include page="navigationBar.jsp" />
<div class="container theme-showcase" role="main">
    <div class="page-header">
        <h1>Selected Trip</h1>
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

<jsp:include page="contentEnd.jsp" />
<jsp:include page="footer.jsp" />

</html>

