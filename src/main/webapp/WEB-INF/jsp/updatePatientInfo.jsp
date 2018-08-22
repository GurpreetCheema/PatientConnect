
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />
<h3><em>Hello Patient:</em></h3>

<div class="patLayout">
<h1 class=patientRegistration><br>Update Your Information:</h1>
<div class ="imgcontainer">
</div>
</div>
<!-- <h3>Please Fill out the Information below:</h3> -->
<br/>
  <div class="container">
<div>
<c:url var="formAction" value="/updatePatientInfo" />
<form class="newUserForm" method="POST" action="${formAction}">
<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>

 <div class="formGroup">
	
	
<!-- First Name -->
	<label> First Name:</label> <br><input type="text"
	name="firstName" id="firstName" />
<br>	
<!-- Last Name -->
	<label for="patientLastName"> Last Name:</label> <br> <input type="text"
	name="lastName" id="lastName" />
<br>
<!--  Address -->
	<label for="patientAddress"> Street Address:</label> <br> <input type="text"
	name="address" id="address" />	
	<br>	
<!--  City -->
<label for="patientCity"> City:</label> <br> <input type="text"
	name="city" id="city" />	
<br>		
<!--  State -->	
	<p> <label for="state">State: </label><br> 	
<select name="state" id="dropDown">
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
		
<label for="patientZip"> Zip Code:</label><br> <input type="text"
name="zip" id="zip" />	
<!--  Email -->
	</br>					
<label for="patientEmail">Email:</label><br> <input type="text"
name="email" id="email" />	
</br>	
<!--  Phone Number -->	
<label for="patientPhone"> Phone number:</label><br> <input type="text"
name="phone" id="phone" />	
</br>
<!--  Insurance, Do we add few type of Insurances or getting them from somewhere, lets just put trumpCare -->

<label for="patientInsurance"> Name of Your Insurance Company:</label><br> <input type="text"
name="insurance" id="insurance" />				
<br>	
<!--  Submit button -->

<input class="formSubmitButton" type="submit" value="Submit" />
</div>

</form>
</div>
</div>



<c:import url="/WEB-INF/jsp/footer.jsp" />
	