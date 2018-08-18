<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />


<h1> Welcome Dr. ${doctor.lastName} </h1>
<div class="buttons">
<button>Edit Info</button>
<button href="/appointment">View Appointments</button>
<button>Prescribe Medication</button>
<button>Message A Patient</button>
<button>Listen to Scott Stapp</button>
</div>
<div class=clearfixDoc>

<h2>${doctor.firstName}</h2>
<h2>${doctor.lastName}</h2>
<h2>${doctor.practice}</h2>

<form action=""></form>

<c:import url="/WEB-INF/jsp/footer.jsp" />