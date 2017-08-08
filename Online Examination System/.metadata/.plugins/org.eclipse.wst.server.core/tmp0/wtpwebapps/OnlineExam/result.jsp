<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%@ page import="java.sql.*,java.util.*" %>
   <%@ page session="true" %>
<%@page import="Dbean.Dao"%>
   <%! static int i=1,marks=0;
   String danswer;
   %>
<%
HttpSession st=request.getSession();
    LinkedList answers=new LinkedList();
    LinkedList right_answer=new LinkedList();
   // String right_answers[]=new String[100];
    marks=(Integer)st.getAttribute("marks");
    System.out.println("total min "+request.getParameter("mins")+"\t"+request.getParameter("secs"));
    st.setAttribute("mins",request.getParameter("mins"));
    st.setAttribute("secs",request.getParameter("secs"));
    String course=(String)st.getAttribute("cs");
    System.out.println("marks in result page by deep" +marks);
   Connection conn=null;
conn=Dao.getCon();
Statement stat=conn.createStatement();
String g1 = "select ans from ques_in where c_name= '"+course+"'";
    ResultSet rs = stat.executeQuery(g1);
     System.out.println("database answers");
     
    while (rs.next())
{
     
   danswer=rs.getString("ans");
   right_answer.add(danswer);
        //right_answers[i]=danswer;
        //System.out.println(right_answers[i]);
        System.out.println(right_answer);
        
  }

    
      answers=(LinkedList)st.getAttribute("answers");
      answers.add(request.getParameter("rg"));
      answers.remove();
     
      st.setAttribute("answers",answers);
      Iterator items=answers.iterator();
      Iterator items1=right_answer.iterator();
      System.out.println("user answers");
      System.out.println(answers);
     // System.out.println("Chk d value");
      //System.out.println(answers.get(7));
      
      for(i=0;i<answers.size();i++)
          {
          //System.out.println("dddd"+i);
          if(answers.get(i)==null)
              {
             // System.out.println("hihi"+i);
              answers.set(i,"e");
              }
      }
      System.out.println("New user answers!!!!");
      System.out.println(answers);
      while(items.hasNext() & items1.hasNext())
          {
          //String a=(String));
          %>
          <% if((items.next()).equals(items1.next())) 
              {
              marks++;
               st.setAttribute("marks",marks);
              // mysession.setAttribute("x",1);
               
          }
              %>
         
        <%  
        }
        String stu=(String)st.getAttribute("stu");
        String cou=(String)st.getAttribute("cs");
        String fna=(String)st.getAttribute("fn");
        String dat=(String)st.getAttribute("da");
        String r=null;
        String pj=(String)st.getAttribute("p");
        int p=Integer.parseInt(pj);
        
        int gf=(Integer)st.getAttribute("r");
        r="pass";
        
        String str="insert into result(c_name,f_name,doe,marks,result,u_name) values(?,?,?,?,?,?)";
        PreparedStatement  ps=conn.prepareStatement(str);
        ps.setString(1, cou);
        ps.setString(2, fna);
        ps.setInt(4, marks);
        ps.setString(3, dat);
        ps.setString(5, r);
        ps.setString(6, stu);
        int rst=ps.executeUpdate(); 
        conn.close();
        //String str1="delete * from st_reg where u_name=?";
        //PreparedStatement ps2=conn.prepareStatement(str1);
        //ps2.setString(1,stu);
        //int re=ps2.executeUpdate();
        // System.out.println("Total" + marks);
      %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Examination System</title>
    </head>
    <body>
    <%
    response.sendRedirect("showresult.jsp");
     %>
    
        <h2>Your Marks are:<%= marks %></h2>
        <form name=f2 action=index.jsp method=POST>
       <input type=submit name=b2 value=Thank_You>
        </form>
    </body>
</html>
