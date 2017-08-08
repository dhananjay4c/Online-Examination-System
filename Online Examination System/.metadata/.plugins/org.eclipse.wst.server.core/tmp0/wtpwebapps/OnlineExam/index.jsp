<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Examination System</title>
<link href="style_home.css" rel="stylesheet" type="text/css" media="screen" />
</head>

<body class="new">
 <% 
        HttpSession st=request.getSession();
        String uu="";
        st.setAttribute("et",uu);
        %>
        <%
         HttpSession ad=request.getSession();
         String hh="";
        ad.setAttribute("er_ps",hh);
        %>
   
<div id="Main">
    <form id="form1" >
<div id="header-wrapper"  style="background-color:#000000;">
	<div id="header">
		<div id="menu_2">
			<ul>
                <li class="current_page_item"><a href="index.jsp">Home</a></li>
                <li><a href="adm_log.jsp">Admin</a></li>
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
<div id="page" style="background-image:url(images/backimage.jpg)">
	<div id="page-bgtop">
	<marquee style="font-size:18px; color:#FFFFFF;">Online Exam for you.</marquee>
<table style="width: 1195px; height: 161px">
        <tr>
            <td colspan="1" rowspan="2" style="width: 311px; height: 212px;">
                <table width="340" height="207" style="width: 400px; height: 180px">
<tr>
                        <td style="width: 311px; height: 3px">
              
              
                        <p>&nbsp;</p>
                  <span style="margin-left:50px"><img src="images/images (2).jpg" width="270" /></span></td>
                    </tr>
                </table>
            </td>
            
            
            <td colspan="3" style="height: 104px">
            
            <!-------------------------------->
            
                <br />
                <br />
                <br />
            
            <fieldset style="width: 381px; height: 190px">
           <font style="font-family:Verdana, Arial, Helvetica, sans-serif;"><p align="justify"><strong>"Online Exam System"</strong> fulfills the requirements of the students to conduct the exams online. They do not have to go to any software developer to make a separate site for being able to conduct exams online. They just have to register on the site and enter the exam details.
Thus the purpose of the site is to provide a system that saves the efforts and time of the students.</p></font>

            </fieldset>
            
            </td>
            <td colspan="1" style="height: 104px">
            </td>
        </tr>
        </table>
        </div>
	<!-- end #page -->
	<div id="footer">
		
	</div>
</div>
    </form>
    </div>
</body>
</html>
