<!DOCTYPE html>
<html lang="en">
<head>

<!-- start: Meta -->
<meta charset="utf-8">
<title>Market Wormhole</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Dennis Ji">
<meta name="keyword"
	content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->

<!-- start: CSS -->
<link id="bootstrap-style" href="css/bootstrap.min.css"
	rel="stylesheet">
<link id="bootstrap-style" href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link id="base-style-responsive" href="css/style-responsive.css"
	rel="stylesheet">
<link href="css/login.css" rel="stylesheet" type="text/css">

<!-- end: CSS -->

</head>

<body>

	<%@ include file="navBar.jsp" %>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="logincheck.jsp"
									method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="username1" id="username1" tabindex="1"
											class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password1" id="password1"
											tabindex="2" class="form-control" placeholder="Password">
									</div>
									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-4 col-sm-offset-4">
												<input type="submit" name="login-submit" id="login-submit"
													tabindex="4" class="form-control btn btn-login"
													value="Log In" style="width: 202px" onclick="return validate()">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="http://phpoll.com/recover" tabindex="5"
														class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
								</form>
								<form id="register-form"
									action="submit.jsp" method="post" 
									role="form" style="display: none;">
									<div class="form-group" align="center">
										<input type="text" name="username" id="username" tabindex="1"
											class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group">
										<input type="email" name="email" id="email" tabindex="1"
											class="form-control" placeholder="Email Address" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password"
											tabindex="2" class="form-control" placeholder="Password">
									</div>
									<div class="form-group">
										<input type="password" name="confirm-password"
											id="confirm-password" tabindex="2" class="form-control"
											placeholder="Confirm Password">
									</div>
									<div class="form-group">
										<div class="row" align="center">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit"
													id="register-submit" tabindex="4"
													class="form-control btn btn-register" value="Register Now"
													style="width: 202px" onclick= "return registervalidate()" >
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="common-modal modal fade" id="common-Modal1" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-content">
			<ul class="list-inline item-details">
				<li><a href="http://themifycloud.com">Admin templates</a></li>
				<li><a href="http://themescloud.org">Bootstrap themes</a></li>
			</ul>
		</div>
	</div>
	<!-- start: JavaScript-->

	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery-migrate-1.0.0.min.js"></script>

	<script src="js/jquery-ui-1.10.0.custom.min.js"></script>

	<script src="js/jquery.ui.touch-punch.js"></script>

	<script src="js/bootstrap.min.js"></script>

	<script src="js/login.js"></script>
	
	<script>
	
	function validate(){
		
		var username = document.getElementById("username1").value;
		var password = document.getElementById("password1").value;
		if ( username !="" && password != ""){
		//alert ("Login successfully");
		//window.location.href = "index.jsp"; // Redirecting to other page.
		return true;
		}
		else{
		//attempt --;// Decrementing by one.
		alert("Please enter correct details");
		return false;
		}
		}		
		
	function registervalidate(){
		
		
		var username = document.getElementById("username").value;
		var email = document.getElementById("email").value;
		var password = document.getElementById("password").value;
		var confirmpassword = document.getElementById("confirm-password").value;
		var errorMsg = "";
		
				
		if ( username =="" || username == null){
			errorMsg += "Please enter username \n";
		//window.location.href = "index.jsp"; // Redirecting to other page.
		}
		if(email== "" || email== null){
			errorMsg += "Please enter email \n";
		}
		if(password =="" || password == null){
			errorMsg += "Please enter password \n";
		}
		if(confirmpassword == "" || confirmpassword == null){
			errorMsg += "Confirm Password \n";
		}	
		if(password!= confirmpassword){
			errorMsg += "Password Mismatch \n";
		}	
	
		if(errorMsg !== ""){
		
			alert(errorMsg);
			return false;
		
		}
		alert("RegistrationSuccessful");
		return true;
		
	}
		
	</script>
	<!-- end: JavaScript-->	

</body>
</html>
