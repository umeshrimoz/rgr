<%-- 
    Document   : news
    Created on : Mar 2, 2017, 11:57:53 AM
    Author     : arnav
--%>
<%@page import="java.util.List"%>
<%@page import="com.diice.diiceadmin.form.BranchNewsForm"%>
<jsp:useBean id="bnnewsactn" class="com.diice.diiceadmin.action.BranchNewsAction" />
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
        <title>News Manager - Diice Manager</title>
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
                            <h1 class="page-header text-center">News Manager Page!</h1>
                        </div>
                    </div>

                    <div class="row" style="border: gold solid 1px;"><br>
                        <div class="col col-md-6 col-md-offset-1">
                            <input type="hidden" value="diice" id="diice" class="form-control input-group-lg" required="" placeholder="Type New News Information">
                            <input type="text" value="" name="news" id="news" class="form-control input-group-lg" required="" placeholder="Type New News Information">
                        </div>
                        <div class="col col-md-2">
                            <button type="button" id="submit" class="form-control btn-group-lg btn-success">Add News</button><br>
                        </div>
                    </div> <br><br><br>

                    <div class="row">
                        <div class="panel panel-primary">
                            <div class="panel-heading ">
                                <h4 class="panel-title glyphicon glyphicon-inbox">
                                    <a data-toggle="collapse" data-parent="#accordion1" style="font-size: 18px;" href="#collapse1">DIICE News</a>
                                </h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse in">
                                <div class="panel-body text-info">
                                    <div class="table-responsive">          
                                        <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th class="center">                                                                
                                                        Sr. No.
                                                    </th>
                                                    <th>News</th>
                                                    <th class="hidden-480">Updated on</th>

                                                    <th>Action</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <%
                                                List<BranchNewsForm> bna=bnnewsactn.getBranchNews();
                                                if(!bna.isEmpty())
                                                {
                                                    for(BranchNewsForm bn:bna)
                                                    {
                                                        %>                                                
                                              
                                                <tr>
                                                    <td><%= bn.getId() %></td>
                                                    
                                                    <td class="hidden-480"><%= bn.getNews() %> </td>

                                                    <td class="hidden-480">
                                                        <span class="label label-sm label-warning"> <%= bn.getUpdate_date()%></span> 
                                                    </td>

                                                    <td>
                                                        <div class="hidden-sm hidden-xs action-buttons delnews" data-target="<%= bn.getId() %>">
                                                            <!--<a href="#modal-table" role="button" class="blue" data-toggle="modal">-->
                                                            <a title="View Student Profile" class="blue">
                                                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                                            </a>
                                                        </div>

                                                        <div class="hidden-md hidden-lg">
                                                            <div class="inline pos-rel">
                                                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                                                </button>

                                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                                    <li>
                                                                        <a class="tooltip-info" data-rel="tooltip" title="View" >
                                                                            <span class="blue">
                                                                                <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                            </span>
                                                                        </a>
                                                                    </li>                                                                                                               
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr> 
                                                  <%
                                                    }
                                                }
                                                %>
                                            </tbody>
                                        </table>
                                    </div> <!--/table-responsive-->
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
                $('#submit').click(function() {
                    var news = $('#news').val();
                    var diice = $('#diice').val();
//                    alert(news);
//                    alert(diice);
                    $.get('<%=request.getContextPath()%>/JSON-AJAX/InserBranchtNewsAjax.jsp?news=' + news + '&diice=' + diice, function(data, status) {
                        var result = data;
                        obj = eval("(" + result + ")");
                        alert(obj[0].msg);
                        window.location.reload();
                    });
                });
                
                $('.delnews').click(function (){
                    var id=$(this).attr('data-target');
//                    alert(id);
                    var cheak = confirm("Are You Sure to delete this News?");
                            // alert(masg);
                            if (cheak == true)
                            {
                                $.get('<%=request.getContextPath()%>/JSON-AJAX/DeleteBranchNewsAJAX.jsp?id='+id, function(data, status) {
//                                    alert(centercode);
                                    var result = data;
                                    obj = eval("(" + result + ")");
                                    alert(obj[0].msg);
                                    window.location.reload();
                                });
                            }
                });
            });
        </script>
    </body>
</html>
