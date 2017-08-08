<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dbean.Dao"%>
<%!  int i=1; %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
		<script type="text/javascript" src="JQuery/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
         javascript:window.history.forward(1);   
        </script>
        <script language="javascript">
	function check()
	{
		var txtAD;
		txtAD = document.getElementById('g1');
		if (txtAD.value =='') //if(name.value=='')
		{
			alert("Select the Student to deleted");
			//return false;
		}
 	}
</script>       
        
        <script>
function fi()
    {
    parent.location='adm_st_hm.jsp';
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

        <h3>Login by: <%= v %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="adm_hm.jsp">Home</a>&nbsp;
		<a href="adm_logout.jsp">Logout</a></h3>
        <hr>
        <h2>
        <h2 align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#800080"> 
		<span style="font-size: 20pt">Delete Student</span></font></h2>
        
        <form id="form1" name="f1" action="adm_st_del_in" method="POST">
        
        <div align="center">
        
        <table class="table table-condensed table-striped" >
<thead>
<tr>
<th bgcolor="#FF9933"><font color="#FFFFFF" style="font-size: 10pt">No of Students</font></th>    
<th bgcolor="#FF9933"><font color="#FFFFFF" style="font-size: 10pt">User Name</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" style="font-size: 10pt">First Name</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" style="font-size: 10pt">Last Name</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" style="font-size: 10pt">Date Of Exam</font></th>
<th bgcolor="#FF9933"><font color="#FFFFFF" style="font-size: 10pt">Course Name</font></th>

</tr>
</thead>
<tbody>
    <%
    String s1=null;
    String s2=null;
    String s3=null;
    String s4=null;
    String s5=null;
    try
        {
    Connection conn= Dao.getCon();
     Statement stat = conn.createStatement();
     String g = "select * from st_reg";
     ResultSet rs = stat.executeQuery(g);
     while (rs.next())
     {
            s1=rs.getString("f_name");
            s2=rs.getString("l_name");
            s3=rs.getString("doe"); 
            s4=rs.getString("course"); 
            s5=rs.getString("u_name"); 
%>
<tr>
<td><%=i%></td>
<td><input class="radio radio-inline" type="radio" name="g1" value="<%= s5 %>" id="g1" /><%= s5 %></td>

<td><%= s1 %></td>
<td><%= s2 %></td>
<td><%= s3 %></td>
<td><%= s4 %></td>
</tr>
<%
i++;
} 
i=1;     
%>
</tbody>
</table>
		</div>
<%
}
catch(Exception ae)
{
    System.out.println("OOPs ERROR!!");
ae.printStackTrace();
}               
%> 
            
 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;          
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input class="btn btn-info" type="button" value="<<Back" name="b2" onClick="fi()" style="font-weight: 700" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input class="btn btn-danger" type="button" value="submit" name="b1" onClick="check()" style="font-weight: 700" />
		
		         
		</p>
</form>
        
        
        
        
    </body>
</html>