<%-- 
    Document   : students
    Created on : Mar 7, 2017, 11:11:50 AM
    Author     : arnav
--%>

<%@page  import="com.diice.diiceadmin.form.DiiceStudentForm" %>
<jsp:useBean id="studentactn" class="com.diice.diiceadmin.action.StudentAction" />
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
        <title>Diice student - Diice Manager</title>
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

                    <ul class="nav navbar-right navbar-top-links">
                        <li class="dropdown navbar-inverse">
                            <a href="diice-new-student.jsp">
                                <i class="fa fa-pencil fa-fw"></i>Add New Student
                            </a>                            
                        </li>

                    </ul>
                    <!-- ... Your content goes here ... -->

                    <div class="panel panel-primary">
                        <div class="panel-header bg-info" style="height: 48px; font-size: 18px;">
                            <div class="panel-heading">                                
                                <strong>Student List</strong>
                            </div>
                        </div>

                        <div class="panel panel-body">
                            <div class="input-group custom-search-form">
                                <!--search-->
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i> Search Student
                                    </button>
                                </span>
                            </div>
                            <!--/search-->
                            <br>
                            <!--table-->
                            <div class="table-responsive">
                                <table class="table" border="1" width="120" cellspacing="3" cellpadding="2">
                                    <thead>
                                        <tr>
                                            <th>Sr. No.</th>
                                            <th>Student ID</th>
                                            <th>Student Name</th>
                                            <th>Father's Name</th>
                                            <th>Course</th>
                                            <th>DOB</th>
                                            <th>Address</th>
                                            <th>Contact</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                        List<DiiceStudentForm> dsf=studentactn.getStudent();
                                        if(!dsf.isEmpty())
                                        {
                                           int srno=0;
                                           for(DiiceStudentForm slist:dsf)
                                           {
                                               srno++;
                                           %>
                                        <tr>
                                            <td><%=srno%></td>
                                            <td><%= slist.getStudentid() %></td>
                                            <td><%= slist.getStudentname() %></td>
                                            <td><%= slist.getFathername() %></td>
                                            <td><%= slist.getCoursename() %></td>
                                            <td><%= slist.getDob() %></td>
                                            <td><%= slist.getAddress() %>, <%= slist.getDistrict() %><br><%= slist.getSstate() %>, <%= slist.getZip() %></td>
                                            <td> +91-<%= slist.getMobile() %><br><%= slist.getEmail() %></td>
                                            <td><a href="Edit-student-profile.jsp?ID=<%= slist.getStudentid() %>" class="fa fa-edit text-success" title="Update Student Details"> </a>  &nbsp;<a href="student-profile.jsp?ID=<%= slist.getStudentid() %>" class="fa fa-search-plus text-success" title="Full View Student Profile"></a></td>
                                        </tr>
                                       <%    
                                           }
                                        }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                            <!--/table-->

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
