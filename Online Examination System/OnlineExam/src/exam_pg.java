/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.*;
import java.net.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

import Dbean.Dao;

/**
 *
 * @author ARVIND
 */
public class exam_pg extends HttpServlet {
    static int i1=0;
    public static int l1=0;
     public static String sol[]= new String[100];
     public static String sol2[]= new String[100];   
     
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession st=request.getSession();
        String stu=(String)st.getAttribute("stu");
        String cou=(String)st.getAttribute("cs");
        String ii=(String)st.getAttribute("i1");
        i1=Integer.parseInt(ii);
        String ij=(String)st.getAttribute("l1");
        l1=Integer.parseInt(ij);
        int qno=(Integer)st.getAttribute("q");
        int qno11=(Integer)st.getAttribute("ff");
        st.setAttribute("sol", sol);
        st.setAttribute("sol2", sol2);  
        String user=(String)st.getAttribute("stu");
        out.println("<html>");
            out.println("<head>");
            out.write("        <h3>Login by: ");
      out.print(user);
      
      
            out.println("<title>Exam</title>");  
            out.println("</head>");
            out.println("<body>");
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
    int q[]=new int[100];
    conn=Dao.getCon();
Statement stat=conn.createStatement();
String g1 = "select q_id from ques_in where c_name='"+cou+"' ";
    ResultSet rs = stat.executeQuery(g1);
//for storing d qu num from ques table
                while (rs.next())
                    {
                   q[p]=rs.getInt(1);
                   p++;
                    }  
String str="select * from ques_in where q_id='"+ q[i1] + "' and c_name='"+cou+"' ";
 rs= stat.executeQuery(str);

while (rs.next())
{
s1=rs.getString("question");
s2=rs.getString("choice1");
s3=rs.getString("choice2");
s4=rs.getString("choice3");
s5=rs.getString("choice4");
s6=rs.getString("ans");
//sol1[i]=s6;
if(i1<(qno11-1))
{
out.println("<form name=f1 action=exam_pg method=POST>");
out.println("<h2>");
out.println("<label> Question:"+(i1+1)+ "</label>");
out.println("</h2>");
out.println("<h3>");
out.println("<label>" + s1 + "</label>");
out.println("</h3>");
out.println("<br>");
out.println("<br>");
out.println("<h3>");
out.println("Choice1:<input type=radio name=rg value=a >"+ s2 +"</input>");
out.println("<br>");
out.println("<br>");
out.println("Choice2:<input type=radio name=rg value=b>"+ s3 +"</input>");
out.println("<br>");
out.println("<br>");
out.println("Choice3:<input type=radio name=rg value=c>"+ s4 +"</input>");
out.println("<br>");
out.println("<br>");
out.println("Choice4:<input type=radio name=rg value=d>"+ s5 +"</input>");
out.println("</h3>");
//System.out.println(s1);
out.println("<input type=submit name=b1 value=Next>");
i1++;
String gt=Integer.toString(i1);
st.setAttribute("i1", gt);
String u=request.getParameter("rg");
sol2[l1]=s6;
//storing d user enter ans
sol[l1]=u;
l1++;
//remove the first line
st.setAttribute("sol", sol[l1]);
  
String gh=Integer.toString(l1);
st.setAttribute("l1", gh);
System.out.println(u+"::::"+stu);
out.println("</form>");
}
else
{
out.println("<form name=f1 action=ex_pg2 method=POST>");
out.println("<h2>");
out.println("<label> Question:"+(i1+1)+ "</label>");
out.println("</h2>");
out.println("<h3>");
out.println("<label>" + s1 + "</label>");
out.println("</h3>");
out.println("<br>");
out.println("<br>");
out.println("<h3>");
out.println("<input type=radio name=rg value=a >"+ s2 +"</input>");
out.println("<br>");
out.println("<br>");
out.println("<input type=radio name=rg value=b>"+ s3 +"</input>");
out.println("<br>");
out.println("<br>");
out.println("<input type=radio name=rg value=c>"+ s4 +"</input>");
out.println("<br>");
out.println("<br>");
out.println("<input type=radio name=rg value=d>"+ s5 +"</input>");
out.println("</h1>");
out.println("<br>");
out.println("<br>");
out.println("<h3>");
i1=0;
String gt=Integer.toString(i1);
st.setAttribute("i1", gt);
out.println("<input type=submit name=b2 value=Finish>");
String u=request.getParameter("rg");
System.out.println(u+"::::"+stu);
sol2[l1]=s6;
sol[l1]=u;
l1++;
//remove the first line
st.setAttribute("sol", sol[l1]);

String gh=Integer.toString(l1);
st.setAttribute("l1", gh);
out.println("</form>");
}
  }
   }
 catch(Exception e)
		{	
                e.printStackTrace();
		}
            out.println("</body>");
            out.println("</html>");
    }
 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
    * Handles the HTTP <code>GET</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
    * Handles the HTTP <code>POST</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
    * Returns a short description of the servlet.
    */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
