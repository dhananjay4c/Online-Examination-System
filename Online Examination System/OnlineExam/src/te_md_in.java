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
public class te_md_in extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession se=request.getSession();
        String s1=(String)se.getAttribute("cn");
        String qs=request.getParameter("t2");
        String c1=request.getParameter("t3");
        String c2=request.getParameter("t4");
        String c3=request.getParameter("t5");
        String c4=request.getParameter("t6");
        String q=request.getParameter("t8");
        int qd=Integer.parseInt(q);
        String an=request.getParameter("t7");
        System.out.println("Answer===");
        System.out.println(an);
        System.out.println(s1);
        
        try
        {
Connection conn=null;
conn=Dao.getCon();
String str1="update ques_in set question=?,choice1=?,choice2=?,choice3=?,choice4=?,ans=? where c_name=? and q_id=?";
PreparedStatement ps=conn.prepareStatement(str1);
ps.setString(1,qs);
ps.setString(2,c1);
ps.setString(3,c2);
ps.setString(4,c3);
ps.setString(5,c4);
ps.setString(6,an);
ps.setString(7,s1);
ps.setInt(8,qd);
int re=ps.executeUpdate();
System.out.println(re);
System.out.println("1 updated");
response.sendRedirect("te_md.jsp");    
       }
        catch(Exception ae)
        {
        ae.printStackTrace();
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
