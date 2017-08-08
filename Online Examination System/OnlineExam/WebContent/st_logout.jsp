<%-- 
    Document   : st_logout
    Created on : Apr 7, 2009, 12:36:22 AM
    Author     : ARVIND
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
        <h2></h2>
        <%
        HttpSession st=request.getSession();
        st.invalidate();
        response.sendRedirect("st_log.jsp");
        %>
    </body>
</html>
