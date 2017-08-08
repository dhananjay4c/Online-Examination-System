<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
         javascript:window.history.forward(1);   
        </script>
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
        <h2 align="center"><font size="6" color="#800080">Teacher Log In </font></h2>
    <%
        HttpSession se=request.getSession();
        String s1=(String)se.getAttribute("er_ps");
        if(s1==null)
            {
            s1="";
        }
        %>
        <b>
        <label><font color="red"><%=s1%></font></label>
    <form id="form1" name="f1" action="te_log_in" method="POST">
    &nbsp;<p>User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	<input name="t1" id="t1" style="font-weight: 700" />
    <br>
    <br>
    Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
	<input type="password" name="t2" id="t2" style="font-weight: 700" />
    <br>
    <br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="Submit" name="b1" onclick="return check()" style="font-weight: 700"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="te_rg.jsp">New User</a>
</p>
</form>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="Cancel" name="b2" onclick="fi()" style="font-weight: 700" />
    </body>
</html>
