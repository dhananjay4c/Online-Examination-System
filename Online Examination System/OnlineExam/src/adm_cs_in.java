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
public class adm_cs_in extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try 
        {        
    Connection conn=null;
    
    String s1=request.getParameter("t1");
    String s2=request.getParameter("t2");
    int i=Integer.parseInt(request.getParameter("t3"));
    int j=Integer.parseInt(request.getParameter("t4"));
    conn=Dao.getCon();
Statement stat=conn.createStatement();
String str="insert into course values('"+ s1 +"','"+ s2 +"','"+ i +"','"+ j +"')";
int ii=stat.executeUpdate(str);
System.out.println("insert course:"+ii);
RequestDispatcher view=request.getRequestDispatcher("adm_hm.jsp");
view.forward(request,response);
}
catch(Exception ae)
{
	
        RequestDispatcher view=request.getRequestDispatcher("adm_hm.jsp");
System.out.println(ae);
view.forward(request,response);
return;    
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet adm_cs_in</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet adm_cs_in at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
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

