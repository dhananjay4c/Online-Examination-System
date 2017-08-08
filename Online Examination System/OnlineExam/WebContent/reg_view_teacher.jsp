
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     <script language='javascript'>
            function deletestud()
            {
            document.myform.action='delete_student';
            }
            function refreshpage()
            {
            location.reload(true);
            }
            </script>

    </head>
    <body>

        <%

       try
           {
               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection conn=DriverManager.getConnection("jdbc:odbc:college");
        Statement stat=conn.createStatement();

        String sql="select * from teacher_info";
        ResultSet rs=stat.executeQuery(sql);
        System.out.print("working.." + rs.toString());
            
        %>
        <center><h1>LIST OF STUDENTS OF TEACHERS</h1>
            <br>
            <form name="myform" action="view_stud_repo_info.jsp" method="POST">
            <table border=0 cellspacing=10>
            <tr>
            <th>Teacher id</th>
            <th>Name</th>
            <th>Subject</th>
            <th>Classes</th>
            </tr>
            <%
            while(rs.next())
            {
                %>
            <tr>
           <%
                String roll=rs.getString("tea_id");  %>
            
                <td><input type="radio" name="tea_id" value="<%= roll%>"><%= roll%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("subject")%></td>
                <td><%=rs.getString("classes")%></td>
            </tr>
            <%
            }
        %>
            </table>
            <input type="submit" value="submit" />
            <input type="submit" value="Delete Student" onclick="deletestud()" />
            <input type="button" value="Refresh" onclick="refreshpage();">
            </form>
        </center>
            </body>
            </html>

            <%
       }
        catch(Exception ob)
        {
        ob.printStackTrace();
        }
        finally {
            out.close();
        }
    



        %>
    </body>
</html>
