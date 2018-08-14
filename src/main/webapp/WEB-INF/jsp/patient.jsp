<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />
<c:url var="formAction" value="/Patient" />
<form method="POST" action="${formAction}">

<%-- 

<c:set var="pageTitle" value="patient Results"></c:set>

<c:url var="patient" value="/Patient"/> --%>




<h1> Patient Information </h1>
<c:forEach var="patients" items="${patient_id}">
<div class=clearfix>
<c:url var="patientDetailPageUrl" value="/patientRegistration/${patients.patient_id}"/>

	<div>
<h2>${patientRegistration.firstName}</h2>
<h2>${patientRegistration.lastName}</h2>
<h2>${patientRegistration.address}</h2>
<h2>${patientRegistration.city}</h2>
<h2>${patientRegistration.state}</h2>
<h2>${patientRegistration.zip}</h2>
<h2>${patientRegistration.email}</h2>
<h2>${patientRegistration.phone}</h2>
<h2>${patientRegistration.insurance}</h2>


</c:forEach>

</div>
	


<c:import url="/WEB-INF/jsp/footer.jsp" />














<c:import url="/WEB-INF/jsp/footer.jsp" />