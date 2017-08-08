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
txtAD = document.getElementById('t2');
tx = document.getElementById('t3');
txt=document.getElementById('t4');

if (txtAD.value == '') //if(name.value=='')
{
alert("Enter the Password");
return false;
}
if (tx.value == '') //if(name.value=='')
{
alert("Enter the New Password");
return false;
}
if (txt.value == '') //if(name.value=='')
{
alert("Enter the Confirmation Password");
return false;
}
if (tx.value != txt.value ) //if(name.value=='')
{
alert("Password does not match");
return false;
}
}
</script>
  <script>
function fi()
    {
    parent.location='te_hm.jsp'
    }
</script>
</head>
    <body>
<% 
        HttpSession se=request.getSession();
         String c=(String)se.getAttribute("cn");
         System.out.println("First thing");
        System.out.println(c);
         String c1=(String)se.getAttribute("us");
         %>

        <h3>Login by:<%= c1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="te_hm.jsp">Home</a>&nbsp;
		<a href="te_logout.jsp">Logout</a></h3>
        <hr>
        <p align="center"><b><font size="6" color="#800080">CHANGE PASSWORD</font></b>
        <% 
       
        String s1=(String)se.getAttribute("us");
        String s2=(String)se.getAttribute("olp");
        if(s2==null)
            {
            s2="";
        }
        %>
        <label><%=s2%></label>
        <form id="form1" name="f1" action="te_ch_ps_in" method="POST">
   <p align="center"><b>User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
	</b> 
	<input name="t1" value="<%= s1 %>" readonly="readonly" style="font-weight: 700" /><b>
  <br>
  <br>
  	&nbsp;
  	Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
	</b> <input type="password" name="t2" id="t2" style="font-weight: 700" /><b>
     <br>
  <br>
  	&nbsp;New Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
	</b> <input type="password" name="t3" id="t3" style="font-weight: 700" /><b>
  <br>
  <br>
  	&nbsp;Confirm New Password&nbsp;&nbsp;&nbsp;&nbsp; </b> 
	<input type="password" name="t4" id="t4" style="font-weight: 700" /><b> </b>
  	</p>
	<p align="center"><b><br>&nbsp;&nbsp;
	</b>
	<input type="submit" value="Submit" name="b1" onclick="return check()" style="font-weight: 700" /><b>
	</b>
	</p>
</form>
		<p align="center"><b>&nbsp;&nbsp;
</b>
<input type="submit" value="Cancel" name="b2" onclick="fi()" style="font-weight: 700" /><b>
		</b>


      
    </p>


      
    </body>
</html>