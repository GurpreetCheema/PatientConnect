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

<div>

	<c:forEach items="${reviews}" var="review">
		<c:out value="${review.review}" />
		<c:out value="${review.rating}" />
	</c:forEach>
	
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />