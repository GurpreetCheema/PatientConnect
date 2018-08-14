
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div>
<h3 class=“patientRegistration”>Hello Patient!</h3>
<h1>Please Fill out the Information below:</h1>
<br/>
<c:url var="formAction" value="/patientRegistration" />
<form method="POST" action="${formAction}">

<%-- <form action="${submitPatientRegistration}" method="POST" >
 --%>	
 <div class="formGroup">
	
<!-- First Name -->
	<label for="email"> Enter your first name:</label> <input type="text"
	name="patientFirstName" id="patientFirstName" />
	
<!-- Last Name -->
	<label for="patientLastName"> Enter your last name:</label> <input type="text"
	name="patientLastName" id="patientLastName" />
	
<!--  Address -->
	<label for="patientAddress"> Enter your Street Address:</label> <input type="text"
	name="patientAddress" id="patientAddress" />	
		
<!--  City -->
<label for="patientCity"> Enter your City:</label> <input type="text"
	name="patientCity" id="patientCity" />	
		
<!--  State -->	
	<p> <label for="state">Enter your State: </label> 	
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
		
<label for="patientZip"> Enter your Zip Code:</label> <input type="text"
name="patientZip" id="patientZip" />	
<!--  Email -->
						
<label for="patientEmail"> Enter your Email:</label> <input type="text"
name="patientEmail" id="patientEmail" />	
	
<!--  Phone Number -->	
<label for="patientPhone"> Enter your Phone number:</label> <input type="text"
name="patientPhone" id="patientPhone" />	

<!--  Insurance, Do we add few type of Insurances or getting them from somewhere, lets just put trumpCare -->

<label for="patientInsurance"> Enter your Phone number:</label> <input type="text"
name="patientInsurance" id="patientInsurance" />				
	
<!--  Submit button -->

<input class="formSubmitButton" type="submit" value="Submit" />
</div>

</form>

</div>

	