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
<c:url var="formAction" value="/review" />
<form class="newUserForm" method="POST" action="${formAction}">
<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />

	<div class="row">
		<div>
			<h4 class="docReview" style="margin-top: 3%; color: white; font-weight: light;"><strong>PLEASE</strong> SUBMIT YOUR REVIEW</h4>
			<hr id="move" style="width:1000px;">
		</div>
		<div class="reviewAll">
			<p>
				<label for="docName"><h3>Doctor's Name:</h3> </label><br>

				<!-- 				DOCTOR DROPDOWN	¯\_( ( )_/¯				 -->

				<select name="doctorId" id="dropDown" style="width:150px;" >
					<c:forEach var="doctors" items="${doctorsDropdown}">
						<option value="${doctors.doctorId}">
							<c:out value="Dr. ${doctors.lastName}" />
						</option>
					</c:forEach>
				</select>
			</p>
	
		<div class="stars" style="margin-right: 90%;">		
			<input class="star star-5" id="star-5" type="radio" value="5" name="rating" /> 
				<label class="star star-5" for="star-5"></label> 
			<input class="star star-4" id="star-4" type="radio" value="4" name="rating" />
				<label class="star star-4" for="star-4"></label> 
			<input class="star star-3" id="star-3" type="radio" value="3" name="rating" />
				<label class="star star-3" for="star-3"></label> 
			<input class="star star-2" id="star-2" type="radio" value="2" name="rating" />
				<label class="star star-2" for="star-2"></label> 
			<input class="star star-1" id="star-1" type="radio" value="1" name="rating" />
				<label class="star star-1" for="star-1"></label>
		</div>


		<div class="form-groupReview">
			<input type="Text" class="form-control" name="review" 
				placeholder="Write Your Review Here" required />
		</div>
		<div class="buttonMargin">
			<button type="submit" class="btn btn-default">Submit
				Your Review</button>
			<img src="/img/docImageRev.jpg"/>
			<br>
			</div>
		</div>
	</div>
</form>



<c:import url="/WEB-INF/jsp/footer.jsp" />