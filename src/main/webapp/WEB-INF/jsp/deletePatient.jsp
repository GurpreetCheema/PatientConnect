<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<h1>Delete Patients</h1>
<h4>clicking delete will remove patient as a<br>
 	user from program and database</h4>

	<c:forEach var="patient" items="${patients}">
				<div class="deleteDoctorDiv">
				<div><form method="POST" action="${formAction}"><input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
					<input type="hidden" name="patientId" value="${patient.patientId}"/>
					<input class="formSubmitButton" type="submit" value="DELETE"/></form></div>
				
					<div></div><c:out value="${patient.firstName} ${patient.lastName}"/><br>
				</div>
	</c:forEach>
<c:import url="/WEB-INF/jsp/footer.jsp" />