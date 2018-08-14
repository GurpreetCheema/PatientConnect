<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<c:url var="doctorHomePageUrl" value="/"/>

<c:forEach var="doctor" items="${doctor}">









</c:forEach>

<c:import url="/WEB-INF/jsp/footer.jsp" />