<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dbean.Dao"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    	<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="JQuery/jquery-3.2.1.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
         javascript:window.history.forward(1);   
        </script>
        <script language="javascript">
function check()
{
var y=document.getElementById('d1');
if (y.value == 'Unknown') //if(name.value=='')
{
alert("Select the Course");
return false;
}
}
</script>
<script>
function fi()
    {
    parent.location='adm_cs_hm.jsp'
    }
</script> 

</head>
    <body class="container">
 <% 
        HttpSession ad=request.getSession();
        String s1=(String)ad.getAttribute("aus");
         %>

        <h3>Loginby:<%= s1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="adm_hm.jsp">Home</a>&nbsp;<a href="adm_logout.jsp">Logout</a></h3>
        <hr>
        <h2><font color="#800080" style="font-size: 50pt"><center>Select the Course to be modified :</center></font></h2>
        <form id="form1" name="f1" action="amd_cs_md.jsp" method="POST">
       <%  
        String s9=null;
        try
{

Connection conn=Dao.getCon();
Statement stat=conn.createStatement();
String str="select c_name from course ";
ResultSet rs= stat.executeQuery(str);

%><b><label><font size="10">Select the course&nbsp;&nbsp;&nbsp;&nbsp; </font> </label>
		</b><font size="6"><select name='d1' id="d1" style="font-weight: 700">
 <option value='Unknown'>select one</option>
     <%
while (rs.next())
     {
    s9=rs.getString("c_name");
    %>
    <option value='<%= s9 %>'><%= s9 %></option>
<%  
}
%>
</select><b>
<%     
}
catch(Exception ae)
{}               
%>  
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</b>
<input class="btn btn-success" type="submit" value="Submit" name="b1" onclick="return check()" style="font-weight: 700" />
<input class="btn btn-danger" type="submit" value="Cancel" name="b2" onclick="fi()" style="font-weight: 700" />
</font>
</form>
	
	

    </body>
</html>
