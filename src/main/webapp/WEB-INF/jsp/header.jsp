<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Patient Connect</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
	    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.js "></script>
	    <script src="https://cdn.jsdelivr.net/jquery.timeago/1.4.1/jquery.timeago.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	    <c:url var="cssHref" value="./css/main.css" />
	    	<c:url var="styleCssHref" value="./css/style.css" />
	    	<c:url var="adminCssHref" value="./css/admin.css" />
	    
		<link rel="stylesheet" type="text/css" href="${cssHref}">
		<link rel="stylesheet" type="text/css" href="${styleCssHref}">
		<link rel="stylesheet" type="text/css" href="${adminCssHref}">
		<link rel="shortcut icon" href="./img/favicon.png" type="image/x-icon">
		<script type="text/javascript">
			$(document).ready(function() {
				$("time.timeago").timeago();
				
				$("#logoutLink").click(function(event){
					$("#logoutForm").submit();
				});
				
				var pathname = window.location.pathname;
				$("nav a[href='"+pathname+"']").parent().addClass("active");
				
			});
			
		</script>
		
	</head>
	<body>
		<header>
			<c:url var="homePageHref" value="/" />
			<div class="headerIMG">
			<div class="imgHead">
				<c:url var="imgSrc1" value="/img/header25.png" />
				<a href="${homePageHref}"><img src="${imgSrc1}"
					class="img-responsive" /></a>
			</div>
			<%-- <div>
				<c:url var="imgSrc" value="/img/patcon1.jpg" />
				<a href="${homePageHref}"><img src="${imgSrc}"
					class="img-responsive" /></a>
			</div> --%>
		</div>
		</header>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<c:url var="homePageHref" value="/" />
					<li><a href="${homePageHref}">Home</a></li>
<%-- 					<c:url var="officePageHref" value="/office" />
					<li><a href="${officePageHref}">Office Info</a></li> --%>
					<c:if test="${not empty currentUser}">
						<c:url var="changePasswordHref" value="/changePassword" />
						<li><a href="${changePasswordHref}">Change Password</a></li>
					</c:if> 
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<c:choose>
						<c:when test="${empty currentUser}">
							<c:url var="newUserHref" value="/newUser" />
							<li><a href="${newUserHref}">Sign Up</a></li>
							<c:url var="loginHref" value="/" />
							<li><a href="${loginHref}">Log In</a></li>
						</c:when>
						<c:otherwise>
							<c:url var="logoutAction" value="/logout" />
							<form id="logoutForm" action="${logoutAction}" method="POST">
							<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
							</form>
							<li><a id="logoutLink" href="#">Log Out</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</nav> 
		<%-- <c:if test="${not empty currentUser}">
			<p id="currentUser" style="font-size: 20px; margin-left: 50px; font-weight: bold;'">Hello: ${currentUser.userName}</p>
		</c:if> --%>
		<div class="container">