
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div>
<h3 class=â€doctorRegistrationâ€>Hello Doctor!</h3>
<h1>Please Fill out the Information below:</h1>
<br/>
<c:url var="formAction" value="/doctorRegistration" />
<form method="POST" action="${formAction}">


 <div class="formGroup">
	
	
<!-- First Name -->
	<label for="email"> First Name:</label> </br><input type="text"
	name="doctorFirstName" id="doctorFirstName" />
</br>	
<!-- Last Name -->
	<label for="doctorLastName"> Last Name:</label> </br><input type="text"
	name="dcotorLastName" id="doctorLastName" />
</br>
				
<label for="doctorPractice"> Practice:</label></br> <input type="text"
	name="dcotorLastName" id="doctorLastName" />
</br>
<!--  Submit button -->

<input class="formSubmitButton" type="submit" value="Submit" />
</div>

</form>

</div>



<c:import url="/WEB-INF/jsp/footer.jsp" />
	