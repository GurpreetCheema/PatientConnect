
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<script type="text/javascript">
	$(document).ready(function () {
	
		$("form").validate({
			
			rules : {
				name : {
					required : true
				},
				address : {
					required : true
				},
				city : {
					required : true
				},
				state : {
					required : true
				},
				zip : {
					required : true
				},
				phone : {
					required : true
				}
			},
			errorClass : "error"
		});
	});
</script>

<h1>Update Office Info</h1>
<div class= "patLayout">
<h1 class=patientRegistration><br>Please Fill Out The Information Below</h1>
<div class = "imgcontainer">
</div>
</div>
<!-- <h3>Please Fill out the Information below:</h3> -->
<br/>
  <div class="container">
<div>
<c:url var="formAction" value="/updateOffice" />
<form class="newUserForm" method="POST" action="${formAction}">
<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>

 <div class="formGroup">

<!-- Name -->
	<label for="officeName"> Practice Name:</label> <br> <input type="text"
	name="name" id="name" />
<br>
<!--  Address -->
	<label for="officeAddress"> Street Address:</label> <br> <input type="text"
	name="address" id="address" />
	<br>	
<!--  City -->
<label for="officeCity"> City:</label> <br> <input type="text"
	name="city" id="city" />
<br>		
<!--  State -->	
	<p> <label for="state">State: </label><br> 	
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
<label for="officeZip"> Zip Code:</label><br> <input type="text"
name="zip" id="zip" /><br>	
<!--  Phone Number -->	
<label for="officePhone"> Phone number:</label><br> <input type="text"
name="phone" id="phone" />	
</br>
<!--  Submit button -->

<input class="formSubmitButton" type="submit" value="Submit" />
</div>

</form>
</div>
</div>



<c:import url="/WEB-INF/jsp/footer.jsp" />