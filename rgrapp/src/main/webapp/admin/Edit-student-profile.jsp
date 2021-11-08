<%-- 
    Document   : Edit-student-profile
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
        <link rel="icon" href="images/dic-img/diicelogo.png" >
        <title>Diice Edit Student Profile- Diice Manager</title>
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
                                <strong>Edit Student Profile</strong>
                            </div>
                        </div>

                        <div class="panel panel-body">
                            
                           <!--form-->
                            <form method="post" action="../UpdateStudentProfileServices">  
                                <div class="row  "> 
                                    <% String ID=request.getParameter("ID");
                                    DiiceStudentForm dsf=studentactn.getStudentByID(ID);
                                    if(dsf!=null)
                                    {
                                    %>
                                    <!--#####################################################################################################-->
                                    <div class="container row  "> 
                                     <div class="col-md-4 form-group"> 
                                            <label class="control-label">Student ID</label>
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-user"></i></span>
                                                    <input type="text" name="id" id="id" value="<%= dsf.getStudentid()%>" readonly="" placeholder="Enter Course Code" class="form-control selectpicker">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                                
                                    <div class="col-md-4">
                                        <h4>Course Details</h4>
                                        <div class="form-group"> 
                                            <label class="control-label"> </label>
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-user"></i></span>
                                                    <select  class="form-control selectpicker" name="coursename" id="coursename" >
                                                        <option value="<%= dsf.getCoursename() %>"><%= dsf.getCoursename() %></option>  
                                                        <%
                                                            List<CourseForm> clist = courseactn.getCourseDetails();
                                                            if (!clist.isEmpty()) {
                                                                int srno = 0;
                                                                for (CourseForm cf : clist) {
                                                                    srno++;
                                                        %>  
                                                        <option value="<%= cf.getCoursename()%>"><%= cf.getCoursename()%></option>
                                                        <%
                                                                }
                                                            }
                                                        %>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group"> 
                                            <label class="control-label"> </label>
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-user"></i></span>
                                                    <input type="text" name="coursecode" id="coursecode" value="<%= dsf.getCoursecode() %>" readonly="" placeholder="Enter Course Code" class="form-control selectpicker">
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
                                                    <input type="text" name="courseduration" id="courseduration" readonly="" value="<%= dsf.getCourseduration() %>" placeholder="Enter course duration" class="form-control selectpicker">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <!--#####################################################################################################-->                     

                                <div class="row">   
                                    <%-- b. name--%>
                                    <div class="col-lg-4">
                                        <h4>Student's Details</h4>
                                        <div class="form-group"> 
                                            <label class="control-label"> </label>
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-user"></i></span>
                                                    <input type="text" name="studentname" value="<%= dsf.getStudentname() %>" placeholder="Enter student's Name" class="form-control selectpicker">
                                                </div>
                                            </div>
                                        </div>
                                        <!--/b .name-->                                                              

                                        <!--d .name-->
                                        <div class="form-group"> 
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-user"></i></span>
                                                    <input type="text" name="fathername" value="<%= dsf.getFathername() %>" placeholder="Enter Father's Name" class="form-control selectpicker">
                                                </div>
                                            </div>
                                        </div>
                                        <!--/d . Name-->
                                        <!--/b .name-->
                                        <!--m .name-->
                                        <div class="form-group"> 
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-user"></i></span>
                                                    <input type="text" name="mothername" value="<%= dsf.getMothername() %>" placeholder="Enter Mother's Name" class="form-control selectpicker">
                                                </div>
                                            </div>
                                        </div>
                                        <!--/m . Name-->
                                        <!--dob-->
                                        <div class="form-group"> 
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-list"></i></span>
                                                    <input type="date"  name="dob" value="<%= dsf.getDob() %>" placeholder="Enter Date of Birth" class="form-control selectpicker"title="Enter Director's Date of Birth">
                                                </div>
                                            </div>
                                        </div>
                                        <!--/dob-->
                                        <!--sex-->

                                        <div class="form-group"> 
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-user"></i></span>
                                                    &nbsp; &nbsp;<input type="radio"  value="<%= dsf.getSex() %>" name="sex"> Male 
                                                    <input type="radio" value="<%= dsf.getSex() %>" name="sex"> Female 
                                                </div>
                                            </div>
                                        </div><!--/sex -->
                                        <!--marital-status-->
                                        <div class="form-group"> 
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-list"></i></span>
                                                    <select  class="form-control selectpicker" name="qualification" >
                                                        <option value="<%= dsf.getQualification() %>" ><%= dsf.getQualification() %></option>
                                                        <option value="10th">10th</option>
                                                        <option value="10+2">10+2th</option>
                                                        <option value="Graduation">Under-Graduation</option>
                                                        <option value="Master">Post-Graduation</option>
                                                    </select>
                                                </div>  
                                            </div>  
                                        </div><!--/Married -->
                                        <div class="form-group"> 
                                            <div class="selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"> <i class="glyphicon glyphicon-list"></i></span>
                                                    <select  class="form-control selectpicker" name="religion" >
                                                        <option value="<%= dsf.getReligion() %>"><%= dsf.getReligion() %> </option>
                                                        <option value="hindu">Hindu </option>
                                                        <option value="islam">Islam </option>
                                                        <option value="shikh">Shikh </option>
                                                        <option value="cristian">Cristian</option>
                                                        <option value="others">Others</option>
                                                    </select>
                                                </div>  
                                            </div>  
                                        </div><!--/Religion -->
                                        <!--add --> 

                                    </div><!--/col-lg-4 2nd line -->
                                    <%--/ Select stat--%>
                                    <div class="row">   
                                        <%-- b. name--%>
                                        <div class="col-lg-4"><br><br><br>
                                            <div class="form-group"> 
                                                <div class="form-group"> 
                                                    <div class="selectContainer">
                                                        <div class="input-group">
                                                            <span class="input-group-addon"> <i class="glyphicon glyphicon-phone"></i></span>
                                                            <input type="text" name="mobile" value="<%= dsf.getMobile() %>" placeholder="Enter Mobile Number" class="form-control selectpicker">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><!--/Mobile -->
                                            <div class="form-group"> 
                                                <div class="form-group"> 
                                                    <div class="selectContainer">
                                                        <div class="input-group">
                                                            <span class="input-group-addon"> <i class="glyphicon glyphicon-envelope"></i></span>
                                                            <input type="email" name="email" value="<%= dsf.getEmail() %>" placeholder="Enter Email Id" class="form-control selectpicker">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><!--/Email -->
                                            <div class="form-group"> 
                                                <div class="selectContainer">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"> <i class="glyphicon glyphicon-home"></i></span>
                                                        <input type="text" name="address" value="<%= dsf.getAddress()%>" placeholder="Enter Address" class="form-control selectpicker">
                                                    </div>
                                                </div>
                                            </div><!--/add -->
                                            <%-- Select Dist--%>

                                            <div class="form-group"> 
                                                <div class="selectContainer">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"> <i class="glyphicon glyphicon-home"></i></span>
                                                        <input type="text" name="district" value="<%= dsf.getDistrict() %>" placeholder="Enter Disctict" class="form-control selectpicker">
                                                    </div>
                                                </div>
                                            </div><!--/dist -->
                                            <div class="form-group"> 
                                                <div class="selectContainer">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"> <i class="glyphicon glyphicon-home"></i></span>
                                                        <input type="text" name="state" value="<%= dsf.getSstate() %>" placeholder="Enter your State" class="form-control selectpicker">
                                                    </div>
                                                </div>
                                            </div><!--/State -->

                                            <div class="form-group"> 
                                                <div class="form-group"> 
                                                    <div class="selectContainer">
                                                        <div class="input-group">
                                                            <span class="input-group-addon"> <i class="glyphicon glyphicon-home"></i></span>
                                                            <input type="text" name="zip" value="<%= dsf.getZip() %>" placeholder="Enter Pin Code" class="form-control selectpicker">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><!--/PIN -->
                                            <div class="form-group"> 
                                                <div class="selectContainer">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"> <i class="glyphicon glyphicon-list"></i></span>
                                                        <select name="country" class="form-control selectpicker" >
                                                            <option value="<%= dsf.getCountry() %>" ><%= dsf.getCountry() %></option>
                                                            <option value="India">India </option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div><!--country -->                                                                
                                        </div>
                                    </div>
                                     
                                    <%-- SBat --%>
                                    <div class="col-lg-4">
                                        <label class="control-label"> </label>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-group btn-success  pull-left">
                                                Edit Student Profile &nbsp;<span class="glyphicon glyphicon-send"></span></button>
                                        </div>
                                    </div>
                                    <%}%>
                                </div>


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
