<html>
    <head>
		<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js">
		</script>
		<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<link href="css/adm_hm.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
         javascript:window.history.forward(1);   
        </script>
    </head>
    <body class="container">
        <% 
        HttpSession ad=request.getSession();
        String s1=(String)ad.getAttribute("aus");
        System.out.println("admin user Name");
        System.out.println(s1);
        %>
        
        
        <h3>Loginby:<%= s1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="adm_hm.jsp">Home</a>&nbsp;&nbsp;<a href="adm_logout.jsp">Logout</a></h3>
        <hr>
        <p align="center"><b><font size="6" color="#D4AF37">Admin Home</font></b></p>
		<p align="center">&nbsp;</p>
		
        <table  class="table-responsive" align=center border="1" cellspacing="1" cellpadding="1" width=100% height="244">
<thead>
<tr>
<th colspan="2" bgcolor="#FF9933">
<p><font color="#FFFFFF" face="Times New Roman" style="font-size: 20pt">
Description </font> </th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">
<p align="left"><b><font face="Times New Roman" size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student Data</font></b></td>
<td align="center">
<p align="left"><font size="4">&nbsp;&nbsp; <a href="adm_st_hm.jsp">Click here</a></font></td>
</tr>
<tr>
<td align="center">
<p align="left"><b><font face="Times New Roman" size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Course</font></b></td>
<td align="center">
<p align="left"><font size="4">&nbsp;&nbsp; <a href="adm_cs_hm.jsp">Click here</a></font></td>
</tr>
<tr>
<td align="center">
<p align="left"><b><font face="Times New Roman" size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
Change Password</font></b></td>
<td align="center">
<p align="left"><font size="4">&nbsp;&nbsp; <a href="adm_ch_ps.jsp">Click here</a></font></td>
</tr>
</tbody>
</table>
  
    </body>
</html>