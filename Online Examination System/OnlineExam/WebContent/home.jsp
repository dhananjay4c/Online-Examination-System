<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<script type="text/javascript" src="JQuery/jquery-3.2.1.js">
	</script>
	<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js">
	</script>
	<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Examination System</title>
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
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>

<body>
     <% 
        HttpSession st=request.getSession();
        String s22=(String)st.getAttribute("et");
        if(s22==null)
            {
            s22="";
        }
        %>
<div id="Main">
<form id="form1" name="f1" action="st_log_in" method="post">
<div id="header-wrapper"  style="background-color:#000000;">
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
	
<table style="width: 1195px; height: 161px">
        <tr>
            <td colspan="1" rowspan="2" style="width: 311px; height: 212px;">
                <table height="207" style="width: 421px; height: 180px">
        <tr>
                        <td style="width: 311px; height: 3px">
                        <label style="width:414px; background-color:#FFFFFF; font-size:larger; color:#000000; font-size:20px;"></label>
              
              
                        <p>&nbsp;</p><br />
                  <p><img src="images/images (1).jpg" width="382" />               </p></td>
                    </tr>
                </table>
            </td>
            
            
            <td colspan="3" style="height: 104px">
            
            
            
                <br />
                <br />
                <br />
            
            <fieldset style="width: 381px; height: 170px">
            <table style="width: 381px; height: 51px">
                <tr>
                    <td colspan="3" style="height: 20px; background-color: #C0C0FF;">
                    <label style="background-color:#C0C0FF;  border-color:#FFFFFF; width:374px;" ><strong>Login to give exam</strong></label>
               </td>
                </tr>
                <tr>
            <td style="width: 100px; height: 10px;">
            <label>User Id</label>              </td>
            <td style="width: 139px; height: 10px;">
            <input name="t1" type="text" id="t1" placeholder="User Id" maxlength="30" /></td>
            <td style="width: 90px; height: 10px;">                </td>
                </tr>
                <tr>
            <td style="width: 100px; height: 10px;">
                <Label>Password</Label></td>
            <td style="width: 139px; height: 10px;">
               <input name="t2" type="password" id="t2" maxlength="30" /></td>
            <td style="width: 90px; height: 10px;">               </td>
                </tr>
                <tr>
            <td style="width: 100px; height: 10px;">
               
               
                <tr>
            <td style="width: 100px">            </td>
            <td style="width: 139px">
                <a href="ChangePassword.jsp">Change Password</a></td>
            <td style="width: 90px">
               <input class="btn btn-success" name="btnLogin" type="submit" id="btnLogin" value="Login"/></td>
                </tr>
                <tr>
            <td style="width: 100px">            </td>
            <td style="width: 139px">
                <a href="sign_up.jsp">Not a member yet?</a></td>
            <td style="width: 90px">
               </td>
                </tr>
                <tr>
                  <td background="red" colspan="3" style="width: 100px">
                  
                  <%
				  		if(session.getAttribute("et")!=null)
						  out.println(session.getAttribute("et"));
				  %>
                  
                  </td>
                  </tr>
                <tr>
                  <td colspan="3" style="width: 100px"></td>
                </tr>
                <tr>
                  <td colspan="3" style="width: 100px"></td>
                </tr>
                <tr>
                  <td colspan="3" style="width: 100px"></td>
                </tr>
            </table>
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
