<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        HttpSession se=request.getSession();
        // course name
        String c=(String)se.getAttribute("cn");
        %>
        <%
     int s8=0;
     int s9=0;
        try
      {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:ac");
Statement stat=conn.createStatement();
String str="select * from course where c_name='"+c+"'";
ResultSet rs= stat.executeQuery(str);
while (rs.next())
       {
    s8=rs.getInt("ques_disp");
    s9=rs.getInt("max_q");
       }  
System.out.println(s8);
se.setAttribute("qq",s8);
se.setAttribute("ma_q",s9);
//response.sendRedirect("te_hm.jsp");
     }
catch(Exception ae)
{
ae.printStackTrace();
}     
    %>  
    

        <%
     int s81=0;
        try
      {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:ac");
Statement stat=conn.createStatement();
String str="select * from reg_teacher where c_adp='"+c+"'";
ResultSet rs= stat.executeQuery(str);
while (rs.next())
       {
    s81=rs.getInt("no_ques");
       }  
System.out.println(s8);
se.setAttribute("new_q",s8);
response.sendRedirect("te_hm.jsp");
     }
catch(Exception ae)
{
ae.printStackTrace();
}     
    %>  
    </body>
</html>
