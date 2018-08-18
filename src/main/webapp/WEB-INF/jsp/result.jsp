<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />



<div>
	<h3 class="otherSaying">
		<c:out value="See what others are saying about ${doctor.first_name }!" />
	</h3>
	
<div class=otherDocSaying>

<h2>${review.firstName}</h2>
<h2>${doctor.rating}</h2>
<h2>${doctor.rating}</h2>

	
</div>	
	
	
	
	<%-- <div>
		<c:forEach items="${reviews}" var="review">
			<ul>
			<strong><li><c:out value="${Review.review}" /></li></strong>
				<c:choose>
					<c:when test="${review.starRating == 0}">
								No Rating
							</c:when>
					<c:otherwise>
						<c:url var="imageName" value="/img/${review.rating}-star.png" />
					</c:otherwise>
				</c:choose>



 --%>
			
			
			











		<c:import url="/WEB-INF/jsp/footer.jsp" />