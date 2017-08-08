<%-- 
    Document   : reg_add_stud_class_2
    Created on : 13 Apr, 2010, 9:12:45 PM
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
         String regsession=request.getParameter("sessionyr");
         session.setAttribute("regsession",regsession);
        %>
    </head>
    <body>
        <center><h1>NEW SESSION INFORMATION</h1>

        <form name="stud_class" action="add_stud_class" method="post">
            <br><br>
            Enrollment Number : <input type="text" name="enrol_no" />
            <br><br>
            Roll Number : <input type="text" name="roll_no" />
            <br><br>
            Name : <input type="text" name="name" />
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
