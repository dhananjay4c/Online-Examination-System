<%-- 
    Document   : reg_view_studs_class_1
    Created on : 14 Apr, 2010, 10:24:44 AM
    Author     : Arvind
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
             session.setAttribute("user_acc","registrar");
        %>
    </head>
    <body>
        <center><h1>ENTER THE CLASS INFORMATION</h1>
            <form name="classinfo" action="view_studs_class" method="post">
            <br><br>
            Session : <input type="text" name="sessionyr" />
            <br><br>
            Year : <input type="text" name="year" />
            <br><br>
            Branch : <input type="text" name="branch" />
            <br><br>
            Semester : <input type="text" name="semester" />
            <br><br>
            <input type="submit" value="submit" />
        </form>
        </center>
    </body>
</html>
