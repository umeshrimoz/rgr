<%-- 
    Document   : diice-new-course
    Created on : 19 Aug, 2017, 4:39:05 PM
    Author     : atul Arnav Sharma
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
        <title>Diice Course - Diice Manager</title>
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
        <!-- Custom Fonts -->
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
         <jsp:include page="applicationSecurity.jsp" />
        <div id="wrapper">
            <jsp:include page="nav.jsp" />

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header text-center ">Course Panel</h1>                    
                        </div>
                    </div>

                    <ul class="nav navbar-right navbar-top-links">
                        <li class="dropdown navbar-inverse">
                            <a href="diice-course-list.jsp">
                                <i class="fa fa-list fa-fw"></i> Go to Course List
                            </a>                            
                        </li>
                    </ul>
                    <!-- ... Your content goes here ... -->

                    <div class="panel panel-primary">
                        <div class="panel-header bg-info" style="height: 48px; font-size: 18px;">
                            <div class="panel-heading">                                
                                <strong>Add New Course</strong>
                            </div>
                        </div>
                        <br>
                        <h4 align="center">${Sucessmsg}</h4>

                        <div class="panel panel-body"> 
                            <!--form-->
                            <form method="post" action="../courseservices">  
                                <div class="row  "> 
                                    <!--#####################################################################################################-->
                                    <div class="col-md-4">
                                        <h4>Course Details</h4>
                                        <div class="form-group"> 
                                            <label class="control-label"> </label>
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-user"></i></span>
                                                    <input type="text" name="coursename" required="" id="coursename" placeholder="Enter Course Name" class="form-control">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group"> 
                                            <label class="control-label"> </label>
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-user"></i></span>
                                                    <input type="text" name="code" required="" id="coursecode" placeholder="Enter Course Code" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4"><br><br>
                                        <div class="form-group"> 
                                            <label class="control-label"> </label>
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-user"></i></span>
                                                    <select  class="form-control" required="" name="duration" id="courseduration" >
                                                        <option>select course Duration</option>                                                                 
                                                        <option value="10 Days">10 Days</option>                                                                
                                                        <option value="20 Days">20 Days</option>                                                                
                                                        <option value="30 Days">30 Days</option>                                                                
                                                        <option value="45 Days">45 Days</option>                                                                
                                                        <option value="60 Days">60 Days</option>                                                                
                                                        <option value="3 Months">3 Months</option>                                                                
                                                        <option value="6 Months">6 Months</option>                                                                
                                                        <option value="1 Year">1 year</option>                                                                
                                                        <option value="18 Months">18 Months</option>                                                                
                                                        <option value="2 Year">2 year</option>                                                                
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <label class="control-label"> </label>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-group btn-success">
                                                    Add Course &nbsp;<span class="glyphicon glyphicon-send"></span></button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!--#####################################################################################################-->                     



                            </form>
                            <!--/form-->
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>

    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/startmin.js"></script>

</body>
</html>

