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
public class te_ch_ps_in extends HttpServlet {
   
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
        String olp=request.getParameter("t2");
        String op=(String)se.getAttribute("ps");
        String na=(String)se.getAttribute("us");
        String np=request.getParameter("t3");
        try {
            if(olp.equals(op))
        {
            System.out.println("Its Correct");
            Connection conn=null;
            conn=Dao.getCon();
String str1="update reg_teacher set password=? where u_name=?";
PreparedStatement ps=conn.prepareStatement(str1);
ps.setString(1,np);
ps.setString(2,na);
int re=ps.executeUpdate();
System.out.println(re);
response.sendRedirect("te_hm.jsp");      
        }
        else
        {
                String gg="Old Password does not match";
                se.setAttribute("olp",gg);
                response.sendRedirect("te_ch_ps.jsp");
        System.out.println("Not Correct");
        }
            
            
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet te_ch_ps_in</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet te_ch_ps_in at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        } 
        catch(Exception ae){}
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
