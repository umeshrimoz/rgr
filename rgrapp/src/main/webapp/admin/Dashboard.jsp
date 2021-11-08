<%-- 
    Document   : Dashboard
    Created on : Mar 2, 2017, 11:26:13 AM
    Author     : arnav
--%>

<%@page import="com.diice.diiceadmin.action.StudentAction"%>
<%@page import="com.diice.diiceadmin.form.DiiceStudentForm"%>
<%@page import="com.diice.diiceadmin.action.DiiceAdminLoginAction"%>
<%@page import="com.diice.diiceadmin.form.CourseForm"%>
<%@page import="com.diice.diiceadmin.action.CourseAction"%>
<%@page import="com.diice.diiceadmin.form.EmployeeForm"%>
<%@page import="com.diice.diiceadmin.action.EmployeeAction"%>
<%@page import="java.util.List"%>
<%@page import="com.diice.diiceadmin.form.OnlineAdmissionForm"%>
<%@page import="com.diice.diiceadmin.action.OnlineAdmissionAction"%>
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
        <title>Ramashram Global Recources - Manager</title>
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
        <style>
            .progressdiv{
                border: 1px solid powderblue;
                height: 200px;
            }
        </style>
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
                            <div class="col-md-10">
                            <h1 class="page-header">Welcome Admin !  </h1>
                            <p><h2 class="text-success">Ramashram Global Recources</h2></p>
                                </div>
                            <div class="col-md-2"><br>
                                <span class="pull-right">  <jsp:include page="watch.jsp"/></span>
                            </div>
                        </div>
                                <div class="col-lg-12">
                            <%
                                int studCount = 0, fecultyCount = 0, courseCount = 0, actStudentCount = 0;
                                OnlineAdmissionAction stud = new OnlineAdmissionAction();
                                List<OnlineAdmissionForm> lol = stud.GetOnlineAdmsnList();
                                for (OnlineAdmissionForm sf : lol) {
                                    studCount++;
                                }
                                StudentAction da = new StudentAction();
                                List<DiiceStudentForm> du = da.getStudent();
                                for (DiiceStudentForm df : du) {
                                    actStudentCount++;
                                }

                                EmployeeAction ata = new EmployeeAction();
                                List<EmployeeForm> alu = ata.getAllList();
                                for (EmployeeForm tf : alu) {
                                    fecultyCount++;
                                }
                                CourseAction cau = new CourseAction();
                                List<CourseForm> cuf = cau.getCourseDetails();
                                for (CourseForm ef : cuf) {
                                    courseCount++;
                                }
                            %>
                            <div class="col-xs-12 badge badge-info">
                                <div class=" ace-save-state" >
                                    <div class="row breadcrumbs">
                                        <div class=" col-lg-3 col-md-6">
                                            <div class="panel panel-primary">
                                                <div class="panel-heading">
                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <i class="fa fa-users fa-5x"></i>
                                                        </div>
                                                        <div class="col-xs-9 text-right">Total
                                                            <div class="huge"><%=studCount%></div>
                                                            <div>Online Enquiry !</div>
                                                       
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6">
                                            <div class="panel panel-green">
                                                <div class="panel-heading">
                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <i class="fa fa-users fa-5x"></i>
                                                        </div>
                                                        <div class="col-xs-9 text-right">Total
                                                            <div class="huge"><%=actStudentCount%></div>
                                                            <div>Product !</div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6">
                                            <div class="panel panel-yellow">
                                                <div class="panel-heading">
                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <i class="fa fa-male fa-5x"></i>
                                                        </div>
                                                        <div class="col-xs-9 text-right">Total
                                                            <div class="huge"><%=fecultyCount%></div>
                                                            <div>Total Employee !</div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6">
                                            <div class="panel panel-danger">
                                                <div class="panel-heading">
                                                    <div class="row">
                                                        <div class="col-xs-3">
                                                            <i class="fa fa-book fa-5x"></i>
                                                        </div>
                                                        <div class="col-xs-9 text-right">Total
                                                            <div class="huge"><%=courseCount%></div>
                                                            <div>Total Course !</div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header"> </h1>
                            <div class="row breadcrumbs">
                                <div class=" col-lg- col-md-6">
                                    <%--<jsp:include page="watch.jsp"/>--%>
                                </div>

                            </div>
                        </div>
                    </div>                                  <hr>

                    <!-- ... Your content goes here ... -->

                    <!-- ... Your content Ends here ... -->

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
