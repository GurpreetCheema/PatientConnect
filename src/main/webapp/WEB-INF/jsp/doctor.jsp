<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />


<h1> Doctor Information </h1>
<div class=clearfixDoc>

<h2>${doctor.firstName}</h2>
<h2>${doctor.lastName}</h2>
<h2>${doctor.practice}</h2>



<c:import url="/WEB-INF/jsp/footer.jsp" />