<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<table>
	<tr>
		<td><c:out value="First Name   "/></td>
		<td><c:out value="Last Name"/></td>
	</tr>
	<c:forEach var="doctor" items="${doctors}">
		<tr>
			<td><c:out value="${doctor.firstName}   "/></td>
			<td><c:out value="${doctor.lastName}"/></td>
			<td><form method="POST" action="${formAction}"><input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
				<input type="hidden" name="doctorId" value="${doctor.doctorId}"/>
				<input class="formSubmitButton" type="submit" value="DELETE"/></form></td>
		</tr>
	</c:forEach>
</table>

<c:import url="/WEB-INF/jsp/footer.jsp" />