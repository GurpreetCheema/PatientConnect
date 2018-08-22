<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<link rel="stylesheet" href="/maps/documentation/javascript/cgc/demos.css">
<h2>View Office information Below:</h2>
<div class="containerplanet1">
  <div class="planet"></div>
  <div class="rocket"></div>
</div>

<%--  <h1 class="greeting">Hello, ${patient.firstName} ${patient.lastName}</h1>
 --%><!-- <table class= "patientTable" style="width:40%">
 -->
<div class = "address">
<div class=addressOffice1>
Patient Connect Office <br>
11031 Clifton Blvd.<br>
Cleveland, OH 44102<br>
Phone # : 216-212-2666 <br>
</div>
<!-- <div class ="nameDoc">
	<p>Dr.Toboggan</p>
	<p>Dr.Kevorkian</p>
	<p>Dr.Hooks</p>
</div> -->


<div>
<figure>
<img src="/capstone/img/Doctor1.jpg"
    width="136" height="200"/>
 <figcaption>Dr.Toboggan</figcaption>
</figure>
<figure>
<img src="/capstone/img/Doctor2.jpg"
    width="136" height="200"/>
 <figcaption>Dr.Kevorkian</figcaption>
</figure>

<figure>
<img src="/capstone/img/Doctor3.jpg"
    width="136" height="200"/>
 <figcaption>Dr.Hooks</figcaption>
</figure>


</div>
 
<!--   <p><img src="/img/Doctor1.jpg"
    width="136" height="200"
    alt="Dr.Toboggan">
  <figcaption>Dr.Toboggan</figcaption>
</figure>
<figure>
  <p><img src="/img/Doctor2.jpg"
    width="136" height="200"
    alt="Kevorkian">
  <figcaption>Dr.Kevorkian</figcaption>
</figure>

<figure>
  <p><img src="/img/Doctor3.jpg"
    width="136" height="200"
    alt="Dr.	Hooks">
  <figcaption>Dr.Hooks</figcaption>
</figure> -->






<%-- <div class ="threeMusketeer">
	<span class="tooltiptext">Dr.Toboggan</span>
	<c:url var="imgSrcDoc" value="/img/Doctor1.jpg" />
	<a href="${homePageHref}"><img src="${imgSrcDoc}"
	class="responsiveDoctorOffice" /></a>
	
		 <span class="tooltiptext">Dr.Kevorkian</span>
	
	<c:url var="imgSrcDoc" value="/img/Doctor2.jpg" />
	<a href="${homePageHref}"><img src="${imgSrcDoc}"
	class="responsiveDoctorOffice" /></a>
			 <span class="tooltiptext">Dr.Hooks</span>
	
	<c:url var="imgSrcDoc" value="/img/Doctor3.jpg" />
	<a href="${homePageHref}"><img src="${imgSrcDoc}"
	class="responsiveDoctorOffice" /></a>

</div> --%>
<div id ="spaceBetweenMapandDoc">
</div>
<div id="map">
<script>
function initMap() {
var options = {
zoom : 12,
center : {
lat : 41.5022739,
lng : -81.6223497
}}
 var map = new google.maps.Map(document.getElementById('map'), options);
 var marker = new google.maps.Marker({
        position : {
            lat : 41.5022739,
            lng : -81.6223497},
        map : map,
    });
    var infoWindow = new google.maps.infoWindow({});
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBodxd1y10yvBwDoy1REzINaTjtjcEpUb4&callback=initMap"
async defer></script>
</div>
</div>	

<c:import url="/WEB-INF/jsp/footer.jsp" />