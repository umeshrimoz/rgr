<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<title>Ramashram Global Recources</title>
<!-- core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/bootstrap-icons.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/hamtum.css" rel="stylesheet">
<style type="text/css">
</style>
</head>
<body>
	<br><br>
	<div class="col col-sm-8 col-md-8 col-lg-8 ">
	
	</div>

	<div class="col col-sm-4 col-md-4 col-lg-4 card card-default">
		<br><img src="images/999.png" class="img img-centered" alt="company logo" />
		<h3>Login</h3><hr />
		<form method="post" action="LoginController">
			<div class="form-group">
				<label for="username">UserID</label> <input name="user"
					type="text" class="form-control" id="username"
					placeholder="Your Username">
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input name="pass"
					type="password" class="form-control" id="password"
					placeholder="Your Password">
			</div>
			<button type="submit" class="btn btn-primary">Login</button>
			<hr />
		 	<a href="#">Reset Password</a><br><br>
		</form>

	</div>



	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/wow.min.js"></script>
</body>
</html>