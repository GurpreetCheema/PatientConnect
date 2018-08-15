<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<!-- 						BOOKING BAR							 -->
<div class="acuity-booking-bar" style="display: none;">Patient Connect<a href="https://app.acuityscheduling.com/schedule.php?owner=16497853" target="_blank" class="acuity-embed-button">Schedule Appointment</a></div>
<script src="https://embed.acuityscheduling.com/embed/bar/16497853.js" async></script>

<!-- 						APPOINTMENT SCHEDULER				 -->
<iframe src="https://app.acuityscheduling.com/schedule.php?owner=16497853" width="100%" height="800" frameBorder="0"></iframe>
<script src="https://d3gxy7nm8y4yjr.cloudfront.net/js/embed.js" type="text/javascript"></script>


<!-- 						BUTTON								 -->
<a href="https://app.acuityscheduling.com/schedule.php?owner=16497853" target="_blank" 
class="acuity-embed-button" style="background: #00af32; color: #fff; 
padding: 8px 12px; border: 0px; -webkit-box-shadow: 0 -2px 0 rgba(0,0,0,0.15) inset;-moz-box-shadow: 0 -2px 0 rgba(0,0,0,0.15) inset;
box-shadow: 0 -2px 0 rgba(0,0,0,0.15) inset;border-radius: 4px; text-decoration: none; display: inline-block;">Schedule Appointment</a>
<link rel="stylesheet" href="https://embed.acuityscheduling.com/embed/button/16497853.css" id="acuity-button-styles" />
<script src="https://embed.acuityscheduling.com/embed/button/16497853.js" async></script>

<c:import url="/WEB-INF/jsp/footer.jsp" />