<<<<<<< HEAD
=======

>>>>>>> 0779aa067667d014ad96778c62990525baf14241
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<<<<<<< HEAD
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













<c:import url="/WEB-INF/jsp/footer.jsp" />
=======
<div>
<h3 class=�doctorRegistration”>Hello Doctor!</h3>
<h1>Please Fill out the Information below:</h1>
<br/>
<c:url var="formAction" value="/doctorRegistration" />
<form method="POST" action="${formAction}">


 <div class="formGroup">
	
	
<!-- First Name -->
	<label for="email"> First Name:</label> <input type="text"
	name="doctorFirstName" id="doctorFirstName" />
</br>	
<!-- Last Name -->
	<label for="doctorLastName"> Last Name:</label> <input type="text"
	name="dcotorLastName" id="doctorLastName" />
</br>
<!--  Address -->
	<label for="doctorAddress"> Street Address:</label> <input type="text"
	name="doctorAddress" id="doctorAddress" />	
	</br>	
<!--  City -->
<label for="doctorCity"> City:</label> <input type="text"
	name="doctorCity" id="doctorCity" />	
</br>		
<!--  State -->	
	<p> <label for="state">State: </label> 	
<select name="state" id="state">
	<option value="AL">Alabama</option>
	<option value="AK">Alaska</option>
	<option value="AZ">Arizona</option>
	<option value="AR">Arkansas</option>
	<option value="CA">California</option>
	<option value="CO">Colorado</option>
	<option value="CT">Connecticut</option>
	<option value="DE">Delaware</option>
	<option value="DC">District Of Columbia</option>
	<option value="FL">Florida</option>
	<option value="GA">Georgia</option>
	<option value="HI">Hawaii</option>
	<option value="ID">Idaho</option>
	<option value="IL">Illinois</option>
	<option value="IN">Indiana</option>
	<option value="IA">Iowa</option>
	<option value="KS">Kansas</option>
	<option value="KY">Kentucky</option>
	<option value="LA">Louisiana</option>
	<option value="ME">Maine</option>
	<option value="MD">Maryland</option>
	<option value="MA">Massachusetts</option>
	<option value="MI">Michigan</option>
	<option value="MN">Minnesota</option>
	<option value="MS">Mississippi</option>
	<option value="MO">Missouri</option>
	<option value="MT">Montana</option>
	<option value="NE">Nebraska</option>
	<option value="NV">Nevada</option>
	<option value="NH">New Hampshire</option>
	<option value="NJ">New Jersey</option>
	<option value="NM">New Mexico</option>
	<option value="NY">New York</option>
	<option value="NC">North Carolina</option>
	<option value="ND">North Dakota</option>
	<option value="OH">Ohio</option>
	<option value="OK">Oklahoma</option>
	<option value="OR">Oregon</option>
	<option value="PA">Pennsylvania</option>
	<option value="RI">Rhode Island</option>
	<option value="SC">South Carolina</option>
	<option value="SD">South Dakota</option>
	<option value="TN">Tennessee</option>
	<option value="TX">Texas</option>
	<option value="UT">Utah</option>
	<option value="VT">Vermont</option>
	<option value="VA">Virginia</option>
	<option value="WA">Washington</option>
	<option value="WV">West Virginia</option>
	<option value="WI">Wisconsin</option>
	<option value="WY">Wyoming</option>
</select>				
</p>		
<!--  Zip Code -->
		
<label for="doctorZip"> Zip Code:</label> <input type="text"
name="doctorZip" id="doctorZip" />	
<!--  Email -->
	</br>					
<label for="doctorEmail">Email:</label> <input type="text"
name="doctorEmail" id="doctorEmail" />	
</br>	
<!--  Phone Number -->	
<label for="doctorPhone"> Phone number:</label> <input type="text"
name="doctorPhone" id="doctorPhone" />	
</br>
<!--  Insurance, Do we add few type of Insurances or getting them from somewhere, lets just put trumpCare -->

<label for="dcotorInsurance"> Name of Your Insurance Company:</label> <input type="text"
name="doctorInsurance" id="doctorInsurance" />				
</br>	
<!--  Submit button -->

<input class="formSubmitButton" type="submit" value="Submit" />
</div>

</form>

</div>



<c:import url="/WEB-INF/jsp/footer.jsp" />
	
>>>>>>> 0779aa067667d014ad96778c62990525baf14241
