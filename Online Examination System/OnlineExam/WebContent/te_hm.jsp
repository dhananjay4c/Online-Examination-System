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
    </head>
    <body>
        <% 
        HttpSession se=request.getSession();
        
        // course name
        String c=(String)se.getAttribute("cn");
        // teacher user name
        String c1=(String)se.getAttribute("us");
        String ii="";
        se.setAttribute("eo", ii);
        String kk="0";
        se.setAttribute("kk", kk);
        
        %>
        
        <h3>Login by:<%= c1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="te_hm.jsp">Home</a>&nbsp;&nbsp;
		<a href="te_logout.jsp">Logout</a></h3>
        <hr>
        <h2 align="center"><font color="#800080" size="6">Teacher Home Page</font></h2><h4>&nbsp;</h4>
    <div align="center">
    <table border="4" cellspacing="6" cellpadding="8" width="491" height="224">
<thead>
</thead>
<tbody>
<tr>
<td><b><font size="4">Change the No of Question for the Exam</font></b></td>
<td width="92"><b><a href="te_md_no_qs_xm.jsp"><font size="4">Click here</font></a></b></td>
</tr>
<tr>
<td><b><font size="4">Insert Question</font></b></td>
<td width="92"><b><a href="te_no_qs.jsp"><font size="4">Click here</font></a></b></td>
</tr>
<tr>
<td><b><font size="4">Modify Question</font></b></td>
<td width="92"><b><a href="te_md.jsp"><font size="4">Click here</font></a></b></td>
</tr>
<tr>
<td><b><font size="4">Student Information</font></b></td>
<td width="92"><b><a href="te_st_info.jsp"><font size="4">Click here</font></a></b></td>
</tr>
<tr>
<td><b><font size="4">Student Result</font></b></td>
<td width="92"><b><a href="te_st_rslt.jsp"><font size="4">Click here</font></a></b></td>
</tr>
<tr>
<td><b><font size="4">Change Password</font></b></td>
<td width="92"><b><a href="te_ch_ps.jsp"><font size="4">Click here</font></a></b></td>
</tr>
</tbody>
</table>
    </div>
    </body>
</html>