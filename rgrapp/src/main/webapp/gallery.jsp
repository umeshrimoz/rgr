<%-- 
    Document   : gallery
    Created on : Nov 1, 2021, 1:42:01 PM
    Author     : Kumar Umesh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Ramashram Global Recources-Gallery </title>
        <!-- core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/bootstrap-icons.css" rel="stylesheet">
        <link href="css/lightbox.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/hamtum.css" rel="stylesheet">
        <script type="text/javascript" src="js/My-Js/lightbox-plus-jquery.min.js"></script>


    </head><!--/head-->
    <body>        
        <jsp:include page="menu.jsp"/>
        <jsp:include page="slide.jsp"/>
        <section id="about">
            <div class="container">
                <div class="center">
                    <div class="col-md-6 col-md-offset-3">
                        <h6>Gallery</h6>
                        <hr>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-lg-12 gallery">
                        <div class="col-lg-3">
                            <a href="images/GRGR1 -.jpg" data-lightbox="my" data-title="Rimoz.in">  <img class="img-responsive" src="images/GRGR1 -.jpg"></a>
                        </div>
                        <div class="col-lg-3">
                                <a href="images/GRGR2 -.jpg" data-lightbox="my" data-title="This is umesh">  <img class="img-responsive" src="images/GRGR2 -.jpg"></a>
                        </div>
                        <div class="col-lg-3">
                                <a href="images/GRGR1 -.jpg" data-lightbox="my" data-title="Rimoz Offer">  <img class="img-responsive" src="images/GRGR1 -.jpg"></a>
                        </div>
                        <div class="col-lg-3">
                                <a href="images/GRGR4 -.jpg" data-lightbox="my" data-title="This is umesh">  <img class="img-responsive" src="images/GRGR4 -.jpg"></a>
                        </div>

                    </div>
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