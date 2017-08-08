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
        String d=(String)se.getAttribute("eo");
        if(d==null)
            {
            d="";
        }
        %>
<%
    
    int p2=0;
    try
        {
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     Connection conn = DriverManager.getConnection("jdbc:odbc:ac");
     Statement stat = conn.createStatement();
     String g = "select * from reg_teacher where c_adp='"+c+"'";
     ResultSet rs = stat.executeQuery(g);
     while (rs.next())
     {
            p2=rs.getInt("no_ques");
      }
        }
     catch(Exception ae) 
    {
    System.out.println("OOPs ERROR!!");
ae.printStackTrace();
    }              
            %>              

        <h3>Login by:<%= c1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="te_hm.jsp">Home</a>&nbsp;
		<a href="te_logout.jsp">Logout</a></h3>
        <hr>
<h2><font color="#800080">Modify the Question No.</font></h2>
<label><b><font color="red"><%=d%></font></b></label><b> </b>
<form id="form1" name="f1" action="te_md_no_qs_xm_in" method="POST">

        <b>Course Name:<%=c%>
<br>
		Old Value:<%=p2%>        
</b>        
<h2><font color="#800080">New Value</font></h2>
		<b>New Question No for the exam&nbsp;&nbsp; </b> 
		<input name="t1" id="t1" style="font-weight: 700" /><b> </b>
		<p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</b>
<input type="submit" value="Submit" name="b1" onclick="return check()" style="font-weight: 700" /><b> </b>
</p>
</form>
    </body>
</html>
