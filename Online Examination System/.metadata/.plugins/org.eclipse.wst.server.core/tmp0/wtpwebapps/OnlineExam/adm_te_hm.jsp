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
        
        <h3>Loginby:<%= s1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="adm_hm.jsp">Home</a>&nbsp;<a href="adm_logout.jsp">Logout</a></h3>
        <hr>
        <h2 align="center"><font size="6" color="#800080">Teachers Page </font> </h2>
		<p align="center">&nbsp;</p>
        <div align="center">
        <table class="table table-condensed table-striped">
<thead>
<tr>
<th colspan="2" bgcolor="#FF9933"><font color="#FFFFFF">
<span style="font-size: 20pt">Description</span></font></th>
</tr>
</thead>
<tbody>
<tr>
<td align="center"><font size="4">Teacher Info</font></td>
<td align="center"><a href="adm_te_info.jsp"><font size="4">Click here</font></a></td>
</tr>
<tr>
<td align="center"><font size="4">Delete Teacher</font></td>
<td align="center"><a href="adm_te_del.jsp"><font size="4">Click here</font></a></td>
</tr>
<tr>
<td align="center"><font size="4">Accept Teacher Request</font></td>
<td align="center"><a href="adm_te_wait.jsp"><font size="4">Click here</font></a></td>
</tr>
</tbody>
</table>
		</div>
		<p align="center">
<br>
    <input class="btn btn-success" type="submit" value=">>Back" name="b1" onClick="fi()" style="font-weight: 700" />
    </p>
    </body>
</html>
