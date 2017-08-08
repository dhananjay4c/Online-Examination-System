<%@ page import="java.sql.*" %>
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
        <script language="javascript">
function check()
{
var txtAD;
var tx;
var txt;
txtAD = document.getElementById('t1');
tx = document.getElementById('t2');
txt = document.getElementById('t3');
var q= document.getElementById('t4');
var w= document.getElementById('t5');
var e= document.getElementById('t6');
var r= document.getElementById('t7');
var t= document.getElementById('t8');
var qq= document.getElementById('t9');
var y=document.getElementById('d1');
if (txtAD.value == '') //if(name.value=='')
{
alert("Enter the First Name");
return false;
}
if (tx.value == '') //if(name.value=='')
{
alert("Enter the Last Name");
return false;
}
if (txt.value == '') //if(name.value=='')
{
alert("Enter the Phone No");
return false;
}

if (q.value == '') //if(name.value=='')
{
alert("Enter the Address");
return false;
}
if (w.value == '') //if(name.value=='')
{
alert("Enter the Email id");
return false;
}
if (w.value.length < '6') {
alert("Invalid E-mail ID");
return false;
}
var str = document.form1.t5.value

var at="@"
var dot="."
var lat=str.indexOf(at)
var lstr=str.length
var ldot=str.indexOf(dot)
if (str.indexOf(at)==-1){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(at,(lat+1))!=-1){
alert("Invalid E-mail ID")
return false
}

if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(dot,(lat+2))==-1){
alert("Invalid E-mail ID")
return 
}
if (y.value == 'Unknown') //if(name.value=='')
{
alert("Select the Course");
return false;
}
if (qq.value == '') //if(name.value=='')
{
alert("Enter the Number of Question");
return false;
}
if (e.value == '') //if(name.value=='')
{
alert("Enter the User Name");
return false;
}
if (r.value == '') //if(name.value=='')
{
alert("Enter the Password");
return false;
}
if (t.value == '') //if(name.value=='')
{
alert("Enter the Reconfirm Password");
return false;
}
if (r.value != t.value ) //if(name.value=='')
{
alert("Password does not match");
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

    </head>
     <body>
         <p align="center"><b><font size="6" color="#800080">TEACHER REGISTRATION
         <%
     HttpSession se = request.getSession();
     String err = (String) se.getAttribute("er");
     if(err==null)
         {
         err="";
     }
     %>
    
     </font></b> </p>
     <label><b><font size="5" color=#FF0000><%=err%></font></b></label>
    <form id="form1" name="f1" action="te_rg_in" method="POST">
        <p align="left">
        <%
     
            String fn = (String) se.getAttribute("s1");
            String ln = (String) se.getAttribute("s2");
            String pn = (String) se.getAttribute("tu");
          //  int pn1=Integer.parseInt(pn);
            String ad = (String) se.getAttribute("s3");
            String em = (String) se.getAttribute("s4");
             String q = (String) se.getAttribute("s9");
            if(fn==null)
                {
               fn=""; 
            }
            if(ln==null)
                {
               ln=""; 
            }
            if(pn==null)
                {
               pn=""; 
            }
            if(ad==null)
                {
               ad=""; 
            }
            if(em==null)
                {
                em=""; 
            }
             if(q==null)
                {
                q=""; 
            }
            
           // String co = (String) se.getAttribute("s5");
      %>
        <b>
        <br>
        <label>First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
		</b>
		<input name="t1" value="<%= fn%>" id="t1" style="font-weight: 700" /><b>
        <br>
        <br>
        <label>Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </label>
		</b>
		<input name="t2" value="<%= ln%>" id="t2" style="font-weight: 700" /><b>
       <br>
        <br>
       <label>Phone No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </label>
		</b>
		<input name="t3" value="<%= pn%>" id="t3" style="font-weight: 700" /><b>
        <br>
        <br>
        <label>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </label>
		</b>
		<input name="t4" value="<%= ad%>" id="t4" style="font-weight: 700" /><b>
        <br>
        <br>
        <label>Email id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </label>
		</b>
		<input name="t5" value="<%= em%>" id="t5" style="font-weight: 700" /><b>
       <br>
        <br>
          
         <%  
        String s9=null;
        try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:ac");
Statement stat=conn.createStatement();
String str="select c_name from course ";
ResultSet rs= stat.executeQuery(str);
%><label>Course opted&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
		</b><select name='d1' id="d1" style="font-weight: 700">
 <option value='Unknown'>select one</option>
     <%
while (rs.next())
     {
    s9=rs.getString("c_name");
    %>
    <option value='<%= s9 %>'><%= s9 %></option>
 <%  
}
%>
</select><b>
         <%
     
}
catch(Exception ae)
{}               
%> 
<br>
    <%
    int s8=0;
    int s10=0;
        try
      {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:ac");
Statement stat=conn.createStatement();
String qo="select * from course where c_name='"+s9+"'";
ResultSet rs= stat.executeQuery(qo);
while (rs.next())
       {
    s8=rs.getInt("ques_disp");
    s10=rs.getInt("max_q");
       }  
System.out.println("admin q:::"+s8);
se.setAttribute("qqqq",s8);  
se.setAttribute("m_q",s10);    
        }
catch(Exception ae)
{
ae.printStackTrace();
}   
    %>
        <br>
        <label>No of Question in the Exam:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </label> 
        </b><input name="t9" value="<%= q%>" id="t9" style="font-weight: 700" /><b>
        <br>
        <br>
        <label>User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </label>
		</b><input name="t6" id="t6" style="font-weight: 700" /><b>
        <br>
        <br>
        <label>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </label>
		</b><input type="password" name="t7" id="t7" style="font-weight: 700" /><b>
       <br>
        <br>
       <label>Confirm Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
		</b><input type="password" name="t8" id="t8" style="font-weight: 700" /><b>
        <br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </b>
        <input type="submit" value="Submit" name="b1" onclick="return check()" style="font-weight: 700" /><b>
		</b>
     	</p>
     </form><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	</b>
        <input type="submit" value="Cancel" name="b2" onclick="fi()" style="font-weight: 700" /><b>
			</b> 
     </body>
</html>