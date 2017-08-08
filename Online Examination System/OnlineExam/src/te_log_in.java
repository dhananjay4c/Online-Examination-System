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
public class te_log_in extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession se=request.getSession();
        PrintWriter out = response.getWriter();
        String us=request.getParameter("t1");
        //user name
        se.setAttribute("us", us);
        String ps=request.getParameter("t2");
        //password
        se.setAttribute("ps", ps);
        String kk="0";
        String ll="0";
        se.setAttribute("kk", kk);
        se.setAttribute("ll", ll);
        String gg="Wrong Username or Password";
        try {
           Connection conn=null;   
           conn=Dao.getCon();
Statement stat=conn.createStatement();
String str1="select * from reg_teacher where u_name='" + us + "'";
ResultSet rst=stat.executeQuery(str1);
while(rst.next())
{
  String cn=rst.getString("c_adp");
  String pt=rst.getString("password");
 if(ps.equals(pt))
{
   se.setAttribute("cn", cn);  
RequestDispatcher view=request.getRequestDispatcher("te_adm_qset.jsp");
System.out.println("password correct");
view.forward(request,response);
return;
}
}
RequestDispatcher view=request.getRequestDispatcher("te_log.jsp");
se.setAttribute("er_ps", gg);
System.out.println("Wrong userrrrr");
view.forward(request,response);
return;
  
        } 
        catch(Exception ae)
        {}
        
        
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
