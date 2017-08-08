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
public class te_rg_in extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession se = request.getSession();
        String s=request.getParameter("t6");
        String ss=request.getParameter("d1");
        // couse name
        se.setAttribute("ss", ss);
        // user name
        se.setAttribute("s", s);   
    String s1=request.getParameter("t1");
    se.setAttribute("s1", s1);
    String s2=request.getParameter("t2");
    se.setAttribute("s2", s2);
    String er="You cant register for this course";
    
    String s3=request.getParameter("t4");
     se.setAttribute("s3", s3);
    String s4=request.getParameter("t5");
    se.setAttribute("s4", s4);
    String s5=request.getParameter("d1");
    se.setAttribute("s5", s5);
    String s6=request.getParameter("t6");
    String s7=request.getParameter("t7");
    // teacher entered q no
    String s9=request.getParameter("t9");
    se.setAttribute("s9", s9);
    // teacher entered q no
    int u_q_no=Integer.parseInt(s9);
    // admin min q_no
    int ad_q_no=(Integer)se.getAttribute("qqqq");
    // admin max q_no
    int ad_maq_no=(Integer)se.getAttribute("m_q");
    System.out.println("admin Value retrived from prev page "+ad_q_no);
        try 
        {
            // phone number
            String tu=request.getParameter("t3");
    int i=Integer.parseInt(request.getParameter("t3"));
     se.setAttribute("tu", tu);
        Connection conn=null;   
        conn=Dao.getCon();
Statement stat=conn.createStatement();
String us="select u_name,c_adp from reg_teacher";
ResultSet rst=stat.executeQuery(us);
if(u_q_no<ad_q_no)
{
System.out.println("You should exceed the limit of "+ad_q_no);
er="You should be more than "+ad_q_no;
se.setAttribute("er", er);
RequestDispatcher view=request.getRequestDispatcher("te_rg.jsp");
view.forward(request,response);
return;
}
if(u_q_no>ad_maq_no)
{
System.out.println("You cannot exceed the limit of "+ad_maq_no);
er="You should be more than "+ad_maq_no;
se.setAttribute("er", er);
RequestDispatcher view=request.getRequestDispatcher("te_rg.jsp");
view.forward(request,response);
return;
}
while(rst.next())
{
  String ut=rst.getString("u_name"); 
  String ca=rst.getString("c_adp"); 
 if(s5.equals(ca))
{    
System.out.println("Already exists ");
se.setAttribute("er", er);
RequestDispatcher view=request.getRequestDispatcher("te_rg.jsp");
System.out.println("hei!!!!!");
view.forward(request,response);
return;    
} 
}

 String str="insert into wait_te values('"+ s1 +"','"+ s2 +"','"+ i +"','"+ s3 +"','"+ s4 +"','"+ s5 +"','"+ s6 +"','"+ s7 +"','"+ u_q_no +"');";
ResultSet rs=stat.executeQuery(str);
 } 
    
        catch(NumberFormatException aex)
   {
            
             er="Eneter the Phone No in numbers";
            se.setAttribute("er", er);
 RequestDispatcher view=request.getRequestDispatcher("te_rg.jsp");
System.out.println("hei");
view.forward(request,response);
return;
   }
            
  catch(Exception ae)
   {
// RequestDispatcher view=request.getRequestDispatcher("te_no_qs_xm.jsp");
System.out.println("You are welcome to enter");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:ac");      
String str1="insert into te_qno_exam(course,qno) values(?,?)";
        PreparedStatement  ps=con.prepareStatement(str1);
        ps.setString(1, ss);
        ps.setInt(2, u_q_no);
        int rst=ps.executeUpdate();  
        response.sendRedirect("index.jsp");
RequestDispatcher view=request.getRequestDispatcher("index.jsp");
System.out.println("hei");
view.forward(request,response);
return;
}
catch(Exception ae1)
{
    
}
}
                    
        finally { 
            out.close();
        }
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
