var mapOptions = {
    center: { lat: 38.257435, lng: -85.727206},
    zoom: 15,
    scrollwheel: false,
};

var map = new google.maps.Map(document.getElementById('map-canvas'),
  mapOptions);

var marker = new google.maps.Marker({
    position: { lat: 38.257435, lng: -85.727206 },
    map: map
});

var infoContent = '<div class="infoWindow"><h2>Current360 Office</h2><div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress"><span itemprop="streetAddress" class="street">1324 E Washington St</span><br><span itemprop="addressLocality">Louisville</span>, <span itemprop="addressRegion">KY</span><span itemprop="postalCode">40206</span></div><br><a itemprop="telephone" href="tel:1-502-589-3567">502 589 3567</a></div>';

var infowindow = new google.maps.InfoWindow({
    content: infoContent
});

google.maps.event.addListener(marker, 'click', function() {
  infowindow.open(map,marker);
});

google.maps.event.addDomListener(window, 'resize', function() {
    var center = map.getCenter();
    google.maps.event.trigger(map, "resize");
    map.setCenter(center);
});