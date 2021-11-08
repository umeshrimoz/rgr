<%-- 
    Document   : diice-setting
    Created on : 26 Aug, 2017, 3:01:44 PM
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
        <title>Diice Setting - Diice Manager</title>
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
                            <h1 class="page-header text-center ">Password Reset Panel!</h1>                    
                        </div>
                    </div>

                    <!-- ... Your content goes here ... -->
                    <div class="panel panel-primary">
                        <div class="panel-header bg-info" style="height: 48px; font-size: 18px;">
                            <div class="panel-heading">                                
                                <strong>Change Admin Password</strong>
                            </div>
                        </div>
                        <div class="panel panel-body">
                            <!--form--> 
                            <div class="row  "> 
                                <!--#####################################################################################################-->
                                <div class="col-md-6">
                                    <div class="form-group"> 
                                        <label class="control-label"> </label>
                                        <div class="selectContainer">
                                            <div class="input-group">
                                                <input type="hidden" value="diice123" id="userid">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group"> 
                                        <label class="control-label"> </label>
                                        <div class="selectContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"> <i class="fa fa-key"></i></span>
                                                <input type="password" name="newpassword" required="" id="newpassword" placeholder="Enter New Password" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group"> 
                                        <label class="control-label"> </label>
                                        <div class="selectContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"> <i class="fa fa-key"></i></span>
                                                <input type="password" name="confirmPassword" required="" id="confirmPassword" placeholder="Re-enter New Password" class="form-control">
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-lg-12 col-md-offset-8">
                                        <label class="control-label"> </label>
                                        <div class="form-group">
                                            <button type="button" id="resetbutton" class="btn btn-group btn-success">
                                                Reset Password &nbsp;<span class="glyphicon glyphicon-send"></span></button>
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
    <script>
        $(document).ready(function(){
        $('#resetbutton').click(function (){
        var userid=$('#userid').val();
        <!--var oldpass=$('#oldspassword').val();-->
        var newpass=$('#newpassword').val();
        var repass=$('#confirmPassword').val();
        if(newpass!="" && repass!="" && newpass===repass){
        $('#newpassword').css('border','1px solid green');
        $('#confirmPassword').css('border','1px solid green');
        $.get('<%=request.getContextPath()%>/JSON-AJAX/ChangeDIICEAdminPasswordAJAX.jsp?newpass=' +newpass+ '&userid=' +userid, function (data,status){
        var result = data;
        obj = eval("(" + result + ")");
        alert(obj[0].msg);
        window.location.reload();
        });
        }else{
        $('#newpassword').css('border','1px solid red');
        $('#confirmPassword').css('border','1px solid red');
        }
        });
        });
    </script>
</body>
</html>


