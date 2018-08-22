<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="newUserMessage">${message}</div>
<c:import url="/WEB-INF/jsp/header.jsp" />

<h1>Delete Patients</h1>
<h4>clicking delete will remove patient as<br>
 	a user from program and database</h4><br>
 	
	<c:forEach var="patient" items="${patients}">
			<div class="deleteDoctorDiv">
				
					<div class="doctorName"><h3>${patient.firstName} ${patient.lastName}</h3></div>
					<div><form method="POST" action="${formAction}"><input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
						<input type="hidden" name="patientId" value="${patient.patientId}"/>
						<input class="formSubmitButton" type="submit" value="DELETE"/></form>
					</div>	
			</div>
		<c:out value="-----------------------------------------------------------------------"/>
	</c:forEach>
	
<c:import url="/WEB-INF/jsp/footer.jsp" />