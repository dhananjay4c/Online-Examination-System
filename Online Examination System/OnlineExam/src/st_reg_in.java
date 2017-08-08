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
public class st_reg_in extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String s1=request.getParameter("t1");//fname
        String s2=request.getParameter("t2");//lname
        String s3=request.getParameter("t3");//fatname
        String s4=request.getParameter("t4");//phone
        String s5=request.getParameter("t5");//address
        
        String s6=request.getParameter("t9");//email
        String s7=request.getParameter("d1");//course
        String s8=request.getParameter("datum1");//date
       /* java.util.Date d=new java.util.Date(s8);
        java.util.Date d1=new java.util.Date();*/
        String s9=request.getParameter("t6");//loginid
        String s10=request.getParameter("t7");//password
        try
        {
        
            Connection conn=null;   
            conn=Dao.getCon();
            Statement stat=conn.createStatement();
            String str="insert into st_reg values('"+ s1 +"','"+ s2 +"','"+ s3 +"','"+ s4 +"','"+ s5 +"','"+ s6 +"','"+ s8 +"','"+ s7 +"','"+ s9 +"','"+ s10 +"')";
            stat.executeUpdate(str);
            conn.close();
            response.sendRedirect("home.jsp");
        }
        catch(Exception ae)
        {
            
           out.println(ae.toString());
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
