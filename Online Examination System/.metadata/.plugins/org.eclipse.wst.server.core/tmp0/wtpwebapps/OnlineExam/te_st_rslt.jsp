<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  int i=1; %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
         javascript:window.history.forward(1);   
        </script>
        <script>
function fi()
    {
    parent.location='te_hm.jsp'
    }
</script> 
    </head>
    <body>
        <% 
        HttpSession se=request.getSession();
         String c=(String)se.getAttribute("cn");
         System.out.println("First thing");
        System.out.println(c);
         String c1=(String)se.getAttribute("us");
         %>
        
        <h3>Login by:<%= c1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="te_hm.jsp">Home</a>&nbsp;
		<a href="te_logout.jsp">Logout</a></h3>
        <hr>
        <h2 align="center"><font color="#800080"><span style="font-size: 20pt">
		Student Result</span></font></h2>
        <div align="center">
        <table border="1">
<thead>
<tr>
<th bgcolor="#FF9933"><font size="4" color="#FFFFFF">S.No</font></th>
<th bgcolor="#FF9933"><font size="4" color="#FFFFFF">User Name</font></th>
<th bgcolor="#FF9933"><font size="4" color="#FFFFFF">Course</font></th>
<th bgcolor="#FF9933"><font size="4" color="#FFFFFF">Student Name</font></th>
<th bgcolor="#FF9933"><font size="4" color="#FFFFFF">D.O.E</font></th>
<th bgcolor="#FF9933"><font size="4" color="#FFFFFF">Marks</font></th>
<th bgcolor="#FF9933"><font size="4" color="#FFFFFF">Result</font></th>
</tr>
</thead>
<tbody>
    <%
    String s1=null;
    String s2=null;
    String s3=null;
    String s4=null;
    int s5=0;
    String s6=null;
    int p4=0;
    try
        {
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     Connection conn = DriverManager.getConnection("jdbc:odbc:ac");
     Statement stat = conn.createStatement();
     String g = "select * from result where c_name='"+c+"'";
     ResultSet rs = stat.executeQuery(g);
     while (rs.next())
     {
            s1=rs.getString("u_name");
            s2=rs.getString("c_name");
            s3=rs.getString("f_name");
            s4=rs.getString("doe");
            s5=rs.getInt("marks");
            s6=rs.getString("result");
         
            %>      
       
<tr>
<td><b><%=i%></b></td>
<td><b><%=s1%></b></td>
<td><b><%=s2%></b></td>
<td><b><%=s3%></b></td>
<td><b><%=s4 %></b></td>
<td><b><%=s5%></b></td>
<td><b><%=s6%></b></td>
</tr>
<%
i++;
} 
     i=1;
%>
</tbody>
</table>
<%
}
catch(Exception ae)
{
    System.out.println("OOPs ERROR!!");
ae.printStackTrace();
}               
%> 
<br>    
                 </div>
		<p align="center">       
<input type="submit" value="Ok" name="b1" onClick="fi()" style="font-weight: 700" /><b>
</b>     
        
        
        
    </p>
        
        
        
    </body>
</html>
