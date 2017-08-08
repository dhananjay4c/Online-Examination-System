<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
var txtAD;
txtAD = document.getElementById('t4');
var txtAD1 = document.getElementById('t6');
 if (txtAD.value == '') //if(name.value=='')
{
alert("Enter the Minimum No of Question");
return false;
}    
if (txtAD1.value == '') //if(name.value=='')
{
alert("Enter the Maximum No of Question");
return false;
}    
}
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
        String s1=(String)ad.getAttribute("aus");
         %>

        <h3>Loginby:<%= s1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="adm_hm.jsp">Home</a>&nbsp;<a href="adm_logout.jsp">Logout</a></h3>
        <hr>
        <h2><font color="#800080"><span style="font-size: 20pt">Modify the Course</span></font></h2> 
        <form name="f1" action="adm_cs_md_in" method="POST">
      <b>
      <%
      System.out.println("Course Selected to modify");
      String cs=request.getParameter("d1");      
      %></b><font size="4"><b>Course Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</b> 
		<input name="t2" value="<%= cs %>" readonly="readonly" style="font-weight: 700" /><b>
<br>
<br>
      <%
      
     String s9=null;
     String s8=null;
     String s10=null;
        try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:ac");
Statement stat=conn.createStatement();
String str="select * from course where c_name='"+cs+"'";
ResultSet rs= stat.executeQuery(str);
while (rs.next())
     {
    s9=rs.getString("c_id");
    s8=rs.getString("ques_disp");
    s10=rs.getString("max_q");
    %>Course Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
		</b> 
		<input name="t1" value="<%= s9 %>" readonly="readonly" style="font-weight: 700" /><b>
<br>
<br>
		Max No of Question in Exam Paper&nbsp;&nbsp;&nbsp; </b> 
		<input name="t3" value="<%= s8 %>" readonly="readonly" style="font-weight: 700" /><b>
<br>
<br>
		Max No of Question in Exam Paper&nbsp;&nbsp;&nbsp; </b> 
		<input name="t5" value="<%= s10 %>" readonly="readonly" style="font-weight: 700" /><b>
<%  
}  
}
catch(Exception ae)
{}               
%>  
<br>
		</b></font><b>
<br>
<br>
    	</b>
    <h2><font color="#800080"><span style="font-size: 20pt">Enter the New Value</span></font></h2>
		<b>
<br>
		</b><font size="4"><b>Min No of Question in Exam Paper&nbsp;&nbsp;&nbsp; 
		</b> <input name="t4" id="t4" style="font-weight: 700" /><b> </b></font>
                 <br>
                 <font size="4"><b>Max No of Question in Exam Paper&nbsp;&nbsp;&nbsp; 
		</b> <input name="t6" id="t6" style="font-weight: 700" /><b> </b></font>
		<p>
<b>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</b>
<input class="btn btn-success" type="submit" value="Submit" name="b1" onclick="return check()" style="font-weight: 700" />
<input class="btn btn-danger"  type="submit" value="Cancel" name="b2" onclick="fi()" style="font-weight: 700" />

</p>
</form>

<b>
</b>
    </body>
</html>
