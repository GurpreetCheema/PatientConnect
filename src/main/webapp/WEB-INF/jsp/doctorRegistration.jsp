<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<c:url var="docRegistrationHomePageUrl" value="/"/>
<script type="text/javascript">
	$(document).ready(function () {
		$.validator.addMethod('capitals', function(thing){
			return thing.match(/[A-Z]/);
		});
		$("form").validate({
			
			rules : {
				Name : {
					required : true
				},
				lastName : {
					required : true,
				},
				practice : {
					required : true,		 
				}
			},
			messages : {			
			
			},
			errorClass : "error"
		});
	});
</script>
<h3><em>Hello Doctor:</em></h3>
<div class="docLayout">

<h1 class=doctorRegistration>Please Fill Out The Information Below</h1>

<div class = "imgcontainer">
	<c:url var="imgSrcDoc" value="/img/docSideBar.jpg" />
	<a href="${homePageHref}"><img src="${imgSrcDoc}"
	class="responsiveDoctor" /></a>
</div>
</div>
<!-- <h3 class="heading" style="padding-left: 30px">  Please Fill out the Information below:</h3> -->
<br/>
  <div class="containerForm">

<div>


<c:url var="formAction" value="/doctorRegistration" />
<form method="POST" action="${formAction}">
	<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>


 <div class="formGroup">
	
	
<!-- First Name -->
	<label for="email"> First Name:</label> <br><input type="text"
	name="firstName" id="doctorFirstName" />
<br>	
<!-- Last Name -->
	<label for="doctorLastName"> Last Name:</label> <br><input type="text"
	name="lastName" id="doctorLastName" />
<br>

<p> <label for="Practice">Practice: </label><br> 	
<select name="practice" id="dropDown">
	<option value="Allergist/Immunologist"> Allergist/Immunologist </option>
	<option value="Anesthesiologist"> Anesthesiologist </option>
	<option value="Cardiologist"> Cardiologist </option>
	<option value="Colon and Rectal Surgeon"> Colon and Rectal Surgeon </option>
	<option value="Critical Care Medicine Specialist"> Critical Care Medicine Specialist</option>
	<option value="Dermatologist"> Dermatologist </option>
	<option value="Endocrinologist"> Endocrinologist </option>
	<option value="Emergency Medicine Specialist"> Emergency Medicine Specialist </option>
	<option value="Family Physician"> Family Physician </option>
	<option value="Gastroenterologist"> Gastroenterologist </option>
	<option value="Geriatric Medicine Specialist"> Geriatric Medicine Specialist </option>
	<option value="Hematologist"> Hematologist </option>
	<option value="Hospice and Palliative Medicine Specialist"> Hospice and Palliative Medicine Specialist </option>
	<option value="Infectious Disease Specialist"> Infectious Disease Specialist </option>
	<option value="Internist"> Internist </option>
	<option value="Medical Geneticist"> Medical Geneticist </option>
	<option value="Nephrologist"> Nephrologist </option>
	<option value="Neurologist"> Neurologist </option>
	<option value="Obstetrician and Gynecologist"> Obstetrician and Gynecologist </option>
	<option value="Oncologist"> Oncologist </option>
	<option value="Ophthalmologist"> Ophthalmologist </option>
	<option value="Osteopath"> Osteopath </option>
	<option value="Otolaryngologist"> Otolaryngologist </option>
	<option value="Pathologist"> Pathologist </option>
	<option value="Pediatrician"> Pediatrician </option>
	<option value="Physiatrist"> Physiatrist </option>
	<option value="Plastic Surgeon"> Plastic Surgeon </option>
	<option value="Podiatrist"> Podiatrist </option>
	<option value="Preventive Medicine Specialist"> Preventive Medicine Specialist </option>
	<option value="Psychiatrist"> Psychiatrist </option>
	<option value="Pulmonologist"> Pulmonologist </option>
	<option value="Radiologist"> Radiologist </option>
	<option value="Rheumatologist"> Rheumatologist </option>
	<option value="Sleep Medicine Specialist"> Sleep Medicine Specialist</option>
	<option value="Sports Medicine Specialist"> Sports Medicine Specialist </option>
	<option value="General Surgeon"> General Surgeon </option>
	<option value="Urologist"> Urologist </option>
</select>				
</p>		
<!--  Submit button -->

<input class="formSubmitButton" type="submit" value="Submit" />
</div>

</form>
</div>
</div>
</form>

<c:import url="/WEB-INF/jsp/footer.jsp" />
