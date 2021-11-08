<%-- 
    Document   : product_price
    Created on : Nov 5, 2021, 12:47:48 PM
    Author     : Kumar Umesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Ramashram Global Recources-Product_Price </title>
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
                        <h6>Product_Price</h6>
                        <hr>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-lg-12  ">
                        <div class="col-lg-3">
                            <div class="card">
                                <a href="images/RGR1.jpg" data-lightbox="my" data-title="This is umesh">  <img class="img-responsive" src="images/RGR1.jpg"></a>
                                <h3>Tailored Jeans</h3>
                                <p class="price">$19.99</p>
                                <p>Lorem jeamsun denim lorem jeansum.</p>
                                <p><button>Add to Cart</button></p>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <a href="images/RGR2.jpg" data-lightbox="my" data-title="This is umesh">  <img class="img-responsive" src="images/RGR2.jpg"></a>
                                <h3>Tailored Jeans</h3>
                                <p class="price">$19.99</p>
                                <p>Lorem jeamsun denim lorem jeansum.</p>
                                <p><button>Add to Cart</button></p>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <a href="images/RGR3.jpg" data-lightbox="my" data-title="This is umesh">  <img class="img-responsive" src="images/RGR3.jpg"></a>
                                <h3>Tailored Jeans</h3>
                                <p class="price">$19.99</p>
                                <p>Lorem jeamsun denim lorem jeansum.</p>
                                <p><button>Add to Cart</button></p>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <a href="images/RGR4.jpg" data-lightbox="my" data-title="This is umesh">  <img class="img-responsive" src="images/RGR4.jpg"></a>
                                <h3>Tailored Jeans</h3>
                                <p class="price">$19.99</p>
                                <p>Lorem jeamsun denim lorem jeansum.</p>
                                <p><button>Add to Cart</button></p>
                            </div>
                        </div>
                    </div><!--/.row-->
                    
                </div>
            </div><!--/.container-->

        </section><!--/#about-->

        <jsp:include page="footer.jsp"/>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/wow.min.js"></script>
    </body>
</html>