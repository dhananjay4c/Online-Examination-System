<%-- 
    Document   : error
    Created on : Apr 6, 2009, 10:20:31 PM
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
        <h2>You cannot give the exam. Contact your teacher</h2>
        <form name="f1" action="st_logout.jsp" method="POST">
            <%
        HttpSession st=request.getSession();
    String dd=(String)st.getAttribute("stu");
        System.out.println(dd);
        %>
            <input type="submit" value="Log Out" name="b1" style="font-weight: 700" />
</form>
    </body>
</html>
