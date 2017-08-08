<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Examination System</title>
<script type="text/javascript">
function valid(){
var fname=f1.t1.value;
var lname=f1.t2.value;
var fathername=f1.t3.value;
var phone=f1.t4.value;
var address=f1.t5.value;
var loginid=f1.t6.value;
var pass=f1.t7.value;
var cpass=f1.t8.value;
var email=f1.t9.value;
var date=f1.datum1.value;
var cs=f1.d1.value;
if(fname==""){
alert("Please Fill First_Name");
document.f1.t1.focus();
return false;
}else if(lname==""){
alert("Please Fill Last_Name");
document.f1.t2.focus();
return false;
}else if(fathername==""){
alert("Please Fill Father_Name");
document.f1.t3.focus();
return false;
}else if(phone==""||phone.toString().length<10||isNaN(phone)){
alert("1. Please Fill Phone Number \n 2. Not less than 10 digit \n 3. Enter number only");
document.f1.t4.focus();
return false;
}else if(address==""){
alert("Please Fill Address");
document.f1.t5.focus();
return false;
}else if(loginid==""){
alert("Please Fill Login Id");
document.f1.t6.focus();
return false;
}else if(pass==""){
alert("Please Fill Password");
document.f1.t7.focus();
return false;
}else if(cpass==""||cpass!=pass){
alert("1. Please Fill Confirm Password \n 2. Password Must Be Same");
document.f1.t8.focus();
return false;
}else if(cs=="Select Course"){
alert("Please Select Course ");
document.f1.d1.focus();
return false;
}else{
return true;
}
}
</script>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>

<body>
<div id="Main">
    <form id="form1" name="f1" action="st_reg_in" method="POST" onsubmit="return valid()">
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
	<table style="width: 100%" class="fnt_b_12">
        <tr>
            <td width="200" ></td>
            <td width="150"></td>
            <td width="10"></td>
            <td width="230"></td>
            <td ></td>
        </tr>
        <tr>
            <td>&nbsp;
                </td>
            <td>
                First Name<span style="color: #FF0000">*</span></td>
            <td>
               <strong>:</strong></td>
            <td>
               <input type="text" class="txtbox"  name="t1" id="t1"/>
                 
           
                </td>
            <td>
            
            </td>
        </tr>
        <tr>
            <td>&nbsp;
                </td>
            <td>
                Last Name<span style="color: #FF0000">*</span></td>
            <td>
               <strong>:</strong></td>
            <td>
<input type="text" class="txtbox"  name="t2" id="t2"/>                 
           
                </td>
            <td>
               
            </td>
        </tr>
        <tr>
        
            <td>&nbsp;
              </td>
            <td>
                Father Name<span style="color: #FF0000">*</span></td>
            <td>
               <strong>:</strong></td>
            <td>
<input type="text" class="txtbox"  name="t3" id="t3"/>                 
           
              </td>
            <td>
               
            </td>
        </tr>
        <tr>
            <td>&nbsp;
                </td>
            <td>Phone&nbsp;<span style="color: #FF0000">*</span></td>
            <td>
               <strong>:</strong></td>
            <td>
<input type="text" class="txtbox"  name="t4" id="t4" maxlength="10" />                 
           
                </td>
            <td>
               
            </td>
        </tr>
        <tr>
            <td>&nbsp;
                </td>
            <td>
                Address<span style="color: #FF0000">*</span></td>
            <td>
               <strong>:</strong></td>
            <td>
<input type="text" class="txtbox"  name="t5" id="t5"/>                 
           
                </td>
            <td>
               
            </td>
        </tr>
        <tr>
            <td>&nbsp;
                </td>
            <td>Login ID<span style="color: #FF0000">*</span></td>
            <td>
               <strong>:</strong></td>
            <td>
<input type="text" class="txtbox"  name="t6" id="t6"/>                 
           
                </td>
            <td>
               
            </td>
        </tr>
        <tr>
            <td>&nbsp;
                </td>
            <td>
                Password<span style="color: #FF0000">*</span></td>
            <td>
               <strong>:</strong></td>
            <td>
<input type="password" class="txtbox"  name="t7" id="t7"/>                 
           
                </td>
            <td>
               
            </td>
        </tr>
        <tr>
            <td>&nbsp;
              </td>
            <td>
                Confirm Password<span style="color: #FF0000">*</span></td>
            <td>
               <strong>:</strong></td>
            <td>
<input type="password" class="txtbox"  name="t8" id="t8"/>                 
           
              </td>
            <td>
               
            </td>
        </tr>
        <tr>
            <td>&nbsp;
                </td>
            <td>Email<span style="color: #FF0000">*</span></td>
            <td><strong>:</strong></td>
            <td><input type="email" class="txtbox"  name="t9" id="t9"/>
                </td>
            <td>&nbsp;
                </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>Exam Date<span style="color: #FF0000">*</span></td>
          <td><strong>:</strong></td>
          <td><input type="date" class="txtbox"  name="datum1" id="datum1"/></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>Course<span style="color: #FF0000">*</span></td>
          <td><strong>:</strong></td>
          <td><label for="d1"></label>
            <select name="d1" id="d1">
              <option>Select Course</option>
              <option value="Java">Java</option>
              <option value="Oracle">Oracle</option>
              <option value="PHP">PHP</option>
            </select></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;
                </td>
            <td>&nbsp;
                </td>
            <td>&nbsp;
                </td>
            <td>
            <input type="submit"  name="cmdSubmit" value="Submit" />
            <input type="reset"  name="cmdUpdate" value="Clear"/>
            <input type="button"  name="cmdCancel" value="Cancel" id="cmdCancel" onClick="javascript:location.href='home.jsp'"/>
            </td>
            <td>&nbsp;
                </td>
        </tr>
        <tr>
            <td>&nbsp;
                </td>
            <td>&nbsp;
                </td>
            <td>&nbsp;
                </td>
            <td height="20px">
            </td>
            <td>&nbsp;
                </td>
        </tr>
        <tr>
            <td>&nbsp;
                </td>
            <td>&nbsp;
                </td>
            <td>&nbsp;
                </td>
            <td>
                
</td>
            <td>&nbsp;
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

</HTML>
