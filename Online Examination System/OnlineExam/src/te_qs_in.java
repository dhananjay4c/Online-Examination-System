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
public class te_qs_in extends HttpServlet {
  public static int i=0;
 
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
          
       System.out.println("ques entd");
          HttpSession se = request.getSession();
            String u1=(String)se.getAttribute("u");
            int s=Integer.parseInt(u1);
             System.out.println(s);
             System.out.println("value of i"+i);
        try 
        {         
            if(i<s)
            {
            String a7=request.getParameter("t0");
            String a1=request.getParameter("t1");
            String a2=request.getParameter("t2");
            String a3=request.getParameter("t3");
            String a4=request.getParameter("t4");
            String a5=request.getParameter("t5");
            String a6=request.getParameter("t6");
            String a0 = (String) se.getAttribute("cn");
          Connection  con=Dao.getCon();
String str="insert into ques_in(c_name,q_id,question,choice1,choice2,choice3,choice4,ans) values(?,?,?,?,?,?,?,?)";
        PreparedStatement  ps=con.prepareStatement(str);
        ps.setString(1, a0);
        ps.setString(2, a7);
        ps.setString(3, a1);
        ps.setString(4, a2);
        ps.setString(5, a3);
        ps.setString(6, a4);
        ps.setString(7, a5);
        ps.setString(8, a6);
        int rst=ps.executeUpdate();
        i++;
        if(i<s)
        {
        response.sendRedirect("te_qs.jsp");
        }
        else
        {
        i=0;
                RequestDispatcher rd=request.getRequestDispatcher("te_hm.jsp");
                rd.forward(request, response);
                return;
        }
             }
            else
            {   
                i=0;
                RequestDispatcher rd=request.getRequestDispatcher("te_hm.jsp");
                rd.forward(request, response);
                return;
            }
            } 
            catch (Exception ae) 
            {
                System.out.println("ooopss error");
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
