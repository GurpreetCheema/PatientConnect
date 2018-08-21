<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />


<c:url var="formAction" value="/result" />
<form class="newUserForm" method="POST" action="${formAction}">
	<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />

<div>
	<h3 class="otherSaying"><%-- 
		<c:out value="See what others are saying about Dr. ${doctor.lastName}!" /> --%>
	</h3>
	
<div class=otherDocSaying>

</div>	

				<!-- 				DOCTOR DROPDOWN	¯\_( ( )_/¯				 -->

<c:url var="formAction" value="/result" />
<form class="newUserForm" method="POST" action="${formAction}">
<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
	<select name="doctorId" id="dropDown">
		<c:forEach var="doctors" items="${doctorsDropdown}">
			<option value="${doctors.doctorId}">
				<c:out value="Dr. ${doctors.lastName}" />
			</option>
		</c:forEach>
	</select>
		<div class="buttonMargin">
			<button type="submit" class="btn btn-default">Submit</button>
			<br>
		</div>
</form>
<div>

</div>
 <c:forEach var="doctors" items="${docName}" >
	<div class ="docImage">
		<img src="/capstone/img/Doctor${doctors.doctorId}.jpg">
	</div>
		<c:out value="${doctors.lastName}, " />
		<c:out value="${doctors.firstName}" />
		<c:out value="${doctors.practice}" />
	<br/> 
	<c:forEach items="${docReviews}" var="review">

		<c:out value="${review.rating}" />
			<br/>
		<c:out value="${review.review}" />
	</c:forEach> 
</c:forEach> 
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />