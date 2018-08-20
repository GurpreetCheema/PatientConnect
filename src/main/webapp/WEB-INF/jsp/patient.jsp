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
<button>Check Messages</button>
<button>Delete Messages</button>
</div>
<div class=clearfix>
<br>
<div class="patientInfo">
<br>
<img class="patImage" src="img/patientSideBar.jpg" alt="doctorWho">
<table class= "patientTable" style="width:40%">
  <tr>
    <th>First Name:</th>
    <td>${patient.firstName}</td>
    <hr>
  </tr>
  <tr>
    <th>Last Name: </th>
    <td>${patient.lastName}</td>
  </tr>
    <tr>
    <th>Address: </th>
    <td>${patient.address}</td>
  </tr>
  <tr>
    <th>City: </th>
    <td>${patient.city}</td>
  </tr>
  <tr>
    <th>State: </th>
    <td>${patient.state}</td>
  </tr>
  <tr>
    <th>Zip: </th>
    <td>${patient.zip}</td>
  </tr>
  <tr>
    <th>Email: </th>
    <td>${patient.email}</td>
  </tr>
  <tr>
    <th>Phone Number: </th>
    <td>${patient.phone}</td>
  </tr>
        <tr>
    <th>Insurance: </th>
    <td>${patient.insurance}</td>
  </tr>
    <br>
    <br>
  
</table>
	</div>
	<br>
	<br>

	<!-- 						SCHEDULING BUTTON								 -->
	<a href="https://app.acuityscheduling.com/schedule.php?owner=16497853"
		target="_blank" class="acuity-embed-button"
		style="background: #00af32; color: #fff; padding: 8px 12px; border: 0px;
		 -webkit-box-shadow: 0 -2px 0 rgba(0, 0, 0, 0.15) inset;
		  -moz-box-shadow: 0 -2px 0 rgba(0, 0, 0, 0.15) inset; 
		  box-shadow: 0 -2px 0 rgba(0, 0, 0, 0.15) inset; 
		  border-radius: 4px; text-decoration: none; 
		  display: inline-block; margin-top: 20px;" >
		  Schedule Appointment</a>
	<link rel="stylesheet"
		href="https://embed.acuityscheduling.com/embed/button/16497853.css"
		id="acuity-button-styles" />
	<script
		src="https://embed.acuityscheduling.com/embed/button/16497853.js"
		async></script>


</div>





<c:import url="/WEB-INF/jsp/footer.jsp" />