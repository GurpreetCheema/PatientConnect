<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<link rel="stylesheet"
href="/maps/documentation/javascript/cgc/demos.css">

<h3>View Office information Below:</h3>
<!-- Trying to push so adding something here.
 --><div id="map"></div>
<script>
function initMap() {
var options = {
zoom : 8,
center : {
lat : 41.4993,
lng : -81.6944
}

    }
    var map = new google.maps.Map(document.getElementById('map'), options);

    var marker = new google.maps.Marker({
        position : {
            lat : 41.4993,
            lng : -81.6944
        },
        map : map,

    });
    var infoWindow = new google.maps.infoWindow({});
}
</script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBodxd1y10yvBwDoy1REzINaTjtjcEpUb4&libraries=places&callback=initAutocomplete" async defer></script>
<script
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBodxd1y10yvBwDoy1REzINaTjtjcEpUb4&callback=initMap"
async defer></script>
</body>
</html>

<c:import url="/WEB-INF/jsp/footer.jsp" />