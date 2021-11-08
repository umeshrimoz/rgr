<%-- 
    Document   : demo
    Created on : Sep 22, 2017, 5:59:10 PM
    Author     : Kumar Umesh
--%><%-- 
    Document   : AddNewEmployee
    Created on : Aug 26, 2017, 12:57:14 PM
    Author     : Umesh Yadav
--%>

 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="images/dic-img/diicelogo.png" >
        <title>Add New Employee - Diice Manager</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="css/metisMenu.min.css" rel="stylesheet">
        <!-- Timeline CSS -->
        <link href="css/timeline.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/startmin.css" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="css/morris.css" rel="stylesheet">
        <link href="css/ace-rtl.min.css" rel="stylesheet">
        <link href="admin/css/my.css" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="wrapper">
            <jsp:include page="nav.jsp" />

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header text-center ">Employee Panel!</h1>                    
                        </div>
                    </div>

                    <ul class="nav navbar-right navbar-top-links">
                        <li class="dropdown navbar-inverse">
                            <a href="employee-profile.jsp">
                                <i class="fa fa-list fa-fw"></i> Go to Employee List
                            </a>                            
                        </li>

                    </ul>
                    <!-- ... Your content goes here ... -->

                    <div class="panel panel-primary">
                        <div class="panel-header bg-info" style="height: 48px; font-size: 18px;">
                            <div class="panel-headings">                                
                                <strong>Add New Employee</strong>
                            </div>
                        </div>
                        <div class="container">
                            ${Msg}
                            <div class="step-pane active" data-step="1">
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
                        </div>
                    </div>
                </div>

            </div>
        </div>


        <!-- jQuery --> 
        <script src="js/jquery.min.js"></script>
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
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="js/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="js/startmin.js"></script>
        <script src="../js/my.js"></script>

    </body>
</html>
