<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<!-- 						BOOKING BAR							 -->
<div class="acuity-booking-bar" style="display: none;">Patient Connect<a href="https://app.acuityscheduling.com/schedule.php?owner=16497853" target="_blank" class="acuity-embed-button">Schedule Appointment</a></div>
<script src="https://embed.acuityscheduling.com/embed/bar/16497853.js" async></script>

<h1> Patient Information </h1>
<div class=clearfix>

<h2>${patient.firstName}</h2>
<h2>${patient.lastName}</h2>
<h2>${patient.address}</h2>
<h2>${patient.city}</h2>
<h2>${patient.state}</h2>
<h2>${patient.zip}</h2>
<h2>${patient.email}</h2>
<h2>${patient.phone}</h2>
<h2>${patient.insurance}</h2>
<br/>

<!-- 						SCHEDULING BUTTON								 -->
<a href="https://app.acuityscheduling.com/schedule.php?owner=16497853" target="_blank" 
class="acuity-embed-button" style="background: #00af32; color: #fff; 
padding: 8px 12px; border: 0px; -webkit-box-shadow: 0 -2px 0 rgba(0,0,0,0.15) inset;-moz-box-shadow: 0 -2px 0 rgba(0,0,0,0.15) inset;
box-shadow: 0 -2px 0 rgba(0,0,0,0.15) inset;border-radius: 4px; text-decoration: none; display: inline-block;">Schedule Appointment</a>
<link rel="stylesheet" href="https://embed.acuityscheduling.com/embed/button/16497853.css" id="acuity-button-styles" />
<script src="https://embed.acuityscheduling.com/embed/button/16497853.js" async></script>


</div>
	




<c:import url="/WEB-INF/jsp/footer.jsp" />