<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dbean.Dao"%>
<%!  int i=1; %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
		<script type="text/javascript" src="JQuery/jquery-3.2.1.js"></script>
		<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>	
		<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
         javascript:window.history.forward(1);   
        </script>
        <script>
function fi()
    {
    parent.location='adm_te_hm.jsp'
    }
</script> 
        
    </head>
    <body class="container">
<% 
        HttpSession ad=request.getSession();
        String v=(String)ad.getAttribute("aus");
        System.out.println("admin user Name");
        System.out.println(v);
        %>

        <h3>Loginby:<%=v%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="adm_hm.jsp">Home</a>&nbsp;<a href="adm_logout.jsp">Logout</a></h3>
        <hr>
        <h2 align="center"><font size="6" color="#800080">DELETE TEACHER </font> </h2>
<p align="center">&nbsp;</p>
        <form name="f1" action="adm_te_del_in" method="POST">
        <div align="center">
        <table class="table table-striped table-condensed">
<thead>
<tr>
<th bgcolor="#FF9933"><font size="4" color="#FFFFFF">S.No.</font></th>
<th bgcolor="#FF9933"><font size="4" color="#FFFFFF">Teacher User Name</font></th>
<th bgcolor="#FF9933"><font size="4" color="#FFFFFF">Teacher First Name</font></th>
<th bgcolor="#FF9933"><font size="4" color="#FFFFFF">Course Name</font></th>
</tr>
</thead>
<tbody>
    <%
    String s1=null;
    String s2=null;
    String s3=null;
    
    try
        {
     
     Connection conn = Dao.getCon();
     Statement stat = conn.createStatement();
     String g = "select f_name,c_adp,u_name from reg_teacher";
     ResultSet rs = stat.executeQuery(g);
     while (rs.next())
     {
            s1=rs.getString("f_name");
            s2=rs.getString("u_name");
            s3=rs.getString("c_adp");  
                      
%>
<tr>
<td><b><%=i%></b></td>
<td><input type="radio" name="g1" value="<%= s2 %>" style="font-weight: 700" /><b><%= s2 %></b></td>
<td><b><%= s1 %></b></td>
<td><b><%= s3 %></b></td>
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
<b>
<%
}
catch(Exception ae)
{
    System.out.println("OOPs ERROR!!");
ae.printStackTrace();
}               
%> 
<br>       
</b>       

 </p>
 <input type="submit" value="Delete" name="b1" style="font-weight: 700" />
 <input type="submit" value="Back" name="b1" onClick="fi()" style="font-weight: 700" />
</form>
 <p align="center"></p>
     </body>
</html>