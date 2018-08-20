<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />


<c:url var="formAction" value="/result" />
<form class="newUserForm" method="POST" action="${formAction}">
	<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />

<div>
	<h3 class="otherSaying">
		<c:out value="See what others are saying about ${doctor.first_name }!" />
	</h3>
	
<div class=otherDocSaying>

<h2>${review.firstName}</h2>
<h2>${doctor.rating}</h2>
<h2>${doctor.review}</h2>
</div>	

<div>

	<c:forEach items="${reviews}" var="review">
	<option value="${reviews.review_id}">
	<c:out value="${Reviews.review}" />
	<c:out value="${Reviews.rating}" />
	</c:forEach>
	
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />