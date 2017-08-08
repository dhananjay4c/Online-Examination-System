
<%@page import="Dbean.Dao" session="false"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<script type="text/javascript" src="JQuery/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Examination System</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>

<body class="container">
<div id="Main">
    <form id="form1" >
<div id="header-wrapper">
	<div id="header">
		<div id="menu">
			<ul>
                <li class="current_page_item"><a href="index.jsp">Home</a></li>
                <li><a href="aboutus.jsp" class="first">About Us</a></li>
                <li><a href="home.jsp" class="first">Login</a></li>
				<li><a href="previousexams.jsp">Previous Exam</a></li>
                <li><a href="practiceexam.jsp">Practice Exam</a></li>
				<li><a href="logout.jsp">Logout</a></li>
                <li><a href="help.jsp" class="first">Help</a></li>
                <li><a href="contactus.jsp" class="first">Contact Us</a></li>
			</ul>
		</div>
	</div>
</div>
<div id="logo">
	<img src="images/logo1.gif"/>
	<h1 style="margin:-80px 0 0 60px;">Online Examination System</h1>
	<p style="margin:0 0 0 70px;">Excel your potential</p>
</div>
<hr />
<div id="page">
	<div id="page-bgtop">
	 <%
	 HttpSession st=request.getSession(false);
	 if(st==null){
	%>
	Please Login First
	<%
	 }else{
	String name=(String)st.getAttribute("stu");
	String pass=(String)st.getAttribute("ps");
Connection	con= Dao.getCon();
	 PreparedStatement pss=con.prepareStatement("Select * from result where u_name=?");
	 pss.setString(1,name);
	 
	 ResultSet rs=pss.executeQuery();
	%>
	<center/>
	 <Table class="table table-striped">
	<th>Course Name</th><th>First Name</th><th>Doe</th><th>Marks</th><th>Result</th><th>User Id</th>
	<%
	 while(rs.next()){
	 %>
	
	<tr> <td><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getString(3) %></td><td><%=rs.getString(4) %></td><td><%=rs.getString(5) %></td><td><%=rs.getString(6) %></td>
	 </tr>
	
	 <%}
	 %>
	  </Table>
	 <%
	 }
	  %>
	</div>
	<!-- end #page -->
	<div id="footer">
		
	</div>
</div>
    </form>
    </div>
</body>
</html>
