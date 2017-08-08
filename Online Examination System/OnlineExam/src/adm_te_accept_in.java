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
public class adm_te_accept_in extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      
        HttpSession ad=request.getSession();
        String crs=(String)ad.getAttribute("cs");
         String tun=request.getParameter("g1");
         String csm=request.getParameter("t1");
         System.out.println("course admin selected is:"+csm);
        String acp_rj=request.getParameter("g2");
    String s1=null;
    String s2=null;
    String s4=null;
    String s5=null;
    String s6=null;
     String s7=null;
    long p3=0;
    long q3=0;
    if(acp_rj.equals("accept"))
    {
        try 
        {
           Connection conn=null;   
           conn=Dao.getCon();
Statement stat=conn.createStatement();
String us="select * from wait_te where u_name='"+tun+"'";
ResultSet rst=stat.executeQuery(us);
while(rst.next())
{
  s1=rst.getString("f_name"); 
  s2=rst.getString("l_name");
  p3=rst.getInt("phone");
  s4=rst.getString("addr");
  s5=rst.getString("e_id");
  s6=rst.getString("c_adp"); 
  s7=rst.getString("password");
  q3=rst.getInt("no_ques");
}
String str="insert into reg_teacher values('"+ s1 +"','"+ s2 +"','"+ p3 +"','"+ s4 +"','"+ s5 +"','"+ s6 +"','"+ tun +"','"+ s7 +"','"+ q3 +"');";
ResultSet rs=stat.executeQuery(str);
        }
        catch(Exception ae)
        {
           
            try 
        {
                System.out.println("ooppsss!!");
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:ac");
String str1="delete * from wait_te where u_name=?";
PreparedStatement ps1=conn.prepareStatement(str1);
ps1.setString(1,tun);
int re=ps1.executeUpdate();
System.out.println("Deleted");
response.sendRedirect("adm_te_hm.jsp");
       
        }
        catch(Exception ae1)
        {
            
        }         
        }
    finally 
        { 
            out.close();
        }
    }
    else
    {
        System.out.println("Else part executed");
    try 
        {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:ac");
String str3="delete * from wait_te where u_name=?";
PreparedStatement ps3=conn.prepareStatement(str3);
ps3.setString(1,tun);
int re3=ps3.executeUpdate();
System.out.println("Deleted111");
System.out.println(re3);
String str4="delete * from te_qno_exam where course=?";
PreparedStatement ps4=conn.prepareStatement(str4);
ps4.setString(1,csm);
int re4=ps4.executeUpdate();
System.out.println("Deleted2222");
response.sendRedirect("adm_te_hm.jsp");
         
        }
        catch(Exception ae1)
        {
        ae1.printStackTrace();    
        }
            
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
