<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="newUserMessage">${message}</div>
<c:import url="/WEB-INF/jsp/header.jsp" />

<h1>Welcome Administrator</h1>

<c:url var="newUserHref" value="/newUser" />
<li><a href="${newUserHref}"><button>Create Doctor</button></a></li><br>

<c:url var="deleteDoctorHref" value="/deleteDoctor" />
<li><a href="${deleteDoctorHref}"><button>Delete Doctor</button></a></li><br>

<c:url var="deletePatientHref" value="/deletePatient" />
<li><a href="${deletePatientHref}"><button>Delete Patient</button></a></li><br>

<!-- <button>Manage Reviews</button>

<button>View Reviews</button> -->

<c:import url="/WEB-INF/jsp/footer.jsp" />