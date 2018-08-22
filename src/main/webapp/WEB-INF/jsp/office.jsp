<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<link rel="stylesheet"
	href="/maps/documentation/javascript/cgc/demos.css">
<h2>Meet our Doctors:</h2>

<div class="holdTogether">
	<div class="threeImg">
		<figure>
			<img src="/capstone/img/Doctor1.jpg" width="136" height="200" />
			<blockquote>
				<p class="quotation">A doctor who not only like to heal patients
					but bring happiness in their lives by telling them It's always
					sunny.</p>
				<footerdoc> Dr.Toboggan</footerdoc>
			</blockquote>
		</figure>
		<figure>
			<img src="/capstone/img/Doctor2.jpg" width="136" height="200" />

			<blockquote>
				<p class="quotation">What I think a doctor should do is prevent
					disease, by any means necessary.</p>
				<footerdoc> Dr.Kervorkian</footerdoc>
			</blockquote>


			<figcaption>.</figcaption>
		</figure>
		<figure>
			<img src="/capstone/img/Doctor3.jpg" width="136" height="200" />

			<blockquote>
				<p class="quotation">Live simply so that others may simply live.
					.</p>
				<footerdoc> Dr.Hooks</footerdoc>
			</blockquote>
		</figure>

	</div>
	<table class="address">
		<tr>
			<td> ${office.name}</td>
		</tr>
		<tr>
			<td>${office.address}</td>
		</tr>
		<tr>
			<td>${office.city}</td>
		</tr>
		<tr>
			<td>${office.state}</td>
		</tr>
		
		
		<tr>
			<td>${office.zip}</td>
		</tr>

		<td>${office.phone}</td>
		</tr>
		<br>
		<br>
	</table>
</div>

</div>
<div class ="spacebetweenMapandTable"></div>

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
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />