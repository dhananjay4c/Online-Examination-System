<%@ page import="java.sql.*,java.util.*" %>   
<%@ page session="true"  %>
<%@page import="Dbean.Dao"%>
<%!   static int x=1,b=0;  

%>
<html>
        <head>  
			<script type="text/javascript" src="JQuery/jquery-3.2.1.js">
			</script>
			<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js">
			</script>
			<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
			<link href="css/exam.css" rel="stylesheet" type="text/css"/>
            <style type="text/css">
body {
	background-color: #FF9;
}
</style>
    <%  
    HttpSession st=request.getSession(false);
    LinkedList answers=new LinkedList();
      answers=(LinkedList)st.getAttribute("answers");
      System.out.print(answers);
     // String convert=(String)mysession.getAttribute("No_of_questions");
     // b=Integer.parseInt(convert);
      b=(Integer)st.getAttribute("No_of_questions");
      System.out.println("no of ques deep "+b);
      String cou=(String)st.getAttribute("cs");
      System.out.println("No offf");
      System.out.println(b);
      x=(Integer)st.getAttribute("x");
      System.out.println("its should b 1");
      System.out.println(x);
    String mins = request.getParameter( "mins" );  
    if( mins == null ) mins = "1";  
       
    String secs = request.getParameter( "secs" );  
    if( secs == null ) secs = "1";  
    %>  
    <script>  
   <!--  
   var mins = <%=mins%>; // write mins to javascript  
   var secs = <%=secs%>; // write secs to javascript  
   function timer()  
   {  
   // tic tac  
   if( --secs == -1 )  
   {  
   secs = 59;  
   --mins;  
   }  
     
   // leading zero? formatting  
   if( secs < 10 ) secs = "0" + secs;               
   if( mins < 10 ) mins = "0" + parseInt( mins, 10 );  
     
   // display  
   document.forma.mins.value = mins;   
   document.forma.secs.value = secs; 
        
   // continue?  
   if( secs == 0 && mins == 0 ) // time over  
   {  
   document.forma.ok.disabled = true;  
   document.formb.results.style.display = "block";  
   }  
   else // call timer() recursively every 1000 ms == 1 sec  
   {  
   window.setTimeout( "timer()", 1000 );  
   }  
   }  
   //-->  
   </script></head>  
   
   <% 
   
   String s1=null;
            String s2=null;
            String s3=null;
            String s4=null;
            String s5=null;
            String s6=null;           
 //         String str1=null;
            Connection conn=null;
           int p=0;
try
{
conn=Dao.getCon();
Statement stat=conn.createStatement();
String g1 = "select q_id from ques_in where c_name='"+cou+"' ";
  ResultSet rs = stat.executeQuery(g1);
//for storing d qu num from ques table
                 
String str="select * from ques_in where q_id='"+ x + "' and c_name='"+cou+"' ";
     rs= stat.executeQuery(str);
System.out.println(b+"deep "+x);
while (rs.next()  && x<=b)
{

s1=rs.getString("question");
s2=rs.getString("choice1");
s3=rs.getString("choice2");
s4=rs.getString("choice3");
s5=rs.getString("choice4");
s6=rs.getString("ans");

if(x<b)
{      
   %>
   
   
   <body class="container">  
   <form action="exam.jsp" name="forma" onsubmit="go()">   
   <br>Time remaining: <input type="text" name="mins" size="1" style="border:0px solid black;text-align:right">:<input type="text" name="secs" size="1" style="border:0px solid black">  
   <hr>  
   <label> Question:<%= x %></label>

<h3>
<label><%= s1 %></label>
</h3>
<br>
<br>
<h3>
Choice1:<input type=radio name=rg value=a ><%= s2 %></input>
<br>
<br>
Choice2:<input type=radio name=rg value=b><%= s3 %></input>
<br>
<br>
Choice3:<input type=radio name=rg value=c><%= s4 %></input>
<br>
<br>
Choice4:<input type=radio name=rg value=d><%= s5 %></input>
</h3>
	<!-- <input class="btn btn-info" type="submit" name="ok" value=">>Back"> -->
   <input class="btn btn-success" type="submit" name="ok" value="Next">
   
     
   </form>  
   <hr>  
    
   <% 
   x++;
   System.out.println("deep Value" +"::::"+x);
   answers.add(request.getParameter("rg"));
   
   st.setAttribute("answers",answers);
  // String gt=Integer.toString(x);
   st.setAttribute("x",x);
   }
else if(x==b)
    {
%>
<form action="result.jsp" name="forma">  
  Time remaining: <input type="text" name="mins" size="1" style="border:0px solid black;text-align:right">:<input type="text" name="secs" size="1" style="border:0px solid black">  
   <hr>  
   
 <div id="qustionDiv">
   
   <label> Question:<%= x %></label>

<h3>
<label><%= s1 %></label>
</h3>
<br>
<br>
<h3>
Choice1:<input type=radio name=rg value=a ><%= s2 %></input>
<br>
<br>
Choice2:<input type=radio name=rg value=b><%= s3 %></input>
<br>
<br>
Choice3:<input type=radio name=rg value=c><%= s4 %></input>
<br>
<br>
Choice4:<input type=radio name=rg value=d><%= s5 %></input>
</h3>
   <input class="btn btn-success" type="submit" name="ok" value="finish">  

</div>
 
   </form>  
   <hr>  
    
   <% 
   x++;
   answers.add(request.getParameter("rg"));
   st.setAttribute("answers",answers);
 // String gt=Integer.toString(x);
  //mysession.setAttribute("x",1);
   }
%>
<form action="result.jsp" name="formb">  
   <input class="btn btn-success" type="submit" name="results" value="show results" style="display:none;">   
   </form> 
   <%
  }
   }
 catch(Exception e)
		{	
                e.printStackTrace();
		}
   
   %>
   <script>  
   <!--  
   timer(); // call timer() after page is loaded  
   //-->  
   </script>  
   </body></html>  