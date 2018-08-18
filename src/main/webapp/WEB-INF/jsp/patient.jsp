<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<!-- 						BOOKING BAR							 -->
<div class="acuity-booking-bar" style="display: none;">
	Patient Connect <a
		href="https://app.acuityscheduling.com/schedule.php?owner=16497853"
		target="_blank" class="acuity-embed-button"> Schedule Appointment
	</a>
</div>
<script src="https://embed.acuityscheduling.com/embed/bar/16497853.js"
	async></script>
<div class="reviewPost" style="display: none;">
<a href="/review" target="_blank" class="review-button">Review</a>
</div>
<h1 class= "patientInfoHead">Patient Information</h1>
<div class="buttons">
<button>Edit Info</button>
<button>Write A Review</button>
<button>Delete A Review</button>
<button>Message Doctor</button>
<button>Listen to Scott Stapp</button>
<button>Check Messages</button>
</div>
<div class=clearfix>
 <div class="container"> 
   </div>
<div class="patientInfo">
<br>
	<h3>First Name: ${patient.firstName} </h3>
	<hr>
	<h3>Last Name: ${patient.lastName} </h3>
	<hr>
	<h3>Address: ${patient.address}</h3> 
	<hr>
	<h3>City: ${patient.city}</h3>
	<hr>
	<h3>State: ${patient.state}</h3>
	<hr>
	<h3>Zip: ${patient.zip}</h3>
	<hr>
	<h3>Email: ${patient.email}</h3>
	<hr>
	<h3>Phone Number: ${patient.phone}</h3>
	<hr>
	<h3>Insurance: ${patient.insurance}</h3>
	<hr>
	</div>
	<br>
	<br>

	<!-- 						SCHEDULING BUTTON								 -->
	<a href="https://app.acuityscheduling.com/schedule.php?owner=16497853"
		target="_blank" class="acuity-embed-button"
		style="background: #00af32; color: #fff; padding: 8px 12px; border: 0px; -webkit-box-shadow: 0 -2px 0 rgba(0, 0, 0, 0.15) inset; -moz-box-shadow: 0 -2px 0 rgba(0, 0, 0, 0.15) inset; box-shadow: 0 -2px 0 rgba(0, 0, 0, 0.15) inset; border-radius: 4px; text-decoration: none; display: inline-block;">Schedule
		Appointment</a>
	<link rel="stylesheet"
		href="https://embed.acuityscheduling.com/embed/button/16497853.css"
		id="acuity-button-styles" />
	<script
		src="https://embed.acuityscheduling.com/embed/button/16497853.js"
		async></script>


</div>





<c:import url="/WEB-INF/jsp/footer.jsp" />