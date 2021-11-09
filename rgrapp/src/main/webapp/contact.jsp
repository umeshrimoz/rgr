<%-- 
    Document   : Contact
    Created on : Nov 1, 2021, 1:42:01 PM
    Author     : Kumar Umesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Ramashram Global Recources-Contact</title>
<link rel="icon" href="img/image/rimoz logo.png">
<!-- core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/bootstrap-icons.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


</head>
<!--/head-->
<body>
	<jsp:include page="menu.jsp" />
	<section id="about">
		<div class="container">
			<div class="center">
				<div class="col-md-6 col-md-offset-3">
					<br>
					<h6>Contact Us</h6>
					<br> <br> <br> <br>
				</div>
			</div>
		</div>
		<section id="contact-page">
			<div class="container">
				<section id="contact-info">
					<div class="gmap-area">
						<div class="container">
							<div class="row">
								<div class="col-sm-5  card card-default">

									<h3>Registered Office Address</h3>
									<hr>
									<p>
										<i class="fa fa-home" aria-hidden="true"></i> Mohuidinpur
										Shrinagar <br> Pincode - 841226 <br> District -
										Siwan (Bihar)
									</p>
									<p>
										<i class="fa fa-phone" aria-hidden="true"></i> 91 6206481240
									</p>
									<p>
										<i class="fa fa-envelope" aria-hidden="true"></i>
										info@domain.com
									</p>

								</div>

								<div class="col-sm-7 card card-default">
									<h3>Contact Form</h3>
									<hr>
									<h4 align="center">${success}</h4>

								 

									<div class="row contact-wrap ">
										<div class="status alert alert-success" style="display: none"></div>
										<form id="main-contact-form" class="contact-form"
											name="contact-form" method="post" action="InquiryController">
											<div class="col-sm-12">
												<div class="form-group">
													<label>Name<span style="color: red;">*</span></label> <input
														type="text" name="name" class="form-control"
														data-rule="required" data-msg="Name is required"
														value="${name}" placeholder="Name">
													<snap style="color:red; font-size: 10px;">${nameError}</snap>
												</div>
											</div>

											<div class="col-sm-6">
												<div class="form-group">
													<label>Mobile<span style="color: red;">*</span></label> <input
														type="text" name="mobile" class="form-control"
														data-rule="required" data-msg="Mobile is required"
														value="${mobile}" placeholder="Mobile">
													<snap style="color:red; font-size: 10px;">${mobileError}</snap>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>Email<span style="color: red;">*</span></label> <input
														type="email" name="email" class="form-control"
														data-rule="required" data-msg="Email is required"
														value="${email}" placeholder="Email">
													<snap style="color:red; font-size: 10px;">${emailError}</snap>
												</div>
											</div>

											<div class="col-sm-12">
												<div class="form-group">
													<label>Message Title<span style="color: red;">*</span></label>
													<input type="text" name="title" class="form-control"
														data-rule="required" data-msg="Message Header is required"
														value="${title}" placeholder="Message Header">
													<snap style="color:red; font-size: 10px;">${titleError}</snap>
												</div>
											</div>

											<div class="col-sm-12">
												<div class="form-group">
													<label>Message<span style="color: red;">*</span></label>
													<textarea name="msg" rows="5" class="form-control"
														data-rule="required" data-msg="Message is required"
														placeholder="Massege Description (Max 100 Words)">${msg}</textarea>
													<snap style="color:red; font-size: 10px;">${msgError}</snap>
												</div>

												<div class="form-group">
													<button type="submit" name="submit"
														class="btn btn-danger btn-lg" required="required">
														<i class="fa fa-paper-plane" aria-hidden="true"></i> Send
														Message
													</button>
													<small class="test-muted">* We'll contact you by
														phone & email later</small>
												</div>
											</div>
										</form>
									</div>
									<!--/.row-->

								</div>

							</div>
						</div>
					</div>
				</section>
				<!--/gmap_area -->
			</div>
			<!--/.container-->
		</section>
		<!--/#contact-page-->
		>

	</section>
	<!--/#about-->

	<jsp:include page="footer.jsp" />
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/wow.min.js"></script>
</body>
</html>