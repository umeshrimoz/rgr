<%-- 
    Document   : applicationSecurity
    Created on : Dec 14, 2016, 1:04:23 PM
    Author     : Umesh Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        
         <%
           Object username=session.getAttribute("userid");
           Object ob=session.getAttribute("timeOut");
           if(username==null&&ob==null)
           {
             session.removeAttribute("userid");
             session.removeAttribute("timeOut");
             session.invalidate();
             request.setAttribute("invalidate","Session Expire ! Please Login First");
             request.getRequestDispatcher("logout.jsp").forward(request, response);
           }
        %>
    </body>
</html>