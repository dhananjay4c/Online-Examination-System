
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <%
        String regsession=request.getParameter("sessionyr");
        String a=(String)session.getAttribute("regsession");
        if(a!=null)
         regsession=a;
        a=null;
       session.setAttribute("regsession",regsession);
       String error=(String)session.getAttribute("taberr");
        if(error==null)
        {
            error="";
        }
%>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        


        <center><h1>NEW SESSION INFORMATION</h1>
            <center><label><b><font color="red"><%=error%></font></b></label></center><br><br>
        <form name="new_session" action="reg_newsession" method="post">
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
