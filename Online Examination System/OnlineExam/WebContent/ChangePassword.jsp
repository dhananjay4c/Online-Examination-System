<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<head>
	<script type="text/javascript" src="JQuery/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Examination System</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>

<body class="container">
<div id="Main">
    <form id="form1" action="updatepass.jsp">
<div id="header-wrapper">
	<div id="header">
		<div id="menu">
			<ul>
                <li class="current_page_item"><a href="index.jsp">Home</a></li>
                <li><a href="aboutus.jsp" class="first">About Us</a></li>
                <li><a href="home.jsp" class="first">Login</a></li>
				<li><a href="takeexam.jsp" class="first">Take Exam</a></li>
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
	<table  class="table table-striped table-responsive">
        <tr>
            <td >
                Old Password</td>
            <td >
                <input name="op" type="password" maxlength="20" />
               </td>
        </tr>
        <tr>
            <td>New Password</td>
            <td >
               <input name="np" type="password" maxlength="20" />
               </td>
        </tr>
        <tr>
            <td>Re enter New Password</td>
            <td >
                <input name="rnp" type="password" maxlength="20" />
               </td>
        </tr>
    </table>
    <br />
    <input class="btn btn-success" name="Password" type="submit" name="btnChangePwd" value="Change password"/>
   <br />
	</div>
	<!-- end #page -->
	<div id="footer">
		
	</div>
</div>
    </form>
    </div>
</body>

</HTML>
