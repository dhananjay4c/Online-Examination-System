<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    
		<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
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
        <h3>Login by:<%= s1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="adm_hm.jsp">Home</a>&nbsp;
		<a href="adm_logout.jsp">Logout</a></h3>
        <hr>
        <h2 align="center"><font size="6" color="#800080">Student Page </font> </h2>
<p align="center">&nbsp;</p>
        <div align="center">
        <table class="" border="1" cellspacing="1" cellpadding="1" width=100% height="224">
<thead>
<tr>
<th colspan="2" bgcolor="#FF9933"><font color="#FFFFFF">
<span style="font-size: 20pt">Description</span></font></th>
</tr>
</thead>
<tbody>
<tr>
<td align="center"><b><font size="4">Student Information</font></b></td>
<td align="center"><b><a href="adm_st_info.jsp"><font size="4">Click here</font></a></b></td>
</tr>
<tr>
<td align="center"><b><font size="4">Delete Student</font></b></td>
<td align="center"><b><a href="adm_st_del.jsp"><font size="4">Click here</font></a></b></td>
</tr>
<tr>
<td align="center"><b><font size="4">Student Result</font></b></td>
<td align="center"><b><a href="adm_st_rslt.jsp"><font size="4">Click here</font></a></b></td>
</tr>
</tbody>
</table>
		</div>
		<p align="center">
<br>
    <input class="btn btn-link"  type="submit" value="<<Back" name="b1" onClick="fi()" style="font-weight: 700" />
        
    </p>
        
        
    </body>
</html>