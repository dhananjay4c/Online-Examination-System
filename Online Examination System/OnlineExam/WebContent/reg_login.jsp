
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page session="true" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Login</title>
       <script language="javascript">
function check()
{
    
var txtAD;
var tx;
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
    </head>
    <%

        session.setAttribute("user", "registrar");
        //HttpSession ad=request.getSession();
        String error=(String)session.getAttribute("er_ps");
        if(error==null)
        {
            error="";
        }



    %>
    <body>
        <center>
            <br>
            <br>
        <h1>REGISTRAR LOGIN</h1>
            <br>
            <br>
             
            <form name="f1" action="verify_account" method="post">
               <center><label><b><font color="red"><%=error%></font></b></label></center><br><br>
               username : <input type="text" name="t1" id="t1" />
                 <br><br>
                 password : <input type="password" name="t2" id="t2"/>
            <br><br>
            <input type="submit" value="submit" name="b1" onclick="return check()" />
            <br>
            <br>
            </form>
        </center>
        </body>
</html>
