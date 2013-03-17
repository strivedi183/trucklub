$(function() {
  display_map(40.7482845,-73.9855692, 12);
  populate_map();
  var ralph = 'boo';
});

var map;
var markers = [];

function populate_map()
{
  _.each(trucks, prep_markers);
}

function prep_markers(truck)
{
  title = truck.title;
  latitude = truck.latitude;
  longitude = truck.longitude;
  add_marker(latitude, longitude, title);
}

function add_marker(lat, longitude, title)
{
  var latlng = new google.maps.LatLng(lat, longitude);
  var marker = new google.maps.Marker({position: latlng, map: map, title: title});
  markers.push(marker);
}

function display_map(lat, longitude, zoom)
{
  var mapOptions = {
    center: new google.maps.LatLng(lat, longitude),
    zoom: zoom,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  canvas = $('#map_canvas')[0];
  map = new google.maps.Map(canvas, mapOptions);
}




