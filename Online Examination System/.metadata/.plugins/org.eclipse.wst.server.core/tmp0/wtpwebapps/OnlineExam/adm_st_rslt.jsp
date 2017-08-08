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
    parent.location='adm_st_hm.jsp'
    }
</script> 
    </head>
    <body class="container">
         <% 
        HttpSession ad=request.getSession();
        String v=(String)ad.getAttribute("aus");
        %>
        
        <h3>Login by:<%= v %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="adm_hm.jsp">Home</a>
		<a href="adm_logout.jsp">Logout</a></h3>
        <hr>
        	<h2 align="center"><font size="6" color="#800080">Student Result</font> </h2>
        	<div align="center">
        &nbsp;
<table class="table table-condensed table-striped table-bordered" >
<thead>
<tr>
<th bgcolor="#FF9933"><font color="#FFFFFF" >S.No</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" >User Name</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" >Course</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" >Student Name</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" >D.O.E</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" >Marks</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" >Result</font></th>
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
     
     Connection conn = Dao.getCon();
     Statement stat = conn.createStatement();
     String g = "select * from result";
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
<td><%=i%></td>
<td><%=s1%></td>
<td><%=s2%></td>
<td><%=s3%></td>
<td><%=s4 %></td>
<td><%=s5%></td>
<td><%=s6%></td>
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
<input class="btn-info" type="submit" value="Ok"  name="b1" onClick="fi()" style="font-weight: 700"/>     
        
        
    </p>
        
        
    </body>
</html>
