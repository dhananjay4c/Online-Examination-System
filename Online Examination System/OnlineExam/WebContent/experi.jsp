<%-- 
    Document   : experi
    Created on : 13 Apr, 2010, 12:25:57 PM
    Author     : Arvind
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%

        try {

            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:college");
Statement stat=conn.createStatement();
        String sql="SELECT * from tab";
        ResultSet rs=stat.executeQuery(sql);
        while(rs.next())
            {
                System.out.println(rs.getString(1));
            }

        }
        catch(Exception ob)
                {
                    ob.printStackTrace();
                }

        %>
    </body>
</html>
