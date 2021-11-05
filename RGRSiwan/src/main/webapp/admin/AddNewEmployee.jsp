<%-- 
    Document   : AddNewEmployee
    Created on : Aug 26, 2017, 12:57:14 PM
    Author     : Umesh Yadav
--%>


<%@page import="java.util.List"%>
<%@page import="com.diice.diiceadmin.form.CourseForm" %>
<jsp:useBean id="courseactn" class="com.diice.diiceadmin.action.CourseAction" />
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
        <jsp:include page="applicationSecurity.jsp" />
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
                                <form class="form-horizontal" method="post" action="../AddEmployeeService"  enctype="multipart/form-data"  role="form">                                                  
                                    <h3 align="center"> ${Suce}</h3>
                                    <div class="col-lg-8">
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Name </label>
                                            <div class="col-lg-3">
                                                <input type="text"  name="name" placeholder="Employee Name" required="" class="form-control">
                                                <span style="color: red;">${nameError}</span>
                                            </div>
                                            <label class="col-lg-2 control-label">Job Title</label>
                                            <div class="col-lg-3">
                                                <input type="text" name="job" class="form-control" required="" placeholder="Employee Job Title">
                                                <span style="color: red;">${empidError}</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Qualification </label>
                                            <div class="col-lg-3">
                                                <select name="quali" placeholder="Qualification" required="" class="form-control">
                                                    <option>--Select--</option>
                                                    <option>MATRIC</option>
                                                    <option>10+2</option>
                                                    <option>GRADUATION</option>
                                                    <option>BCA</option>
                                                    <option>BBA</option>
                                                    <option>MCA</option>
                                                    <option>MBA</option>
                                                    <option>B.TECH</option>
                                                    <option>POST GRADUATION</option>
                                                </select>
                                                <span style="color: red;">${nameError}</span>

                                            </div>

                                            <label class="col-lg-2  control-label">Email ID</label>
                                            <div class="col-lg-3">
                                                <input type="text" name="email" required="" class="form-control" placeholder="Employee Email Address">
                                                <span style="color: red;">${emailError}</span>

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2  control-label">Mobile</label>
                                            <div class="col-lg-3">
                                                <input type="text" name="mobile" class="form-control" required="" placeholder="Enter Your Mobile">
                                                <span style="color: red;">${emailError}</span>

                                            </div>
                                            <label class="col-lg-2 control-label">State</label>
                                            <div class="col-lg-3">
                                                <input type="text"  name="state" class="form-control" required="" placeholder="Enter Your State">
                                                <span style="color: red;">${countryError}</span>
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <label class="col-lg-2 control-label">City</label>
                                            <div class="col-lg-3">
                                                <input type="text" name="city" class="form-control" required="" placeholder="Enter Your City">
                                                <span style="color: red;">${stateError}</span>
                                            </div>
                                            <label class="col-lg-2 control-label">PIN Code</label>
                                            <div class="col-lg-3">
                                                <input type="text" name="pin" required="" class="form-control" id="" placeholder="Enter Your PIN Code">
                                                <span style="color: red;">${cityError}</span>
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <label class="col-lg-2 control-label">Country</label>
                                            <div class="col-lg-3">
                                                <input type="text" name="country" required="" class="form-control" placeholder="Enter Your Country">
                                                <span style="color: red;">${stateError}</span>
                                            </div>
                                            <label class="col-lg-2 control-label">Address</label>
                                            <div class="col-lg-3">
                                                <input type="text" name="add" required="" class="form-control" placeholder="Enter Your Address">
                                                <span style="color: red;">${addError}</span>
                                            </div>
                                        </div>


                                    </div>
 <!--image-->
                                        
                                        <div class="container row">
                                            <div class="col-lg-2">
                                                <fieldset><legend>Choose Image !</legend></fieldset>
                                                <span style="color: red;">${imgError}</span>
                                                    <div class="form-group">                                                      
                                                        <div class="container input-group col-lg-2"> 
                                                            <div class="picture-container"><br>
                                                                <div class="picture" style="height: 170px; width: 160px; ">
                                                                    <img class="picture-src" id="DiiceImagePrec">
                                                                </div> 
                                                                <br><input class="col-lg-offset-1" type="file" id="DiiceImage" name="img">
                                                            </div>
                                                        </div>
                                                    </div>
                                                 
                                            </div>
                                        </div>
                                        <!--End image-->
                                            
                                    <!--Button-->
                                    <div class="form-group well-sm">
                                        <div class="col-lg-offset-5 col-lg-5">
                                            <button type="submit" class="btn btn-primary">Add Employee</button>
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
        <script>
            $(document).ready(function() {
            $('#coursename').change(function() {
            var course = $(this).val();
            //                                       alert("pass");
            //                                       alert("course="+course);
            $.get('/DICE/JSON-AJAX/coursedurationbyname.jsp?course=' + course, function(data, status) {
            //                                   alert("course="+course);
            var result = data;
            obj = eval("(" + result + ")");
            //                                    alert(obj[0].dur);
            //                                    alert(obj[0].code);
            $('#courseduration').val(obj[0].dur);
            $('#coursecode').val(obj[0].code);
            //                                    window.location.reload();
            });
            });
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
