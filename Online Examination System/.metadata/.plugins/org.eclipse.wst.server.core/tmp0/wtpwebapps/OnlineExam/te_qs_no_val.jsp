<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
         javascript:window.history.forward(1);   
        </script>
    </head>
    <body>
        <%
     HttpSession se=request.getSession();
     String u=request.getParameter("o");
     System.out.println("no of question user entered");
     System.out.println(u);
     se.setAttribute("u", u);
     response.sendRedirect("te_qs.jsp");
      %>
       
    </body>
</html>