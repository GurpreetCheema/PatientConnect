<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />


<h1> Patient Information </h1>
<div class=clearfix>

<h2>${patient.firstName}</h2>
<h2>${patient.lastName}</h2>
<h2>${patient.address}</h2>
<h2>${patient.city}</h2>
<h2>${patient.state}</h2>
<h2>${patient.zip}</h2>
<h2>${patient.email}</h2>
<h2>${patient.phone}</h2>
<h2>${patient.insurance}</h2>



</div>
	




<c:import url="/WEB-INF/jsp/footer.jsp" />