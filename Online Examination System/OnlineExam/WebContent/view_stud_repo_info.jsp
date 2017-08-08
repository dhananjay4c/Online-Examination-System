
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%

     String user_acc=(String)session.getAttribute("user_acc");
     String sessionyr=(String)session.getAttribute("sessionyr");
     String year=(String)session.getAttribute("year");
     String branch=(String)session.getAttribute("branch");
     String semester=(String)session.getAttribute("semester");
     String roll_no=request.getParameter("roll_no");
     String[] tests={"pt1","pt2","pt3","sess1","sess2","ext"};
     

     String tab_name=sessionyr+year+branch+semester;

     

           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection conn=DriverManager.getConnection("jdbc:odbc:college");
        Statement stat=conn.createStatement();
        Statement stat1=conn.createStatement();
        String sql="select * from "+tab_name+" where roll_no='"+roll_no+"'";
        ResultSet rs=stat.executeQuery(sql);

        String sqlsub="select * from "+branch+" where semester='"+semester+"'";

        ResultSet rssub=stat1.executeQuery(sqlsub);
        String subnames="";
        while(rssub.next())
                  {
                   subnames=subnames + rssub.getString("subject")+",";
                   }
        System.out.println(subnames);
        String[] subs=subnames.split(",");
        for(int y=0;y<subs.length;y++)
            {
            System.out.println(subs[y]);
            }
         %>
    <body>
        <div align="right"><a href="reg_home.jsp">HOME</a></div>
       <center><h1>STUDENT INFORMATION</h1></center>
            <% while(rs.next())
                {
                %>
           <br><br>
           Name : <%=rs.getString("name") %>   <br><br>     Branch : <%= branch %>
           <br><br>
           Year : <%= year%>             <br><br>           Session: <%= sessionyr%>
           <br><br>

           <%
          for(int y=0;y<subs.length;y++)
               {
           %><h2><%=subs[y]%></h2><br>
          <% 
           for(int i=0;i<tests.length;i++)
               {
               String a=rs.getString(subs[y]+tests[i]);
            %>
           <%=tests[i] %> : <%=a%><br><br>

            <%
           }
              }
           }
           %>

       
    </body>
</html>
