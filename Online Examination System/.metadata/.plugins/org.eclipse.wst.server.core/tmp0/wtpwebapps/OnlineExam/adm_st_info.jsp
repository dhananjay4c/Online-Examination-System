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
		<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js">
		</script>
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
        System.out.println("admin user Name");
        System.out.println(v);
        %>

        <h3>Login by: <%= v %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="adm_hm.jsp">Home</a>&nbsp;<a href="adm_logout.jsp">Logout</a></h3>
        <hr>
        <h2 align="center"><font color="#800080"><span style="font-size: 20pt">Student Information</span></font></h2>
        <div align="center">
        <table class="table table-striped table-condensed">
<thead>
<tr>
<th bgcolor="#FF9933"><font color="#FFFFFF">No of Students</font></th>    
<th bgcolor="#FF9933"><font color="#FFFFFF">First Name</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF">Last Name</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF">Fathers Name</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF">Phone No</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF">Address</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF">Email id</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF">Date of Exam</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF">Course</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF">User Name</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF">Password</font></th>
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
    String s8=null;
    String s9=null;
    String s10=null;
    String p4="";
    try
        {
     Connection conn=Dao.getCon();
     Statement stat = conn.createStatement();
     String g = "select * from st_reg";
     ResultSet rs = stat.executeQuery(g);
     while (rs.next())
     {
            s1=rs.getString("f_name");
            s2=rs.getString("l_name");
            s3=rs.getString("fath_name");
            p4=rs.getString("ph_no");
            s5=rs.getString("address");
            s6=rs.getString("email_id");
            s7=rs.getString("doe");
            s8=rs.getString("course");
            s9=rs.getString("u_name");
            s10=rs.getString("pass");
            %>      
<tr>
<td><%=i%></td>
<td><%=s1%></td>
<td><%=s2%></td>
<td><%=s3%></td>
<td><%=p4%></td>
<td><%=s5%></td>
<td><%=s6%></td>
<td><%=s7%></td>
<td><%=s8%></td>
<td><%=s9%></td>
<td><%=s10%></td>
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
<input class="btn btn-success" type="submit" value="Ok" name="b1" onClick="fi()" style="font-weight: 700" />     
        
    </p>
    </body>
</html>
