<%-- 
    Document   : index
    Created on : Jun 30, 2009, 12:38:58 AM
    Author     : Arvind Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*,java.util.*" %>
<%@page import="Dbean.Dao"%> 

<html>
    <head>
		<script type="text/javascript" src="JQuery/jquery-3.2.1.js">
		</script>
		<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js">
		</script>
		<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Examination System</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
     <%! int a=0; 
         int b=0;
         int x=1;
         int marks=0;
         String s2;
     %>
     <%
     try
{
     List numquestions=new LinkedList();    
      List answers=new LinkedList();
    Connection conn=null;
conn=Dao.getCon();
Statement stat=conn.createStatement();
HttpSession st=request.getSession();
String cou=(String)st.getAttribute("cs");
System.out.println("deep singh"+cou);
String g1 = "select q_id from ques_in where c_name='"+cou+"'";
    ResultSet rs = stat.executeQuery(g1);
//for storing d qu num from ques table
                 


while (rs.next())
{
  numquestions.add(rs.getInt(1));
  }
  a=numquestions.size();
   //System.out.println(a);
   
    st.setAttribute("No_of_questions", a);
   st.setAttribute("x", x);
     st.setAttribute("answers",answers);
     st.setAttribute("marks",marks);
      s2=(String)st.getAttribute("cs");
   }
 catch(Exception e)
		{	
                e.printStackTrace();
		}
   
   %>
  <body> 
    </head>
    <body>
        <div id="Main">
    <form id="form1">
<div id="header-wrapper">
	<div id="header">
		<div id="menu">
			<ul>
                <li class="current_page_item"><br></li><li class="current_page_item"><a href="index.jsp">Home</a></li>
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
	<p>&nbsp;</p>
	<p><img src="images/logo1.gif"/>
  </p>
<h1 style="margin:-80px 0 0 60px;">Online Examination System</h1>
	<p style="margin:0 0 0 70px;">Excel your potential</p>

</div>
<hr />
<div id="page">
	<div id="page-bgtop">
            <center>
                        <h2>&nbsp;</h2>
                        <h2>Start the exam!</h2>
       <form>  
  
   <input class="btn btn-info" type="button" value="Start" onClick="javascript:location.href='exam.jsp'">   
</form>  
   <hr>  
 </center> 

	 
	</div>
	<!-- end #page -->
	<div id="footer">
		
	</div>
</div>

    </body>
</html>
