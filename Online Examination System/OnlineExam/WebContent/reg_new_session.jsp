<%-- 
    Document   : reg_selsession
    Created on : 5 Mar, 2010, 6:59:52 PM
    Author     : Arvind
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center><h1>CREATE NEW SESSION</h1>
        <form name="session" action="reg_new_session_info.jsp" method="post">
            <br><br>
            Session : <input type="text" name="sessionyr" />
            <br>
            <br>
            <input type="submit" value="submit" />
        </form>
        </center>
    </body>
</html>
