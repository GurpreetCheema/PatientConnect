<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<h1>Welcome Administrator</h1>

<c:url var="newUserHref" value="/newUser" />
<li><a href="${newUserHref}">Create Doctor</a></li>

<!-- <button>Create Doctor</button>

<button>Delete Doctor</button>

<button>Delete Patient</button>

<button>Manage Reviews</button>

<button>View Reviews</button> -->

<c:import url="/WEB-INF/jsp/footer.jsp" />