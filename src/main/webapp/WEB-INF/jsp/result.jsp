<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />


<c:url var="formAction" value="/result" />
<form class="newUserForm" method="POST" action="${formAction}">
	<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />

<%-- 	<div>
		<h3 class="otherSaying">
			
		<c:out value="See what others are saying about Dr. ${doctor.lastName}!" />
		</h3>

		<div class=otherDocSaying></div> --%>

		<!-- 				DOCTOR DROPDOWN	¯\_( ( )_/¯				 -->
	<div class="buttonDoc">
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
			</div>
		</form>
		<div class="docRevAll">
			<c:forEach var="doctors" items="${docName}">
				<div class="docImage">
					<img src="/capstone/img/Doctor${doctors.doctorId}.jpg">
				</div>
				<div class="allButPic">
					<c:out value="Dr. ${doctors.firstName} ${doctors.lastName} " />
					<br>
					<h3
						style="font-style: italic; font-weight: lighter; margin-top: 0%; margin-bottom: -7%;">
						<c:out value="${doctors.practice}" />
					</h3>

					<br />
					<c:forEach items="${docReviews}" var="review">

						<div class="starImg">
							<br>
							<h4 style="margin-bottom: -10px;">
								<em>Anonymous:</em>
							</h4>
							<img src="/capstone/img/star-${review.rating}.png" />
						</div>
						<h4 style="font-weight: lighter; margin-bottom: 0%;">

							<c:out value="${review.review}" />
							<hr>
						</h4>

					</c:forEach>
			</c:forEach>
		</div>
	<!-- </div>
	</div> -->

	<c:import url="/WEB-INF/jsp/footer.jsp" />