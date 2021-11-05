

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Ramashram Global Recources</title>
        <!-- core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/bootstrap-icons.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/hamtum.css" rel="stylesheet">

    </head><!--/head-->
    <body>        
        <jsp:include page="menu.jsp"/>
        <jsp:include page="slide.jsp"/>
        <section id="about">
            <div class="container">
                <div class="center">
                    <div class="col-md-6 col-md-offset-3">
                        <h2>About Us</h2>
                        <hr>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-sm-7 wow fadeInDown">
                        <!--tab nav start-->
                        <section class="panel panel-primary">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a data-toggle="tab" href="#home-2">
                                        <i class="icon-home"></i>Home
                                    </a>
                                </li>
                                <li>
                            </ul>
                            <div class="panel-body">
                                <div class="tab-content">
                                    <div id="home-1" class="tab-pane active">
                                        To change this license header, choose License Headers in Project Properties.
                                        To change this template file, choose Tools | Templates
                                        and open the template in the editor.    
                                    </div>
                                    <div id="about-2" class="tab-pane">About</div>
                                    <div id="contact-2" class="tab-pane ">Contact</div>
                                </div>
                            </div>
                        </section>

                    </div>
                    <div class="aa">
                        <div class="row omi">
                            <div class="col-lg-5 ">
                                <h4 >Highlight</h4>
                                <div class="box shadow7 ">
                                    <marquee direction="up" >
                                    <p class="fa fa-chevron-right">  Lorem ipsum dolor sit amet, consectetur adipisicing elit,</p>
                                    <p class="fa fa-chevron-right">  Lorem ipsum dolor sit amet, consectetur adipisicing elit,</p>
                                    <p class="fa fa-chevron-right">  Lorem ipsum dolor sit amet, consectetur adipisicing elit,</p>
                                    </marquee>
                                </div>
                            </div>

                        </div>
                    </div><!--/.row-->


                </div><!--/.row-->

            </div><!--/.container-->

        </section><!--/#about-->

        <jsp:include page="footer.jsp"/>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/wow.min.js"></script>
    </body>
</html>