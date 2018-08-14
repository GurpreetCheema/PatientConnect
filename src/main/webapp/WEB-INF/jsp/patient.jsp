<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div>

<!-- This will show info about Patient, So we have patient info show info name, address, phone, insurance
 -->
 <h3 class=“patient”>Patient Information</h3>
 <c:url var="Patient" value="/Patient"/>
<%--  <jsp:include page="/path/to/servlet" />
 --%> 
 <table class ="PatientInfo">
 
<tr>
	<td class="patInfo"> 
	<div id="patient-info">
	<c:url var="patientDetailPageUrl" value="/patientDetail/${patient.patient_id}"/>
	</td>
	

	<td class ="patientDesc">	<c:out value="${patient.patientDe}" /> <br></td>

	</tr>
	
</c:forEach>
	</table>


</div>
















<c:import url="/WEB-INF/jsp/footer.jsp" />