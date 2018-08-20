<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />


<h1 class="whatsUpDoc"> <strong>Welcome</strong> Dr. ${doctor.lastName} </h1>
<div class="buttonsDoc">
<button>Edit Info</button>
<a href="/capstone/appointment">View Appointments</a>
<button>Prescribe Medication</button>
<button>Message A Patient</button>
<a href="https://www.spotify.com/us/">Listen to Spotify</a>
</div>
<div class=infoDoc>
<%-- 	<h3><strong>First</strong> Name:</h3> 
		<h2>${doctor.firstName}</h2>
	<h3><strong>Last</strong> Name:</h3> 
		<h2>${doctor.lastName}</h2> --%>
	<h3><strong>Practice</strong> Type:</h3> 
		<h2>${doctor.practice}</h2>
</div>
<div class="appointmentsDoc">
<iframe src="https://calendar.google.com/calendar/b/1/embed?showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;mode=WEEK&amp;height=600&amp;wkst=1&amp;bgcolor=%2333cc00&amp;src=patientconnect1%40gmail.com&amp;color=%231B887A&amp;ctz=America%2FNew_York" 
style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>
</div>



<c:import url="/WEB-INF/jsp/footer.jsp" />