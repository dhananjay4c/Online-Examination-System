
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <%
        String branch=request.getParameter("branch");
        String semester=request.getParameter("sem");

        
     %>


    <body>
        <center>
            <h2>SUBJECTS</h2>
           
             <table border="0" width="100%">
              <%
              try
                {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:college");
Statement stat=conn.createStatement();
System.out.println(branch + "  " + semester);
        String sql="select * from "+branch+" where semester='"+semester+"'";
        //'"+semester+"'
        ResultSet rs=stat.executeQuery(sql);
              while(rs.next())
                  {
                  %>
                 <tr>
                     <td><%= rs.getString("subject") %></td>
           </tr>
                     <%
              }
        }
        catch(Exception ob)
                {
                  ob.printStackTrace();
                }
        
           %>
             </table>
        </center>
    </body>
</html>
