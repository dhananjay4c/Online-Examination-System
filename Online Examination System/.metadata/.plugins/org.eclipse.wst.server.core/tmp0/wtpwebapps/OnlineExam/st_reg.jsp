<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
function fi()
    {
    parent.location='st_log.jsp'
    }
</script>
          <script language="javaScript" 
    type="text/javascript" >
        monthMaxDays	= [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
monthMaxDaysLeap= [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
hideSelectTags = [];
function getRealYear(dateObj)
{
	return (dateObj.getYear() % 100) + 
         (((dateObj.getYear() % 100) < 39) ? 2000 : 1900);
}
function getDaysPerMonth(month, year)
{
	/* 
	Check for leap year. These are some conditions 
        to check year is leap year or not...
	1.Years evenly divisible by four are normally 
          leap years, except for... 
	2.Years also evenly divisible by 100 are not 
          leap years, except for... 
	3.Years also evenly divisible by 400 are 
          leap years. */
	if ((year % 4) == 0)
	{
		if ((year % 100) == 0 && (year % 400) != 0)
			return monthMaxDays[month];
	
		return monthMaxDaysLeap[month];
	}
	else
		return monthMaxDays[month];
}
function createCalender(year, month, day)
{
	 // current Date
	var curDate = new Date();
	var curDay = curDate.getDate();
	var curMonth = curDate.getMonth();
	var curYear = getRealYear(curDate)
	 // if a date already exists, we calculate some values here
	if (!year)
	{
		var year = curYear;
		var month = curMonth;
	}
	var yearFound = 0;
	for (var i=0; i<document.getElementById('selectYear').options.length; 
             i++)
	{
		if (document.getElementById('selectYear').options[i].value 
                    == year)
		{
			document.getElementById('selectYear').selectedIndex = 
                        i;
			yearFound = true;
			break;
		}
	}
	if (!yearFound)
	{
		document.getElementById('selectYear').selectedIndex = 0;
		year = document.getElementById('selectYear').options[0].value;		
	}
	document.getElementById('selectMonth').selectedIndex = month;
	 // first day of the month.
	var fristDayOfMonthObj = new Date(year, month, 1);
	var firstDayOfMonth = fristDayOfMonthObj.getDay();
	continu		= true;
	firstRow	= true;
	var x	= 0;
	var d	= 0;
	var trs = []
	var ti = 0;
	while (d <= getDaysPerMonth(month, year))
	{
		if (firstRow)
		{
			trs[ti] = document.createElement("TR");
			if (firstDayOfMonth > 0)
			{
				while (x < firstDayOfMonth)
				{
				trs[ti].appendChild(document.createElement
                                ("TD"));
				x++;
				}
			}
			firstRow = false;
			var d = 1;
		}
		if (x % 7 == 0)
		{
			ti++;
			trs[ti] = document.createElement("TR");
		}
		if (day && d == day)
		{
			var setID = 'calenderChoosenDay';
			var styleClass = 'choosenDay';
			var setTitle = 'this day is currently selected';
		}
		else if (d == curDay && month == curMonth && year == curYear)
		{
			var setID = 'calenderToDay';
			var styleClass = 'toDay';
			var setTitle = 'this day today';
		}
		else
		{
			var setID = false;
			var styleClass = 'normalDay';
			var setTitle = false;
		}
		var td = document.createElement("TD");
		td.className = styleClass;
		if (setID)
		{
			td.id = setID;
		}
		if (setTitle)
		{
			td.title = setTitle;
		}
		td.onmouseover = new Function('highLiteDay(this)');
		td.onmouseout = new Function('deHighLiteDay(this)');
		if (targetEl)
			td.onclick = new Function(
                           'pickDate('+year+', '+month+', '+d+')'
                           );
		else
			td.style.cursor = 'default';
		td.appendChild(document.createTextNode(d));
		trs[ti].appendChild(td);
		x++;
		d++;
	}
	return trs;
}
function showCalender(elPos, tgtEl)
{
	targetEl = false;
	if (document.getElementById(tgtEl))
	{
		targetEl = document.getElementById(tgtEl);
	}
	else
	{
		if (document.forms[0].elements[tgtEl])
		{
			targetEl = document.forms[0].elements[tgtEl];
		}
	}
	var calTable = document.getElementById('calenderTable');
	var positions = [0,0];
	var positions = getParentOffset(elPos, positions);	
	calTable.style.left = positions[0]+'px';		
	calTable.style.top = positions[1]+'px';			
	calTable.style.display='block';
	var matchDate = new RegExp('^([0-9]{2})-([0-9]{2})-([0-9]{4})$');
	var m = matchDate.exec(targetEl.value);
	if (m == null)
	{
		trs = createCalender(false, false, false);
		showCalenderBody(trs);
	}
	else
	{
		if (m[1].substr(0, 1) == 0)
			m[1] = m[1].substr(1, 1);
		if (m[2].substr(0, 1) == 0)
			m[2] = m[2].substr(1, 1);
		m[2] = m[2] - 1;
		trs = createCalender(m[3], m[2], m[1]);
		showCalenderBody(trs);
	}
	hideSelect(document.body, 1);
}
function showCalenderBody(trs)
{
	var calTBody = document.getElementById('calender');
	while (calTBody.childNodes[0])
	{
		calTBody.removeChild(calTBody.childNodes[0]);
	}
	for (var i in trs)
	{
		calTBody.appendChild(trs[i]);
	}
}
function setYears(sy, ey)
{
	 // current Date
	var curDate = new Date();
	var curYear = getRealYear(curDate);
	if (sy)
		startYear = curYear;
	if (ey)
		endYear = curYear;
	document.getElementById('selectYear').options.length = 0;
	var j = 0;
	for (y=ey; y>=sy; y--)
	{
	document.getElementById('selectYear')[j++] = new Option(y, y);
	}
}
function hideSelect(el, superTotal)
{
	if (superTotal >= 100)
	{
		return;
	}
	var totalChilds = el.childNodes.length;
	for (var c=0; c<totalChilds; c++)
	{
		var thisTag = el.childNodes[c];
		if (thisTag.tagName == 'SELECT')
		{
		if (thisTag.id != 'selectMonth' && thisTag.id != 'selectYear')
		{
		var calenderEl = document.getElementById('calenderTable');
		var positions = [0,0];
		var positions = getParentOffset(thisTag, positions);	// nieuw
		var thisLeft	= positions[0];
		var thisRight	= positions[0] + thisTag.offsetWidth;
		var thisTop	= positions[1];
		var thisBottom	= positions[1] + thisTag.offsetHeight;
		var calLeft	= calenderEl.offsetLeft;
		var calRight	= calenderEl.offsetLeft + calenderEl.offsetWidth;
		var calTop	= calenderEl.offsetTop;
		var calBottom	= calenderEl.offsetTop + calenderEl.offsetHeight;
		if (
		(
		// check if it overlaps horizontally 
		(thisLeft >= calLeft && thisLeft <= calRight)
		||
		(thisRight <= calRight && thisRight >= calLeft)
		||
		(thisLeft <= calLeft && thisRight >= calRight)
		)
		&&
		(
		// check if it overlaps vertically 
		(thisTop >= calTop && thisTop <= calBottom)
		||
		(thisBottom <= calBottom && thisBottom >= calTop)
		||
		(thisTop <= calTop && thisBottom >= calBottom)
		)
		)
		{
		hideSelectTags[hideSelectTags.length] = thisTag;
		thisTag.style.display = 'none';
		}
		}
		}
		else if(thisTag.childNodes.length > 0)
		{
			hideSelect(thisTag, (superTotal+1));
		}
	}
}
function closeCalender()
{
	for (var i=0; i<hideSelectTags.length; i++)
	{
		hideSelectTags[i].style.display = 'block';
	}
	hideSelectTags.length = 0;
	document.getElementById('calenderTable').style.display='none';
}
function highLiteDay(el)
{
	el.className = 'hlDay';
}
function deHighLiteDay(el)
{
	if (el.id == 'calenderToDay')
		el.className = 'toDay';
	else if (el.id == 'calenderChoosenDay')
		el.className = 'choosenDay';
	else
		el.className = 'normalDay';
}
function pickDate(year, month, day)
{
	month++;
	day	= day < 10 ? '0'+day : day;
	month	= month < 10 ? '0'+month : month;
	if (!targetEl)
	{
		alert('target for date is not set yet');
	}
	else
	{
		targetEl.value= month+'/'+day+'/'+year;
		closeCalender();
	}
}
function getParentOffset(el, positions)
{
	positions[0] += el.offsetLeft;
	positions[1] += el.offsetTop;
	if (el.offsetParent)
	  positions = getParentOffset(el.offsetParent, positions);
	return positions;
}

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
var q= document.getElementById('t5');
var w= document.getElementById('t4');
var e= document.getElementById('t6');
var r= document.getElementById('t7');
var t= document.getElementById('t8');
var y=document.getElementById('d1');
var u=document.getElementById('t9');
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
alert("Enter the Father Name");
return false;
}
if (w.value == '') //if(name.value=='')
{
alert("Enter the Phone No");
return false;
}
if (q.value == '') //if(name.value=='')
{
alert("Enter the Address");
return false;
}
if (u.value == '') //if(name.value=='')
{
alert("Enter the Phone No");
return false;
}
if (u.value.length < '6') {
alert("Invalid E-mail ID");
return false;
}
var str = document.form1.t9.value

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

    </head>
    <body>
        <center><h2><font size="6" color="#800080">Student Registration Page</font></h2></center>
        <form id="form1" name="f1" action="st_reg_in" method="POST">
       <b>
       <label>First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
		</b><input name="t1" id="t1" style="font-weight: 700" /><b>
        <br>
        <br>
        <label>Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
		</b><input name="t2" id="t2" style="font-weight: 700" /><b>
       <br>
        <br>
       <label>Father Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
		</b><input name="t3" id="t3" style="font-weight: 700" /><b>
        <br>
        <br>
        <label>Phone No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
		</b><input name="t4" id="t4" style="font-weight: 700" /><b>
        <br>
        <br>
        <label>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
		</b><input name="t5" id="t5" style="font-weight: 700" /><b>
       <br>
        <br>
         <label>Email id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
		</b><input name="t9" id="t9" style="font-weight: 700" /><b>
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
%><label>Course opted&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
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
    	Select the Date for Exam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b> 
		<input name="datum1" style="font-weight: 700"><b><a href="#" 
       onClick="setYears(2007, 2015);
       showCalender(this, 'datum1');">
      <img src="calender.png"></a>
      <br>
      
    <!-- Calender Script  --> 
   
    	</b> 
   
    <table id="calenderTable" width="223">
       <tbody id="calenderTableHead">
         <tr>
           <td colspan="4" align="center">
	     <b>&nbsp;
	     </b>
	     <select onChange="showCalenderBody(
   createCalender(document.getElementById('selectYear').value,this.selectedIndex, false));"
                   id="selectMonth" style="font-weight: 700">
	              <option value="0">Jan</option>
	              <option value="1">Feb</option>
	              <option value="2">Mar</option>
	              <option value="3">Apr</option>
	              <option value="4">May</option>
	              <option value="5">Jun</option>
	              <option value="6">Jul</option>
	              <option value="7">Aug</option>
	              <option value="8">Sep</option>
	              <option value="9">Oct</option>
	              <option value="10">Nov</option>
	              <option value="11">Dec</option>
	          </select></td>
            <td colspan="2" align="center">
	    <b>&nbsp;
	    </b>
	    <select onChange="showCalenderBody(createCalender(this.value, 
	      document.getElementById('selectMonth').selectedIndex, false));"
              id="selectYear" style="font-weight: 700">
	    </select><b> </b>
			</td>
           <td align="center" width="28">
	          <b><a href="#" onClick="closeCalender();">
              <font color="#003333" size="+1">X</font>
            </a>
	   		</b>
	   </td>
	</tr>
       </tbody>
       <tbody id="calenderTableDays">
         <tr style="">
           <td width="43"><b>&nbsp;&nbsp;Sun</b></td><td width="29"><b>Mon</b></td>
			<td width="23"><b>Tue</b></td><td width="30"><b>Wed</b></td>
           <td width="23"><b>Thu</b></td><td width="17"><b>Fri</b></td><td width="28">
			<b>Sat</b></td>
         </tr>
       </tbody>
       <tbody id="calender"></tbody>
    </table>
    	<b>
    <br>
        <label>User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
		</b><input name="t6" id="t6" style="font-weight: 700" /><b>
        <br>
        <br>
        <label>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
		</b><input type="password" name="t7" id="t7" style="font-weight: 700" /><b>
       <br>
        <br>
       <label>Confirm Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
		</b><input type="password" name="t8" id="t8" style="font-weight: 700" /><b>
        <br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </b>
        <input type="submit" value="Submit" name="b1" onclick="return check()" style="font-weight: 700" /><b>
		</b>
     </form>
        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </b>
        <input type="submit" value="Cancel" name="b2" onclick="fi()" style="font-weight: 700" /><b>
		</b> 
            
            

    </body>
</html>
