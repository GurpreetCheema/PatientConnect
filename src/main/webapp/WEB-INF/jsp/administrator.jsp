<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<h1>Welcome Administrator</h1>

<c:url var="newUserHref" value="/newUser" />
<li><a href="${newUserHref}"><button>Create Doctor</button></a></li>



<c:url var="deleteDoctorHref" value="/deleteDoctor" />
<li><a href="${deleteDoctorHref}">Delete Doctor</a></li>

<!--<button>Delete Doctor</button>

<button>Delete Patient</button>

<button>Manage Reviews</button>

<button>View Reviews</button> -->

<c:import url="/WEB-INF/jsp/footer.jsp" />