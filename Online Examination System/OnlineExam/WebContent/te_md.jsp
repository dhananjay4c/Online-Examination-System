<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%!static int kk;%>
<%
HttpSession se=request.getSession();
String s13=(String)se.getAttribute("kk");

kk=Integer.parseInt(s13);

String s12=(String)se.getAttribute("ll");
int k=Integer.parseInt(s12);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
         javascript:window.history.forward(1);   
        </script>
        <script>
function fi()
    {
    parent.location='te_hm.jsp'
    }
</script>  
    </head>
    <body>
<%
           
            String c=(String)se.getAttribute("cn");
            String c1=(String)se.getAttribute("us");
   
        %>
        

        <h3>Login by:<%= c1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="te_logout.jsp">Logout</a></h3>
        <hr>
        <h2 align="left"><font color="#800080" size="6">Modify Questions</font></h2>
	<% 
        
        String s1=(String)se.getAttribute("cn");
        System.out.println("Course Name");
        System.out.println(s1);
%>
        <%
        int j[]=new int[100];
        
            try {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection conn = DriverManager.getConnection("jdbc:odbc:ac");
                Statement stat = conn.createStatement();
                String g = "select count(q_id) from ques_in where c_name='"+s1+"' ";
                ResultSet rs = stat.executeQuery(g);

                while (rs.next())
                    {
                   j[0]=rs.getInt(1);
                   System.out.println("No of question  ");
    System.out.println("count");
    System.out.println(j[0]);
                    }  
                k=j[0];
    System.out.println("No of question in a particular course");
    System.out.println(k);
            } 
            catch (Exception ae)
            {
            ae.printStackTrace();
            System.out.println("Error in count!!!!");
            }    
        %>
      

<%
        
         int q[]=new int[k];         
        int p=0;
            try {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection conn = DriverManager.getConnection("jdbc:odbc:ac");
                Statement stat = conn.createStatement();
                String g = "select q_id from ques_in where c_name='"+s1+"' ";
                ResultSet rs = stat.executeQuery(g);

                while (rs.next())
                    {
                   q[p]=rs.getInt(1);
                   p++;
                    }  
               
    System.out.println("question are:::");
    for(int h=0;h<k;h++)
        {
    System.out.println(q[h]);
    }
            } 
            catch (Exception ae)
            {
            ae.printStackTrace();
            System.out.println("error in getting question no!!!!");
            }    
        %>
   
         <form id="form1" name="f1" action="te_md_in" method="POST">

<p><b>Course Name&nbsp;&nbsp; </b> 
<input name="t1" value="<%= s1 %>" readonly="readonly" style="font-weight: 700" /><b>
<%
     String s9=null;
     String s8=null;
     String s7=null;
     String s6=null;
     String s5=null;
     String s4=null;
     String s3=null;
     System.out.println("part 3");
     
        try
        {
          System.out.println(kk); 
          System.out.println(k);
          if(kk<k)
            
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:ac");
Statement stat=conn.createStatement();
String str="select * from ques_in where c_name=? and q_id=?";
//
PreparedStatement ps=conn.prepareStatement(str);
ps.setString(1,s1);
ps.setInt(2,q[kk]);
ResultSet rs= ps.executeQuery();
while (rs.next())
     {
    s9=rs.getString("question");
    s8=rs.getString("choice1");
    s7=rs.getString("choice2");
    s6=rs.getString("choice3");
    s5=rs.getString("choice4");
    s4=rs.getString("ans");
    s3=rs.getString("q_id");
    %>     
<br>
<br>
Question&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b> 
<input name="t2" value="<%= s9 %>" style="font-weight: 700" /><b>
<br>
<br>
Choice 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b> 
<input name="t3" value="<%= s8 %>" style="font-weight: 700" /><b>
<br>
<br>
Choice 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b> 
<input name="t4" value="<%= s7 %>" style="font-weight: 700" /><b> 
<br>
<br>
Choice 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b> 
<input name="t5" value="<%= s6 %>" style="font-weight: 700" /><b>
<br>
<br>
Choice 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b> 
<input name="t6" value="<%= s5 %>" style="font-weight: 700" /><b>
<br>
<br>
Answer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</b> <input name="t7" value="<%= s4 %>" style="font-weight: 700" /><b> </b>
<input type="hidden" name="t8" value="<%= s3 %>" style="font-weight: 700" />
<b>
<%  
}  
kk++;
String gk=Integer.toString(kk);
se.setAttribute("kk", gk);

//System.out.println(i);
}
else
{
kk=0;
response.sendRedirect("te_hm.jsp");
}
}
catch(Exception ae)
{
ae.printStackTrace();
}               
%> 
</b> 
</p>
<p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
 </b> 
 <input type="submit" value="Update" name="b1" style="font-weight: 700" /><b>
</b>                      
</p>
</form>      
<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
</b>      
<input type="submit" value="Cancel" name="b2" onClick="fi()" style="font-weight: 700" /><b>
</b>
    </body>
</html>
