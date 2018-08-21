<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<link rel="stylesheet" href="/maps/documentation/javascript/cgc/demos.css">
<h3>View Office information Below:</h3>
 <h1 class="greeting">Hello, ${patient.firstName} ${patient.lastName}</h1>
<table class= "patientTable" style="width:40%">

<div>
	<c:url var="imgSrcDoc" value="/img/Doctor1.jpg" />
	<a href="${homePageHref}"><img src="${imgSrcDoc}"
	class="responsiveDoctorT" /></a>
	<c:url var="imgSrcDoc" value="/img/Doctor2.jpg" />
	<a href="${homePageHref}"><img src="${imgSrcDoc}"
	class="responsiveDoctorK" /></a>
	<c:url var="imgSrcDoc" value="/img/Doctor3.jpg" />
	<a href="${homePageHref}"><img src="${imgSrcDoc}"
	class="responsiveDoctorH" /></a>
	
</div>	
<c:forEach var="office" items="${officeInfo}">
<div>
<h2>${office.name}</h2>
<h2>${office.address}</h2>
<h2>${office.city}</h2>
<h2>${office.state}</h2>
<h2>${office.zip}</h2>
<h2>${office.practice}</h2>
<h2>${office.phone}</h2>
</div> 




</c:forEach>
<div id="map"></div>

<script>
function initMap() {
var options = {
zoom : 12,
center : {
lat : 41.4993,
lng : -81.6944
}}
 var map = new google.maps.Map(document.getElementById('map'), options);
 var marker = new google.maps.Marker({
        position : {
            lat : 41.4993,
            lng : -81.6944},
        map : map,
    });
    var infoWindow = new google.maps.infoWindow({});
}
</script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBodxd1y10yvBwDoy1REzINaTjtjcEpUb4&libraries=places&callback=initAutocomplete" async defer></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBodxd1y10yvBwDoy1REzINaTjtjcEpUb4&callback=initMap"
async defer></script>
</body>
</html>

<c:import url="/WEB-INF/jsp/footer.jsp" />