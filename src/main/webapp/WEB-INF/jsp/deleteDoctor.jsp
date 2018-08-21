<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<h1>Delete Doctors</h1>
<h4>clicking delete will remove doctor as a<br>
 	user from program and database</h4>

	<c:forEach var="doctor" items="${doctors}">
				<div class="deleteDoctorDiv">
				<div><form method="POST" action="${formAction}"><input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
					<input type="hidden" name="doctorId" value="${doctor.doctorId}"/>
					<input class="formSubmitButton" type="submit" value="DELETE"/></form></div>
				
					<div></div><c:out value="Dr. ${doctor.firstName} ${doctor.lastName}"/><br>
				</div>
	</c:forEach>
<c:import url="/WEB-INF/jsp/footer.jsp" />