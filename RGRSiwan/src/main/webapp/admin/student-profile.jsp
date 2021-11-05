<%-- 
    Document   :   -student-profile
    Created on : 24 Aug, 2017, 11:32:51 PM
    Author     : atul Arnav Sharma
--%> 

<%@page import="com.diice.diiceadmin.form.CourseForm"%>
<%@page  import="com.diice.diiceadmin.form.DiiceStudentForm" %>
<jsp:useBean id="studentactn" class="com.diice.diiceadmin.action.StudentAction" />
<jsp:useBean id="courseactn" class="com.diice.diiceadmin.action.CourseAction" />
<%@page  import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Diice Student Profile- Diice Manager</title>
        <link rel="icon" href="images/dic-img/diicelogo.png" >
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
                            <h1 class="page-header text-center ">Student Panel!</h1>                    
                        </div>
                    </div> 

                    <!-- ... Your content goes here ... -->

                    <div class="panel panel-primary">
                        <div class="panel-header bg-info" style="height: 48px; font-size: 18px;">
                            <div class="panel-heading">                                
                                <strong> Student Profile</strong>
                            </div>
                        </div>

                        <div class="panel panel-body">

                            <div id="user-profile-2" class="user-profile">
                                <div class="tabbable">

                                    <div class="tab-content no-border padding-24">
                                        <div id="home" class="tab-pane in active">
                                            <div class="row">
                                                <% String ID = request.getParameter("ID");%>

                                                <div class="col-xs-12 col-sm-3 center">
                                                    <span class="profile-picture" style="margin-top: 90px;">
                                                        <img alt="Studentimg" src="../GetDiiceStudentImage?ID=<%=ID%>" height="200" width="160">
                                                    </span>
                                                    <div class="space space-4"></div>

                                                </div><!-- /.col -->

                                                <div class="col-xs-12 col-sm-9">
                                                    <%
                                                        DiiceStudentForm cpf = studentactn.getStudentByID(ID);
                                                        if (cpf != null) {
                                                    %>

                                                    <h4 class="blue">
                                                        <span class="middle"> <%= cpf.getStudentid()%> </span>
                                                        <input type="hidden" value="<%= cpf.getStudentid()%>" id="id">
                                                        <span class="label label-purple arrowed-in-right">
                                                            <i class="ace-icon fa fa-circle smaller-80 align-middle"></i>
                                                            <%= cpf.getStatus()%>
                                                        </span>
                                                    </h4>

                                                    <div class="profile-user-info">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"><strong>Student Name</strong> </div>

                                                            <div class="profile-info-value">
                                                                <span><%= cpf.getStudentname()%></span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"><strong>Father's Name</strong> </div>

                                                            <div class="profile-info-value">
                                                                <span><%= cpf.getFathername()%></span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"><strong>Course Name </strong><snap class="profile-info-row"> </snap></div>

                                                            <div class="profile-info-value">
                                                                <span> <%= cpf.getCoursename()%> </span><a class="col-xs-offset-3">&nbsp;&nbsp;&nbsp;&nbsp;<strong>Course Duration</strong> -</a>  <%= cpf.getCourseduration()%>  
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> <strong>Date of Birth</strong> </div>

                                                            <div class="profile-info-value">
                                                                <span> <%= cpf.getDob()%>  </span>
                                                            </div>
                                                        </div>


                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"><strong> Location </strong></div>

                                                            <div class="profile-info-value">
                                                                <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                                <%= cpf.getAddress()%><br> <%= cpf.getDistrict()%>- <%= cpf.getZip()%>,  <%= cpf.getSstate()%> (  <%= cpf.getCountry()%> )
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> <Strong>Contact</Strong> </div>

                                                            <div class="profile-info-value"> <%= cpf.getMobile()%> /  <%= cpf.getMobile()%>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> <strong>Mail-ID</strong> </div>

                                                            <div class="profile-info-value">
                                                                <%= cpf.getEmail()%>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> <strong>Aaadhar No</strong> </div>

                                                            <div class="profile-info-value">
                                                                <%= cpf.getAadharno()%>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> <strong>Date of Admission</strong> </div>

                                                            <div class="profile-info-value">
                                                                <%= cpf.getRegddate()%>
                                                            </div>
                                                        </div> 

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> <strong>Current Status</strong> </div>

                                                            <%
                                                                if (cpf.getStatus().equalsIgnoreCase("Studing")) {
                                                            %>
                                                            <div class="profile-info-value">
                                                                <button id="status" class="btn-primary"> <%= cpf.getStatus()%></button>
                                                            </div>
                                                            <%} else {%>
                                                            <span class="label label-danger arrowed-in-right">
                                                                <i class="ace-icon fa fa-circle smaller-80 align-middle"></i>
                                                                <%= cpf.getStatus()%>
                                                            </span>
                                                            <%}%>

                                                        </div> 


                                                    </div>

                                                    <div class="hr hr-8 dotted"></div>

                                                    <%
                                                        }
                                                    %>

                                                </div><!-- /.col -->
                                            </div><!-- /.row -->

                                        </div><!-- /#home -->


                                        <div id="pictures" class="tab-pane">
                                            <ul class="ace-thumbnails">
                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-1.jpg" />
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-2.jpg" />
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-3.jpg" />
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-4.jpg" />
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-5.jpg" />
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-6.jpg" />
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-1.jpg" />
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li>
                                                    <a href="#" data-rel="colorbox">
                                                        <img alt="150x150" src="assets/images/gallery/thumb-2.jpg" />
                                                        <div class="text">
                                                            <div class="inner">Sample Caption on Hover</div>
                                                        </div>
                                                    </a>

                                                    <div class="tools tools-bottom">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-link"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-paperclip"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-pencil"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="ace-icon fa fa-times red"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div><!-- /#pictures -->
                                    </div>
                                </div>
                            </div>

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
    <script>
        $(document).ready(function() {
            $('#status').click(function() {
                var id = $('#id').val();
//                alert("clicked" + id);
                $.get('<%=request.getContextPath()%>/JSON-AJAX/UpadteStudentStatusAJAX.jsp?id=' + id, function(data, status) {
//                    alert(id);
                    var result = data;
                    obj = eval("(" + result + ")");
                    alert(obj[0].msg);
                    window.location.reload();
                });
            });
        });
    </script>
</body>
</html>
