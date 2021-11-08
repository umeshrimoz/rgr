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
.card {
	background-color: #fff;
	border: 1px solid transparent;
	border-radius: 6px;
}

.card>.card-link {
	color: #333;
}

.card>.card-link:hover {
	text-decoration: none;
}

.card>.card-link .card-img img {
	border-radius: 6px 6px 0 0;
}

.card .card-img {
	position: relative;
	padding: 0;
	display: table;
}

.card .card-img .card-caption {
	position: absolute;
	right: 0;
	bottom: 16px;
	left: 0;
}

.card .card-body {
	display: table;
	width: 100%;
	padding: 12px;
}

.card .card-header {
	border-radius: 6px 6px 0 0;
	padding: 8px;
}

.card .card-footer {
	border-radius: 0 0 6px 6px;
	padding: 8px;
}

.card .card-left {
	position: relative;
	float: left;
	padding: 0 0 8px 0;
}

.card .card-right {
	position: relative;
	float: left;
	padding: 8px 0 0 0;
}

.card .card-body h1:first-child, .card .card-body h2:first-child, .card .card-body h3:first-child,
	.card .card-body h4:first-child, .card .card-body .h1, .card .card-body .h2,
	.card .card-body .h3, .card .card-body .h4 {
	margin-top: 0;
}

.card .card-body .heading {
	display: block;
}

.card .card-body .heading:last-child {
	margin-bottom: 0;
}

.card .card-body .lead {
	text-align: center;
}

@media ( min-width : 768px ) {
	.card .card-left {
		float: left;
		padding: 0 8px 0 0;
	}
	.card .card-right {
		float: left;
		padding: 0 0 0 8px;
	}
	.card .card-4-8 .card-left {
		width: 33.33333333%;
	}
	.card .card-4-8 .card-right {
		width: 66.66666667%;
	}
	.card .card-5-7 .card-left {
		width: 41.66666667%;
	}
	.card .card-5-7 .card-right {
		width: 58.33333333%;
	}
	.card .card-6-6 .card-left {
		width: 50%;
	}
	.card .card-6-6 .card-right {
		width: 50%;
	}
	.card .card-7-5 .card-left {
		width: 58.33333333%;
	}
	.card .card-7-5 .card-right {
		width: 41.66666667%;
	}
	.card .card-8-4 .card-left {
		width: 66.66666667%;
	}
	.card .card-8-4 .card-right {
		width: 33.33333333%;
	}
}

/* -- default theme ------ */
.card-default {
	border-color: #ddd;
	background-color: #fff;
	margin-bottom: 24px;
}

.card-default>.card-header, .card-default>.card-footer {
	color: #333;
	background-color: #ddd;
}

.card-default>.card-header {
	border-bottom: 1px solid #ddd;
	padding: 8px;
}

.card-default>.card-footer {
	border-top: 1px solid #ddd;
	padding: 8px;
}

.card-default>.card-body {
	
}

.card-default>.card-img:first-child img {
	border-radius: 6px 6px 0 0;
}

.card-default>.card-left {
	padding-right: 4px;
}

.card-default>.card-right {
	padding-left: 4px;
}

.card-default p:last-child {
	margin-bottom: 0;
}

.card-default .card-caption {
	color: #fff;
	text-align: center;
	text-transform: uppercase;
} 
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