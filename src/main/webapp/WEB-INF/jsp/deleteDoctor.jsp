<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<table>
	<c:forEach var="doctor" items="${doctors}">
		<tr>
			<td><c:out value="${doctor.firstName}"/></td>
			<td><c:out value="${doctor.lastName}"/></td>
			<c:url var="deleteThisDoctorUrl" value="/deleteDoctor?doctorId=${doctor.doctorId}"/>
			<td><a href="${deleteThisDoctorUrl}"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
		</tr>
	</c:forEach>
</table>

<c:import url="/WEB-INF/jsp/footer.jsp" />