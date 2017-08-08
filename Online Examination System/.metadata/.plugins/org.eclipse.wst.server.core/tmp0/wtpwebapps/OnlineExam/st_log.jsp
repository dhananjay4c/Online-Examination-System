<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
function check()
{
var txtAD;
var tx;
var txt;
txtAD = document.getElementById('t1');
tx = document.getElementById('t2');

if (txtAD.value == '') //if(name.value=='')
{
alert("Enter the User Name");
return false;
}
if (tx.value == '') //if(name.value=='')
{
alert("Enter the Password");
return false;
}
}
</script>
  <script>
function fi()
    {
    parent.location='index.jsp'
    }
</script>       
    </head>
    <body>
        <h2 align="center"><font size="6" color="#800080">Student Log In Page</font></h2>
        <% 
        HttpSession st=request.getSession();
        String s22=(String)st.getAttribute("et");
        if(s22==null)
            {
            s22="";
        }
        %>
        
        <label><b><font color="red"><%=s22%></font><b></label>
        <form id="form1" name="f1" action="st_log_in" method="POST">
    <b>User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b> 
	<input name="t1" id="t1" style="font-weight: 700" /><b>
    <br>
    <br>
    Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b> 
	<input type="password" name="t2" id="t2" style="font-weight: 700" /><b>
    <br>
    <br>
        <%  
        String s9=null;
        try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:ac");
Statement stat=conn.createStatement();
String str="select c_name from course ";
ResultSet rs= stat.executeQuery(str);
%><label>Course&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
	</b><select name='d1' id="d1" style="font-weight: 700">
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
	</b>
	<p>  
    <b>  
    <br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </b>
    <input type="submit" value="Submit" name="b1" onclick="return check()" style="font-weight: 700"  /><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="st_reg.jsp">New User</a>
</b>
</p>
</form>
		<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</b>
<input type="submit" value="Cancel" name="b2" onclick="fi()" style="font-weight: 700" /><b>
		</b>
        
        
        
    </body>
</html>
