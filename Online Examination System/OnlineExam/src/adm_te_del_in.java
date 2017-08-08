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
public class adm_te_del_in extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String usna=request.getParameter("g1");
        //String crse=request.getParameter("t5");
        //HttpSession ad=request.getSession();
        //String v1=(String)ad.getAttribute("crse");
       // System.out.println("course name!!::"+crse);
        try 
        {
            System.out.println(usna);
            Connection  conn=Dao.getCon();
String str1="delete * from reg_teacher where u_name=?";
PreparedStatement ps1=conn.prepareStatement(str1);
ps1.setString(1,usna);
int re=ps1.executeUpdate();
System.out.println("!!!Deletediii");
System.out.println(re);
String str2="delete * from te_qno_exam where course=?";
PreparedStatement ps2=conn.prepareStatement(str2);
//work  out on dis...
//ps2.setString(1,crse);
System.out.println("DeletedOOO!!");
int re1=ps2.executeUpdate();
response.sendRedirect("adm_te_hm.jsp");
         
        }
        catch(Exception ae)
        {
            
        }
        finally
        { 
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
