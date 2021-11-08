<%-- 
    Document   : blank
    Created on : 22 Sep, 2017, 10:30:03 AM
    Author     :Kumar Umesh
--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

        <title>DASHGUM - Bootstrap Admin Template</title>

        <!-- Bootstrap core CSS -->
        <link href="assets/css/bootstrap.css" rel="stylesheet">
        <!--external css-->
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

        <!-- Custom styles for this template -->
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="assets/css/my.css" rel="stylesheet">
        <link href="assets/css/style-responsive.css" rel="stylesheet">


    </head>

    <body>

        <section id="container" >
            <!-- **********************************************************************************************************************************************************
            TOP BAR CONTENT & NOTIFICATIONS
            *********************************************************************************************************************************************************** -->
            <!--header start-->
            <jsp:include page="nav.jsp"/>   
            <!--header end-->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <h3><i class="fa fa-angle-right"></i> Form Components</h3>

                    <div class="row mt">
                        <div class="col-lg-11">
                            <div class="form-panel">
                                <div class="panel-body panel-primary">
                                    <div class="panel-heading text-center"><strong>Team</strong></div>
                                    <hr>
                                    <!--<div class="omi-marg" style="margin-top: 50px;"></div>-->
                                    <div class="widget-box">
                                        <div class="widget-header">
                                            <h4 class="widget-title"> Add News Image</h4>
                                        </div> 

                                    </div>
                                    <form action="NewsImgService" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Press Name  </label>

                                            <div class="col-sm-9">
                                                <input name="pressname" type="text" id="form-field-1" placeholder="Press Name" class="col-xs-10 col-sm-6"/>
                                            </div>
                                        </div>

                                        <!--image-->

                                        <div class="container row">
                                            <div class="col-lg-2">
                                                <fieldset><legend>Choose Image !</legend></fieldset>

                                                <div class="form-group">                                                      
                                                    <div class="container input-group col-lg-2"> 
                                                        <div class="picture-container add_field_button"><br>
                                                            <div class="picture" style="height: 170px; width: 160px; ">
                                                                <img class="picture-src" id="DiiceImagePrec">
                                                            </div> 
                                                            <br><input class="col-lg-offset-1" type="file" id="DiiceImage" name="newsimg">
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="col-lg-2">
                                                <div class="col-lg-offset-3 input_fields_wrap" name="newsimg" style="padding-left: 12px;"></div>
                                            </div>

                                        </div>
                                        <!--End image-->

                                        <div class="clearfix form-actions">
                                            <div class="col-md-offset-4">
                                                <button class="btn btn-info" type="submit">
                                                    <i class=""></i>
                                                    Add Class
                                                </button>

                                                &nbsp; &nbsp; &nbsp;
                                                <button class="btn" type="reset">

                                                    Refresh
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                            </div><!-- /form-panel -->
                        </div><!-- /col-lg-12 -->
                    </div><!-- /row -->


                </section><! --/wrapper -->
            </section><!-- /MAIN CONTENT -->


        </section>
        <div class="omi-marg" style="margin-top: 120px;"></div>

        <div class="omi-marg"><jsp:include page="footer.jsp"/>

            <!-- js placed at the end of the document so the pages load faster -->
            <script src="assets/js/jquery.js"></script>
            <script src="assets/js/my.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
            <script src="assets/js/jquery.ui.touch-punch.min.js"></script>
            <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
            <script src="assets/js/jquery.scrollTo.min.js"></script>
            <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


            <!--common script for all pages-->
            <script src="assets/js/common-scripts.js"></script>

            <!--script for this page-->
            <script type="text/javascript">

                $(document).ready(function() {
                    var max_fields = 10; //maximum input boxes allowed
                    var wrapper = $(".input_fields_wrap"); //Fields wrapper
                    var add_button = $(".add_field_button"); //Add button ID

                    var x = 1; //initlal text box count
                    $(add_button).click(function(e) { //on add input button click
                        e.preventDefault();
                        if (x < max_fields) { //max input box allowed
                            x++; //text box increment
//                            $(wrapper).append('<div><input type="text" name="classgroup" placeholder="Add Class Group"/><a href="#" class="remove_field">Remove</a></div>'); //add input box
                            $(wrapper).append('<div class="picture-container"><div class="picture" style="height: 170px; width: 160px; "><img class="picture-src" id="DiiceImagePrec"></div><input class="col-lg-offset-1" type="file" id="DiiceImage" name="newsimg"><a href="#" class="remove_field">Remove</a></div>'); //add input box
                        }
                    });

                    $(wrapper).on("click", ".remove_field", function(e) { //user click on remove text
                        e.preventDefault();
                        $(this).parent('div').remove();
                        x--;
                    })
                    //                part 2
                    var max_fields2 = 10; //maximum input boxes allowed
                    var wrapper2 = $(".input_fields_wrap2"); //Fields wrapper
                    var add_button2 = $(".add_field_button2"); //Add button ID

                    var x = 1; //initlal text box count
                    $(add_button2).click(function(e) { //on add input button click
                        e.preventDefault();
                        if (x < max_fields2) { //max input box allowed
                            x++; //text box increment
                            $(wrapper2).append('<div><input type="text" name="section" placeholder="Add Class Section"/><a href="#" class="remove_field2">Remove</a></div>'); //add input box
                        }
                    });

                    $(wrapper2).on("click", ".remove_field2", function(e) { //user click on remove text
                        e.preventDefault();
                        $(this).parent('div').remove();
                        x--;
                    })
                });
            </script>
            <script>
                //custom select box

                $(function() {
                    $('select.styled').customSelect();
                });

            </script>

    </body>
</html>
