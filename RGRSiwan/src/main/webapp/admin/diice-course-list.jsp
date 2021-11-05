<%-- 
    Document   : diice-course-list
    Created on : 19 Aug, 2017, 4:34:52 PM
    Author     : atul Arnav Sharma
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
                            <h1 class="page-header text-center ">Course Panel!</h1>    
                            ${Sucessmsg}
                        </div>
                    </div>

                    <ul class="nav navbar-right navbar-top-links">
                        <li class="dropdown navbar-inverse">
                            <a href="diice-new-course.jsp">
                                <i class="fa fa-pencil fa-fw"></i>Add New Course
                            </a>                            
                        </li>

                    </ul>
                    <!-- ... Your content goes here ... -->

                    <div class="panel panel-primary">
                        <div class="panel-header bg-info" style="height: 48px; font-size: 18px;">
                            <div class="panel-heading">                                
                                <strong>Course List</strong>
                            </div>
                        </div>

                        <div class="panel panel-body">
<!--                            <div class="input-group custom-search-form">
                                search
                                <input type="text" class="form-control" placeholder="Search Course...">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i> Search Course
                                    </button>
                                </span>
                            </div>-->
                            <!--/search-->
                            <br>
                            <!--table-->
                            <div class="table-responsive">
                                <table class="table table-striped table-hover" border="1" width="120" cellspacing="3" cellpadding="2">
                                    <thead>
                                        <tr>
                                            <th>Sr. No.</th>
                                            <th>Course Code.</th>
                                            <th>Course Name</th>
                                            <th>Course Duration</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody class="">
                                        <%
                                            List<CourseForm> clist = courseactn.getCourseDetails();
                                            if (!clist.isEmpty()) {
                                                int sno = 0;
                                                for (CourseForm cf : clist) {
                                                    sno++;
                                        %>                                                                                
                                        <tr>
                                            <td><%=sno%></td>
                                            <td><%= cf.getCode()%></td>
                                            <td><%= cf.getCoursename()%></td>
                                            <td><%= cf.getDuration()%></td>  
                                            <td>
                                                <div class="hidden-md hidden-md action-buttons">
                                                    <a class="green" href="#reserv<%=cf.getCode()%>" data-target="" data-toggle="modal">
                                                        <i class="btn btn-primary ace-icon fa fa-edit  bigger-330"> Edit</i>
                                                    </a>
                                                    <!--edit modal-->
                                                    <div  class="modal fade" id="reserv<%=cf.getCode()%>" tabindex="1" role="dialog" data-backdrop="static" aria-labelledby="expls2"  aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content" style="width: 570px;">
                                                                <div class="modal-header " style="background-color:  #009999">
                                                                    <button type="button" class="close " data-dismiss="modal"><span class="glyphicon glyphicon-remove-circle bg-danger">  </span></button>
                                                                    <strong style="color:#ffffff; font-size: 17px; " class="">Edit Course Details Information</strong>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <form class="form-horizontal" method="post" action="../EditCourseService" role="form">                                                  
                                                                        <div class="col-lg-11">
                                                                            <div class="form-group">
                                                                                <label class="col-sm-5 control-label no-padding-right" for="form-field-2"> Course Code</label>
                                                                                <div class="col-sm-7">
                                                                                    <input type="text" class="form-control" name="code" value="<%=cf.getCode()%>"  id="form-field-2"   > 
                                                                                    <input type="hidden"  name="code" value="<%=cf.getCode()%>" id="form-field-2"   > 
                                                                                    <snap class="" style="color:red; padding-left: 8px;"></snap>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-sm-5 control-label no-padding-right" for="form-field-2"> Course Name</label>

                                                                                <div class="col-sm-7">
                                                                                    <input type="text" class="form-control" name="coursename" value="<%=cf.getCoursename()%>"  id="form-field-2">  
                                                                                    <snap class="" style="color:red; padding-left: 8px;"></snap>
                                                                                </div>
                                                                            </div>
                                                                               <div class="form-group">
                                                                                <label class="col-sm-5 control-label no-padding-right" for="form-field-2"> Course Duration</label>

                                                                                <div class="col-sm-7">
                                                                                    <input type="text" class="form-control"  name="duration" value="<%=cf.getDuration()%>"  id="form-field-2">  
                                                                                    <snap class="" style="color:red; padding-left: 8px;"></snap>
                                                                                </div>
                                                                            </div>     

                                                                        </div>

                                                                        <!--Button-->
                                                                        <div class="form-group well-sm ">
                                                                            <div class="col-lg-offset-5 col-lg-5">
                                                                                <button type="submit" class="btn btn-primary">Update</button>
                                                                                <!--<button type="button" class="colse btn btn-danger" data-dismiss="modal" >Cancel</button>-->
                                                                            </div>
                                                                        </div>

                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
<!--                                                    <a class="green" href="#del" data-target="" data-toggle="modal">
                                                        <i class="btn btn-danger ace-icon fa fa-trash  bigger-330">Delete</i>
                                                    </a>-->
                                                </div>
                                            </td>


                                        </tr>
                                        <% 
                                                }
                                            }%>  

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


