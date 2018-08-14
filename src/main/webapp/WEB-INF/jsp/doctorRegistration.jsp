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













<c:import url="/WEB-INF/jsp/footer.jsp" />