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
public class te_no_qs_xm_in extends HttpServlet {
   
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
        // course name
        String c=(String)se.getAttribute("cn");
        // teacher user name
        String c1=(String)se.getAttribute("us");
        int qno=(Integer)se.getAttribute("qq");
        System.out.println("No of question admin entered");
        System.out.println(qno);
        String ss=request.getParameter("t1");
        System.out.println("No of question Teacher entered");
        System.out.println(ss);
        int qn=Integer.parseInt(ss);
        try 
        {
            if(qn<qno)
            {
                System.out.println("You are welcome to enter");
                Connection  con=Dao.getCon();
String str="insert into te_qno_exam(course,qno) values(?,?)";
        PreparedStatement  ps=con.prepareStatement(str);
        ps.setString(1, c);
        ps.setInt(2, qn);
       
        int rst=ps.executeUpdate(); 
        response.sendRedirect("te_hm.jsp");
            }
            else
            {
                String qw="You Cant exceed the limit of"+qno;
                System.out.println("You Cant exceed the limit of"+qno);
                se.setAttribute("err", qw);
                response.sendRedirect("te_no_qs_xm.jsp");
            }
            
            
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
