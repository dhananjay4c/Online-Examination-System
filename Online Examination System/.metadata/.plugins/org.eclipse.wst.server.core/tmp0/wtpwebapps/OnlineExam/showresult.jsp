
<%@page import="java.util.List"%>
<%@page import="java.sql.Date"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Examination System</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
  
<%
    HttpSession st=request.getSession();
    
    int  b=(Integer)st.getAttribute("No_of_questions");

   /* int q=Integer.parseInt(st.getAttribute("No_of_questions").toString());
    int a=Integer.parseInt(st.getAttribute("answers").toString());
    int m=Integer.parseInt(st.getAttribute("marks").toString());*/
%>
<body>
<div id="Main">
    <form id="form1">
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
	 <h2>
    Examination Result</h2>
    &nbsp;
    <br />
    <table bgcolor="#eeeeee" border=1>
        <tr>
            <td>
                Subject:
            </td>
            <td>
            <%=st.getAttribute("cs") %>
            <label name="lblSubject" style="width:154px; color:red; font-family:Verdana, Arial, Helvetica, sans-serif" ></label>
                </td>
        </tr>
        <tr>
            <td>
                Starting Time :
            </td>
            
           
            <td>
            1 Minute
            <label name="lblStime" style="width:154px; color:red; font-family:Verdana, Arial, Helvetica, sans-serif" ></label>
               </td>
        </tr>
        
        <tr>
            <td>
                Remain Time  :
            </td>
            
            <td>
            <%
            String mm="Time Up"; 
            mm=(String)st.getAttribute("mins");
             if(mm==null){
             mm="Time Up";
             }
             String ss="Time Up";
             ss=(String)st.getAttribute("secs");
             if(ss==null){
             ss="Time Up";
             }
             %>
            <%=mm %>  Min  <%= ss%>  Sec
            
            <label name="lblMin" style="width:154px; color:red; font-family:Verdana, Arial, Helvetica, sans-serif" ></label>
             
                </td>
        </tr>
        
                <tr>
            <td>
               No. of Questions :
            </td>
            <td>
            <%=b %>
            <label name="lblNquestions" style="width:154px; color:red; font-family:Verdana, Arial, Helvetica, sans-serif" ></label>
           </td>
        </tr>
        
                <tr>
            <td>
                No. of correct answers : 
            </td>
            <td>
            <%=st.getAttribute("marks")%>
                <label name="lblNcans" style="width::154px; color:red; font-family:Verdana, Arial, Helvetica, sans-serif" ></label></td>
        </tr>

        <tr>
            <td>
                Grade : 
            </td>
            <td>
            <%
            int total=b;
            int correct=(Integer)st.getAttribute("marks");
            int grade=correct*100/total;
            String result="";
            if((grade>=45)&&(grade<60)){
            result="B Grade ";
            }else if((grade>=60)&&(grade<75)){
            result="A Grade ";
            }else if(grade>=75){
            result="A Grade with Excelent ";
            }else{
            result="C Grade ";
            }
            %>
            <%=result %>
               <label name="lblGrade" style="width::154px; color:red; font-family:Verdana, Arial, Helvetica, sans-serif" ></label></td>
        </tr>


    </table>
    <br />
    <a  href="reviewquestions.jsp">Review Questions</a>
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
