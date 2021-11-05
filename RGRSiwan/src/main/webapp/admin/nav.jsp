<%-- 
    Document   : nav
    Created on : Mar 2, 2017, 11:35:00 AM
    Author     : arnav
--%>


<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">Ramashram Global Recources Admin Panel</a>
    </div>

    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>

    <!-- Top Navigation: Left Menu -->
    <ul class="nav navbar-nav navbar-left navbar-top-links">
        <li><a href="http://www.diicedu.com" target="blank"><i class="fa fa-home fa-fw"></i>Visit Website</a></li>
    </ul>

    <!-- Top Navigation: Right Menu -->
    <ul class="nav navbar-right navbar-top-links">
        <li class="dropdown navbar-inverse">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-bell fa-fw"></i> <b class="caret"></b>
            </a>
            <ul class="dropdown-menu dropdown-alerts">
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-comment fa-fw"></i> New Comment
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a class="text-center" href="#">
                        <strong>See All Alerts</strong>
                        <i class="fa fa-angle-right"></i>
                    </a>
                </li>
            </ul>
        </li>
        <li class="dropdown navbar-inverse">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-comment fa-fw"></i> <b class="caret"></b>
            </a>
            <ul class="dropdown-menu dropdown-alerts">
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-comment fa-fw"></i> New Comment
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a class="text-center" href="#">
                        <strong>See All Alerts</strong>
                        <i class="fa fa-angle-right"></i>
                    </a>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i>  <b class="caret"></b>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="diice-setting.jsp"><i class="fa fa-gear fa-fw"></i> Settings</a>
                </li>
                <li class="divider"></li>
                <li>
                    <form method="post" action="../DiiceAdminLogoutServices">
                        <%
                        String username=(String)session.getAttribute("userid");
                        %>
                        <button type="submit" value="<%= username %>" name="userid"><i class="ace-icon fa fa-power-off"></i> Logout</button>
                    </form>
<!--                    <a href="" onclick="window.close();">
                        <i class="ace-icon fa fa-power-off"></i>
                        Logout
                    </a>-->
                </li>
            </ul>
        </li>
    </ul>

    <!-- Sidebar -->
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">

            <ul class="nav" id="side-menu">
                <li class="sidebar-search">
                    <div class="input-group custom-search-form">
                        <input type="text" class="form-control" placeholder="Search...">
                        <span class="input-group-btn">
                            <button class="btn btn-primary" type="button">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                </li>
                <li>
                    <a href="Dashboard.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap fa-fw"></i> Product Manager<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="students.jsp">Gallery</a>
                        </li>
                        <li>
                            <a href="students.jsp">Product_Price</a>
                        </li>
                        <li>                                
                            <a href="onlinestudentmanager.jsp"><i class="fa fa-user-md fa-fw"></i>Online Admission Status</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap fa-fw"></i> Employee Profile<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
<!--                        <li>
                            <a href="AddNewEmployee.jsp">Add New Employee </a>
                        </li>-->
                        <li>                                
                            <a href="employee-profile.jsp"><i class="fa fa-user-md fa-fw"></i>Employee List</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="news.jsp"><i class="fa fa-user-md fa-fw"></i> News Manager</a>
                </li>
               
<!--                <li>
                    <a href="news.jsp"><i class="fa fa-user-md fa-fw"></i>DIICE Profile</a>
                </li>-->
                <li>
                    <a href="diice-course-list.jsp"><i class="fa fa-user-md fa-fw"></i>Course List</a>
                </li>
                <li>
                    <a href="notification-list.jsp"><i class="fa fa-user-md fa-fw"></i>Notifications</a>
                </li>
                <!--            <li>
                                <a href="onlinestudentmanager.jsp"><i class="fa fa-user-md fa-fw"></i>Online Admission Status</a>
                            </li>-->

            </ul>

        </div>
    </div>
</nav>