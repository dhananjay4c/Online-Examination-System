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
 * @author dhananjay
 */
public class adm_log_in extends HttpServlet {
   
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
        String aus=request.getParameter("t1");
        // admin user name
        ad.setAttribute("aus", aus);
        String aps=request.getParameter("t2");
        // admin password
        ad.setAttribute("aps", aps);
        String gg="Wrong Username or Password";
        try 
        {
            Connection conn=null;   
            conn=Dao.getCon();
Statement stat=conn.createStatement();
String str1="select * from adm_reg where u_name='" + aus + "'";
ResultSet rst=stat.executeQuery(str1);
while(rst.next())
{
  
  String apt=rst.getString("password");
 if(aps.equals(apt))
{   
RequestDispatcher view=request.getRequestDispatcher("adm_hm.jsp");
System.out.println("heyyyyy");
view.forward(request,response);
return;
}
}
RequestDispatcher view=request.getRequestDispatcher("adm_log.jsp");
ad.setAttribute("er_ps",gg);
System.out.println("Wrong userrrrr");
view.forward(request,response);
return;
  
        }
        catch(Exception ae)
        {
            
        }


            
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet adm_log_in</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet adm_log_in at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
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
