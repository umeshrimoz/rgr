<%-- 
    Document   : employee-profile
    Created on : Aug 26, 2017, 12:25:29 PM
    Author     : Umesh Yadav
--%>

<%@page import="com.diice.diiceadmin.action.EmployeeAction"%>
<%@page import="com.diice.diiceadmin.form.EmployeeForm"%>
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
        <link rel="icon" href="images/dic-img/diicelogo.png" >
        <title>Employee- Diice </title>
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
                            <h1 class="page-header text-center ">Employee Panel!</h1>                    
                        </div>
                    </div>

                    <ul class="nav navbar-right navbar-top-links">
                        <li class="dropdown navbar-inverse">
                            <a href="AddNewEmployee.jsp">
                                <i class="fa fa-pencil fa-fw"></i>Add New Employee
                            </a>                            
                        </li>

                    </ul>
                    <!-- ... Your content goes here ... -->

                    <div class="panel panel-primary">
                        <div class="panel-header" style="background-color: #009966; color: #ffffff; height: 48px; font-size: 18px;">
                            <div class="panel-heading glyphicon glyphicon-user">                                
                                <strong>Employee List</strong>
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
                                    <thead style="background-color: #999900; color: #ffffff;">
                                        <tr>
                                            <th>Sno.</th>
                                            <th>Name</th>
                                            <th>Image</th>
                                            <th>Job Title</th>
                                            <th>Qualification</th>
                                            <th>Contact</th>
                                            <th>Joining Date</th>
                                            <th>Status</th>
                                            <th>Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% int sno = 0;
                                            EmployeeAction ad = new EmployeeAction();
                                            List<EmployeeForm> aflist = ad.getAllList();
                                            if (!aflist.isEmpty()) {
                                                for (EmployeeForm ef : aflist) {
                                                    sno++;
                                        %>

                                        <tr>
                                            <td><%=sno%><input type="hidden" value="<%=ef.getId()%>" id="id" ></td>
                                            <td><%=ef.getName()%></td>
                                            <td><img src="../GetEmployeeService?id=<%=ef.getId()%>" width="50" height="50"/> </td>
                                            <td><%=ef.getJob()%></td>
                                            <td><%=ef.getQualification()%></td>
                                            <td>
                                    <snap class="fa fa-phone"> <%=ef.getMobile()%></snap><br>
                                    <snap class="fa fa-envelope">   <%=ef.getEmail()%>
                                        </td>
                                        <td><%=ef.getJoining_date()%></td>
                                        <td><span class="badge badge-primary bg-primary"><%=ef.getStatus()%></span></td>


                                        <td>
                                            <div class="hidden-md hidden-md action-buttons">
                                                <a class="green" href="#reserv<%=ef.getId()%>" data-target="" data-toggle="modal">
                                                    <i class="btn btn-primary ace-icon fa fa-search-plus  bigger-330"> </i>
                                                </a>
                                                <!--edit modal-->
                                                <div  class="modal fade" id="reserv<%=ef.getId()%>" tabindex="1" role="dialog" data-backdrop="static" aria-labelledby="expls2"  aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content" style="width: 950px;margin-left: -180px;">
                                                            <div class="modal-header " style="background-color:  #009999">
                                                                <button type="button" class="close " data-dismiss="modal"><span class="glyphicon glyphicon-remove-circle bg-danger">  </span></button>
                                                                <strong style="color:#ffffff; font-size: 17px; " class=""> Employee Details Information</strong>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form class="form-horizontal" method="post" action role="form">                                                  
                                                                    <div class="row">
                                                                        <div class="col-lg-2">
                                                                            <img src="../GetEmployeeService?id=<%=ef.getId()%>" width="200" height="200"/> 
                                                                        </div>
                                                                        <div class="col-lg-8 col-lg-offset-1">
                                                                            <div class="form-group">
                                                                                <label class="col-lg-2 control-label">Name:- </label>
                                                                                <div class="col-lg-3">
                                                                                    <label class="control-label"><%=ef.getName()%></label>
                                                                                </div>
                                                                                <label class="col-lg-3 control-label">Job Title:-</label>
                                                                                <div class="col-lg-3">
                                                                                    <label class="col-lg-2 control-label"><%=ef.getJob()%></label>
                                                                                </div>
                                                                                <label class="col-lg-2 control-label">Qualification:-</label>
                                                                                <div class="col-lg-3">
                                                                                    <label class=" control-label"><%=ef.getQualification()%></label>
                                                                                </div>
                                                                                <label class="col-lg-3 control-label">Email:-</label>
                                                                                <div class="col-lg-3">
                                                                                    <label class="col-lg-2 control-label"><%=ef.getEmail()%></label>
                                                                                </div>
                                                                                <label class="col-lg-2 control-label">Mobile:-</label>
                                                                                <div class="col-lg-3">
                                                                                    <label class="col-lg-2 control-label"><%=ef.getMobile()%></label>
                                                                                </div>
                                                                                <label class="col-lg-3 control-label">State:-</label>
                                                                                <div class="col-lg-3">
                                                                                    <label class="col-lg-2 control-label"><%=ef.getRstate()%></label>
                                                                                </div>
                                                                                <label class="col-lg-2 control-label">City:-</label>
                                                                                <div class="col-lg-3">
                                                                                    <label class="col-lg-2 control-label"><%=ef.getCity()%></label>
                                                                                </div>
                                                                                <label class="col-lg-3 control-label">Pin:-</label>
                                                                                <div class="col-lg-3">
                                                                                    <label class="col-lg-2 control-label"><%=ef.getPin()%></label>
                                                                                </div>
                                                                                <label class="col-lg-2 control-label">Country:-</label>
                                                                                <div class="col-lg-3">
                                                                                    <label class="col-lg-2 control-label"><%=ef.getCountry()%></label>
                                                                                </div>
                                                                                <label class="col-lg-3 control-label">Address:-</label>
                                                                                <div class="col-lg-3">
                                                                                    <label class="col-lg-2 control-label"><%=ef.getAddress()%></label>
                                                                                </div>
                                                                                <label class="col-lg-2 control-label">Status:-</label>
                                                                                <div class="col-lg-3">
                                                                                    <label class="col-lg-2 control-label"><%=ef.getStatus()%></label>
                                                                                </div>
                                                                                <label class="col-lg-3 control-label">Joining date:-</label>
                                                                                <div class="col-lg-3" style="margin-top: 8px;">
                                                                                    <%=ef.getJoining_date()%>
                                                                                </div>

                                                                            </div>


                                                                        </div>

                                                                    </div>
                                                                    <!--Button-->
                                                                    <div class="form-group well-sm ">
                                                                        <div class="col-lg-offset-5 col-lg-5">
                                                                            <!--                                                                                <button type="submit" class="btn btn-primary">Update</button>
                                                                                                                                                            <button type="button" class="btn btn-danger">Cancel</button>-->
                                                                        </div>
                                                                    </div>

                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <a class="green" href="editemployee.jsp?id=<%=ef.getId()%>">
                                                    <i class="btn btn-danger ace-icon fa fa-edit  bigger-330"></i>
                                                </a>
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

    <script>
        $(document).ready(function() {
            $('#editemp').click(function() {
                var id = $('#id').val();
                alert(id);
            });
        });
    </script>
</body>
</html>
