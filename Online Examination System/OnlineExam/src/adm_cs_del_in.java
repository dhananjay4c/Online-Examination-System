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
public class adm_cs_del_in extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       String d=request.getParameter("d1");
       System.out.println(d);
        try 
        {
        	Connection conn=Dao.getCon();
String str1="delete * from course where c_name=?";
String str2="delete * from ques_in where c_name=?";
String str3="delete * from reg_teacher where c_adp=?";
PreparedStatement ps1=conn.prepareStatement(str1);
PreparedStatement ps2=conn.prepareStatement(str2);
PreparedStatement ps3=conn.prepareStatement(str3);
ps1.setString(1,d);
int re=ps1.executeUpdate();
ps2.setString(1,d);
int r=ps2.executeUpdate();
ps3.setString(1,d);
int r1=ps3.executeUpdate();
response.sendRedirect("adm_hm.jsp");
System.out.println("YUPP yooo!!!");
        }
        catch(Exception ae)
        {
        
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
