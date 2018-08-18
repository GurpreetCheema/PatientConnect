<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<script type="text/javascript">
	$(document).ready(function() {
		$.validator.addMethod('rating', function(value) {
			return thing.match(/[1-5]/);
		});
		$("form").validate({
			rules : {
				rating : {
					required : true,
					rating : true,
				},
				subject : {
					required : true,
				},

			},
			messages : {
				rating : {
					required : "required",
					rating : "Rating is required"
				},
				subject : {
					required : "required",
				},

			},
			errorClass : "error"
		});
	});
</script>
<c:url var="formAction" value="/result" />
<form class="newUserForm" method="POST" action="${formAction}">
	<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />

<div class="row">
	<div>
		<h3 class="docReview">Please submit your Review</h3>
	</div>
	<div>	
<p> <label for="docName">Doctor's Name: </label><br> 	
<select name="docNAME" id="dropDown">
	<option value="ZC">Pick your Doctor</option>

	<option value="ZC">Dr. what name</option>
	<option value="ZC">Dr. what name1</option>
	<option value="ZC">Dr. what name2</option>
	<option value="ZC">Dr. what name3</option>
	
</select>				
</p>	
</div>	
<div class="stars">
  <form action="">
    <input class="star star-5" id="star-5" type="radio" name="star"/>
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" id="star-4" type="radio" name="star"/>
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" id="star-3" type="radio" name="star"/>
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" id="star-2" type="radio" name="star"/>
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" id="star-1" type="radio" name="star"/>
    <label class="star star-1" for="star-1"></label>
  </form>
</div>	
	

		<div class="form-group">
		
			<input type="description" class="form-control" placeholder="Write Review Here" />
		</div>
		<div class="buttonMargin">
			<button type="submit" class="btn btn-default">Please Submit
				Your Review</button>
			<br>
		</div>
	</div>

	
	
	
	<c:import url="/WEB-INF/jsp/footer.jsp" />