/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class verify_account extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
          HttpSession ad=request.getSession();
        String aus=request.getParameter("t1");
        // admin user name
        ad.setAttribute("aus", aus);
        String aps=request.getParameter("t2");
        // admin password
        ad.setAttribute("aps", aps);
        String gg="Wrong Username or Password";
        String user=(String)ad.getAttribute("user");//"registrar";
        String tab_name="";
        String next_page="";
        if(user=="registrar")
        {
            tab_name="registrar_login";
            next_page="reg_home.jsp";
        }
        System.out.println(aus +" "+aps+" "+user );
        try
        {
            Connection conn=null;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
conn=DriverManager.getConnection("jdbc:odbc:college");
Statement stat=conn.createStatement();
String str1="select * from "+tab_name +" where username='"+ aus +"'";
ResultSet rst=stat.executeQuery(str1);
while(rst.next())
{

  String apt=rst.getString("password");
 if(aps.equals(apt))
{
RequestDispatcher view=request.getRequestDispatcher(next_page);
System.out.println("heyyyyy");
view.forward(request,response);
return;
}
}
RequestDispatcher view=request.getRequestDispatcher("reg_login.jsp");
ad.setAttribute("er_ps",gg);
System.out.println("Wrong userrrrr");
view.forward(request,response);
return;

        }
        catch(Exception ae)
        {
        ae.printStackTrace();
        }
            
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
