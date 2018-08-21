<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<!-- 						VIEW ALL APPOINTMENTS				 -->
<iframe src="https://calendar.google.com/calendar/b/1/embed?showPrint=0&amp;showCalendars=0&amp;showTz=0&amp;mode=WEEK&amp;height=600&amp;wkst=1&amp;bgcolor=%23666666&amp;src=patientconnect1%40gmail.com&amp;color=%231B887A&amp;ctz=America%2FNew_York" 
style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>
<br/>

<!-- WHERE TO CANCEL APPOINTMENTS -->
<iframe src="https://secure.acuityscheduling.com/appointments.php" 
style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>
<br/>
https://secure.acuityscheduling.com/appointments.php

<c:import url="/WEB-INF/jsp/footer.jsp" />