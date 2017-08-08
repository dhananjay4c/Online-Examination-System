<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
function check()
{
var txtAD;
txtAD = document.getElementById('t1');
if (txtAD.value == '') //if(name.value=='')
{
alert("Enter the Question No");
return false;
}
}
</script>

        
    </head>
    <body>
        <% 
        HttpSession se=request.getSession();
        // course name
        String c=(String)se.getAttribute("cn");
        // teacher user name
        String c1=(String)se.getAttribute("us");
         String eror=(String)se.getAttribute("err");
         if(eror==null)
             {eror="";}
        %>
        <h3>Login by:<%= c1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="te_hm.jsp">Home</a>&nbsp;
		<a href="te_logout.jsp">Logout</a></h3>
        <hr>

        <h2 align="center"><font color="#800080">No. Of Questions In Exam</font></h2>
        <b>
        <%
     int s8=0;
        try
      {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:ac");
Statement stat=conn.createStatement();
String str="select * from course where c_name='"+c+"'";
ResultSet rs= stat.executeQuery(str);
while (rs.next())
       {
    s8=rs.getInt("ques_disp");
       }  
System.out.println(s8);
se.setAttribute("qq",s8);
     }
catch(Exception ae)
{
ae.printStackTrace();
}     
    %>  
    </b>  
    <label><b><font color="red"><%=eror%></font></b></label><b> </b>
<form id="form1" name="f1" action="te_no_qs_xm_in" method="POST">
<b>Course Name:<%=c%>   
</b>
<p><b>   
<br>
Enter the No of Questions for the Exam&nbsp; </b>
<input name="t1" id="t1" style="font-weight: 700" /><b> </b></p>
<p>
<input type="submit" value="Submit" name="b1" onclick="return check()" style="font-weight: 700" /><b> </b>
</p>
</form>
 
    </body>
</html>