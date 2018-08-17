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
<c:url var="formAction" value="/Review" />
<form class="newUserForm" method="POST" action="${formAction}">
	<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />

<div class="row">
	<div>
		<h3 class="docReview">Please submit your Review</h3>
	</div>
<div class="starRating">

 <c:url var ="starRatingUrl" value ="/img/1-star.png"/>
  <img src="${starRatingUrl}"/>
</div>		
<div class="col-sm-4"></div>
	<div>
	<fieldset class="docRating">
				<form:radiobutton path="review" id="star5" value="5" />
				<label class="full" for="star5" title="Amazing - 5 stars"></label>
				<form:radiobutton path="review" id="star4" value="4" />
				<label class="full" for="star4" title="Good - 4 stars"></label>
				<form:radiobutton path="review" id="star3" value="3" />
				<label class="full" for="star3" title="Alright - 3 stars"></label>
				<form:radiobutton path="review" id="star2" value="2" />
				<label class="full" for="star2" title="Nope - 2 stars"></label>
				<form:radiobutton path="review" id="star1" value="1" />
				<label class="full" for="star1" title="Never Again - 1 star"></label>
	</fieldset>
	<br>

		</div>
		<br>
		<div class="form-group">
			<div class="col-md-8">
				<label for="subject">Title: </label>
			</div>
			<input type="subject" class="form-control" placeholder="Required" />
		</div>
		<div class="form-group">
			<div class="col-md-8">
				<label for="description">Review: </label>
			</div>
			<input type="description" class="form-control" placeholder="Required" />
		</div>
		<div class="buttonMargin">
			<button type="submit" class="btn btn-default">Please Submit
				Your Review</button>
			<br>
		</div>
	</div>
	</div>
	</div>
	
	
	
	<c:import url="/WEB-INF/jsp/footer.jsp" />