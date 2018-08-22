<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<!-- 						VIEW ALL APPOINTMENTS				 -->
<iframe src="https://calendar.google.com/calendar/b/1/embed?showPrint=0&amp;showCalendars=0&amp;showTz=0&amp;mode=WEEK&amp;height=600&amp;wkst=1&amp;bgcolor=%23666666&amp;src=patientconnect1%40gmail.com&amp;color=%231B887A&amp;ctz=America%2FNew_York" 
style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>
<br/>

<!-- WHERE TO CANCEL APPOINTMENTS -->
<iframe src="https://secure.acuityscheduling.com/preferences.php?tab=calendarsowner=16497853&calendarID=2487129" width="100%" height="800" frameBorder="0" 
></iframe><script src="https://d3gxy7nm8y4yjr.cloudfront.net/js/embed.js" type="text/javascript"></script>
<br/>
https://secure.acuityscheduling.com/appointments.php

https://secure.acuityscheduling.com/preferences.php?tab=calendars

<div class="buttonsDoc">
<button>Edit Info</button>
<!-- BARB BUTTON -->
<a target="_blank" href="https://secure.acuityscheduling.com/preferences.php?tab=schedule&calendar=2487129">Change Availability</a>
<!-- MANTIS BUTTON -->
<a target="_blank" href="https://secure.acuityscheduling.com/preferences.php?tab=schedule&calendar=2473471">Change Availability</a>
<!-- JACK BUTTON -->
<a target="_blank" href="https://secure.acuityscheduling.com/preferences.php?tab=schedule&calendar=2473523">Change Availability</a>
<!-- MANAGE APPOINTMENTS BUTTON -->
<a target="_blank" href="https://secure.acuityscheduling.com/appointments.php?rs=1">Manage Appointments</a>

</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />