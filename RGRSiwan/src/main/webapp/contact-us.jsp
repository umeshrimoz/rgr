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
        <title>Ramashram Global Recources-Contact </title>
        <!-- core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/bootstrap-icons.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">


    </head><!--/head-->
    <body>        
        <jsp:include page="menu.jsp"/>
        <section id="about">
            <div class="container">
                <div class="center">
                    <div class="col-md-6 col-md-offset-3">
                        <h6>Contact Us?</h6>
                        <hr>
                    </div>
                </div>
            </div>
            <section id="contact-page">
                <div class="container">
                    <hr>
                    <section id="contact-info">
                        <div class="gmap-area">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-5">
                                        <ul class="row">
                                            <li class="col-sm-6">
                                                <address>
                                                    <h5>Head Office</h5>
                                                    <p class="glyphicon glyphicon-home"><br>Mohuidinpur Shrinagar <br>
                                                        Pincode : - 841226, District: - Siwan,</p>
                                                    <p class="glyphicon glyphicon-phone-alt"> Phone:-<br> 91 6206481240 </p>
                                                    <p class="glyphicon glyphicon-globe"> Email :-<br> info@domain.com </p>
                                                </address>

                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-7">

                                        <div class="row contact-wrap"> 
                                            <div class="status alert alert-success" style="display: none"></div>
                                            <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="sendemail.php">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>First Name *</label>
                                                        <input type="text" name="name" class="form-control" placeholder="First Name">
                                                    </div>                     
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label> Last Name *</label>
                                                        <input type="text" name="name" class="form-control" placeholder="Last Name">
                                                    </div>                     
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>Mobile *</label>
                                                        <input type="text" name="name" class="form-control" placeholder="Mobile">
                                                    </div>                     
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>Email *</label>
                                                        <input type="text" name="name" class="form-control" placeholder="Email">
                                                    </div>                     
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>Subject *</label>
                                                        <input type="text" name="name" class="form-control" placeholder="subject">
                                                    </div>                     
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>District *</label>
                                                        <input type="text" name="name" class="form-control" placeholder="District">
                                                    </div>                     
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>State *</label>
                                                        <input type="text" name="name" class="form-control" placeholder="State">
                                                    </div>                     
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>Country *</label>
                                                        <input type="text" name="name" class="form-control" placeholder="Country">
                                                    </div>                     
                                                </div>



                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>Subject *</label>
                                                        <textarea name="subject" rows="5" class="form-control" placeholder="Massege"></textarea>
                                                    </div>

                                                    <div class="form-group">
                                                        <button type="submit" name="submit" class="btn btn-danger btn-lg" required="required">Submit Message</button>
                                                    </div>
                                                </div>
                                            </form> 
                                        </div><!--/.row-->

                                    </div>

                                </div>
                            </div>
                        </div>
                    </section>  <!--/gmap_area -->
                </div><!--/.container-->
            </section><!--/#contact-page-->
            >

        </section><!--/#about-->

        <jsp:include page="footer.jsp"/>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/wow.min.js"></script>
    </body>
</html>