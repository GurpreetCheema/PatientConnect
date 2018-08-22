<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<link rel="stylesheet"
	href="/maps/documentation/javascript/cgc/demos.css">
<h2>View Office information Below:</h2>

<div class="holdTogether">

	<div class="address">
		Patient Connect Office <br> 11031 Clifton Blvd.<br>
		Cleveland, OH 44102<br> Phone # : 216-212-2666 <br>
	</div>

	<div class="threeImg">
		<figure>
			<img src="/capstone/img/Doctor1.jpg" width="136" height="200" />
			<figcaption>Dr.Toboggan</figcaption>
		</figure>
		<figure>
			<img src="/capstone/img/Doctor2.jpg" width="136" height="200" />
			<figcaption>Dr.Kevorkian</figcaption>
		</figure>
		<figure>
			<img src="/capstone/img/Doctor3.jpg" width="136" height="200" />
			<figcaption>Dr.Hooks</figcaption>
		</figure>

	</div>
</div>


<div id="map">
	<script>
		function initMap() {
			var options = {
				zoom : 12,
				center : {
					lat : 41.5022739,
					lng : -81.6223497
				}
			}
			var map = new google.maps.Map(document.getElementById('map'),
					options);
			var marker = new google.maps.Marker({
				position : {
					lat : 41.5022739,
					lng : -81.6223497
				},
				map : map,
			});
			var infoWindow = new google.maps.infoWindow({});
		}
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBodxd1y10yvBwDoy1REzINaTjtjcEpUb4&callback=initMap"
		async defer></script>
</div>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />