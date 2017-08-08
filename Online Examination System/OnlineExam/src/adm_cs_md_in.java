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
public class adm_cs_md_in extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        // min no of ques
        String qu1=request.getParameter("t4");
        // max no of ques
        String qu2=request.getParameter("t6");
        // course name
        String cn=request.getParameter("t2");
        try 
           {
          Connection conn=null;
          conn=Dao.getCon();
String str1="update course set ques_disp=?,max_q=? where c_name=?";
PreparedStatement ps=conn.prepareStatement(str1);
ps.setString(1,qu1);
ps.setString(2,qu2);
ps.setString(3,cn);
int re=ps.executeUpdate();
System.out.println(re);
response.sendRedirect("adm_hm.jsp");        
         }
           catch(Exception ae)
           {
             ae.printStackTrace();  
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
