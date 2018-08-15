<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<c:url var="docRegistrationHomePageUrl" value="/"/>
<!------------------- AZ-------------><script type="text/javascript">
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
<!-------------------------- GC---------------->
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

<p> <label for="Practice">Practice: </label></br> 	
<select name="practice" id="practice">
	<option value="AI"> Allergists/Immunologists </option>
	<option value="AS"> Anesthesiologists </option>
	<option value="CD"> Cardiologists </option>
	<option value="CR"> Colon and Rectal Surgeons </option>
	<option value="CM">Critical Care Medicine Specialists</option>
	<option value="DT"> Dermatologists </option>
	<option value="EN">Endocrinologists </option>
	<option value="EM"> Emergency Medicine Specialists </option>
	<option value="FD"> Family Physicians </option>
	<option value="GL"> Gastroenterologists </option>
	<option value="GM"> Geriatric Medicine Specialists </option>
	<option value="HM">Hematologists </option>
	<option value="HP"> Hospice and Palliative Medicine Specialists </option>
	<option value="ID"> Infectious Disease Specialists </option>
	<option value="IN"> Internists </option>
	<option value="MG"> Medical Geneticists </option>
	<option value="NP"> Nephrologists </option>
	<option value="NL"> Neurologists </option>
	<option value="OG"> Obstetricians and Gynecologists </option>
	<option value="ON"> Oncologists </option>
	<option value="OP"> Ophthalmologists </option>
	<option value="OS">Osteopaths </option>
	<option value="OT">Otolaryngologists </option>
	<option value="PT"> Pathologists </option>
	<option value="PD"> Pediatricians </option>
	<option value="PH"> Physiatrists </option>
	<option value="PS"> Plastic Surgeons </option>
	<option value="PD"> Podiatrists </option>
	<option value="PM"> Preventive Medicine Specialists </option>
	<option value="PS"> Psychiatrists </option>
	<option value="PN">Pulmonologists </option>
	<option value="RD"> Radiologists </option>
	<option value="RH"> Rheumatologists </option>
	<option value="SN">Sleep Medicine Specialists</option>
	<option value="SN"> Sports Medicine Specialists </option>
	<option value="GS"> General Surgeons </option>
	<option value="UR"> Urologists </option>
</select>				
</p>		
<!--  Submit button -->

<input class="formSubmitButton" type="submit" value="Submit" />
</div>

</form>

</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />
