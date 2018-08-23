<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<link rel="stylesheet"
	href="/maps/documentation/javascript/cgc/demos.css">

<div class="holdTogether">
<img src="/capstone/img/hosp.jpg"width="350" height="250" />
	<table class="patientPicAndinfo">
		<tr>
		<td class ="officeName"> ${office.name} </td>
		</tr>
		<tr>
		<td class ="officeAddress">${office.address}</td>
		</tr>
		<tr>
			<td class ="officeCityState">${office.city}, ${office.state} ${office.zip}
			</td>
		</tr>
		 <tr>
	<td class ="officePhone"><a href="https://www.prankdial.com/us">${office.phone}</td></a>
			<td class ="officePhone"><a href="/capstone/patient">Home Page</td></a>
	
		</tr>
	
</div>
	</table></div>
	
</div>
<h2>Meet our Doctors:</h2>

	<div class="threeImg">
		<figure>
			<img src="/capstone/img/Doctor1.jpg" width="136" height="200" />
			<blockquote>
				<p class="quotation">A doctor, with ability to heal patients
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
	
</div>
<div class ="spacebetweenMapandTable"></div>
<div class="getDirection">
	<form action="http://maps.google.com/maps" method="get" target="_blank">
   <input type="text" name="something" />
   <input type="hidden" name="something1" value="11031 Clifton Blvd.
Cleveland, OH 44102" />
   <input type="submit" value="Get directions" />
</form>

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
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />