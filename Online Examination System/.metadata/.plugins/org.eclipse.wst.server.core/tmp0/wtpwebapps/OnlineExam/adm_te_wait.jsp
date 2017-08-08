<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  int i=1; %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    	<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="JQuery/jquery-3.2.1.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
         javascript:window.history.forward(1);   
        </script>
         <script>
            function fi()
    {
    parent.location='adm_hm.jsp'
    }
         </script> 
    </head>
    <body class="container">
        <% 
        HttpSession ad=request.getSession();
        String v=(String)ad.getAttribute("aus");
         %>

        <h3>Loginby:<%= v %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="adm_hm.jsp">Home</a>&nbsp;<a href="adm_logout.jsp">Logout</a></h3>
        <hr>
        <h2 align="center"><font size="6" color="#800080">List of Requests by Teachers</font></h2>
		<p align="center">&nbsp;</p>
        <form name="f1" action="adm_te_accept_in" method="POST">
        <div align="center">
        <table class="table table-striped table-condensed">
<thead>
<tr>
<th bgcolor="#FF9933"><font color="#FFFFFF" size="4">S No.</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" size="4">Teacher User Name</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" size="4">Teacher First Name</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" size="4">Teacher Last Name</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" size="4">Phone No.</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" size="4">Address</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" size="4">E mail id</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" size="4">Course Registered</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" size="4">No.of Question in Exam</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" size="4">Password</font></th>
</tr>
</thead>
<tbody>
<%
    String s1=null;
    String s2=null;
    String s3=null;
    String s4=null;
    String s5=null;
    String s6=null;
    String s7=null;
    long p=0;
    long j=0;
    try
        {
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     Connection conn = DriverManager.getConnection("jdbc:odbc:ac");
     Statement stat = conn.createStatement();
     String g = "select * from wait_te";
     ResultSet rs = stat.executeQuery(g);
     while (rs.next())
     {
            s1=rs.getString("f_name");
            s2=rs.getString("u_name");
            s3=rs.getString("c_adp");
            s4=rs.getString("l_name");
            s5=rs.getString("e_id");
            s6=rs.getString("addr");
            s7=rs.getString("password");
            p=rs.getInt("phone");
            j=rs.getInt("no_ques");
            ad.setAttribute("cs", s3);
%>      
<tr>
<td><%=i%></td>
<td><input type="radio" name="g1" value="<%= s2 %>" /><%= s2 %></td>
<td><%=s1%></td>
<td><%=s4%></td>
<td><%=p%></td>
<td><%=s6%></td>
<td><%=s5%></td>
<td><input type="hidden" name="t1" value="<%=s3%>" /><%=s3%></td>
<td><%=j%></td>
<td><%=s7%></td>
</tr>
<%
i++;
} 
i=1;
     %>
</tbody>
</table>
		</div>
		<p align="center">
<%
}
catch(Exception ae)
{
    System.out.println("OOPs ERROR!!");
ae.printStackTrace();
}               
%> 
<br>
<h4>
<input type="radio" name="g2" value="accept" />To accept the Teacher
<br>
<br>
<input type="radio" name="g2" value="reject" />To reject the Teacher
</h4>
<br>       
  
<input class="btn btn-link" type="submit" value=">>Back" name="b2" onClick="fi()" style="font-weight: 700" />
<input class="btn btn-success"  type="submit" value="Accept" name="b1" style="font-weight: 700" />
</p>
</form>
</body>
</html>
