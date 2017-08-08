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

/**
 *
 * @author Arvind
 */
public class add_stud_class extends HttpServlet {
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session1=request.getSession();
        String regsession=(String)session1.getAttribute("regsession");
        String name=request.getParameter("name");
        String enrol_no=request.getParameter("enrol_no");
        String roll_no=request.getParameter("roll_no");
        String year=request.getParameter("year");
        String branch=request.getParameter("branch");
        String semester=request.getParameter("semester");

        String tab_name=regsession+year+branch+semester;
        System.out.println(tab_name);

        try {
                  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection conn=DriverManager.getConnection("jdbc:odbc:college");
        Statement stat=conn.createStatement();

           String sql="insert into "+ tab_name +"(Enrollment_no,Roll_no,name) values ('"+enrol_no+"','"+roll_no+"','"+name+"')";
            System.out.println(sql);

            int a=stat.executeUpdate(sql);

            RequestDispatcher view=request.getRequestDispatcher("reg_manag_sess.jsp");
           view.forward(request, response);
           return;
          /*
           String sql1="Select * from "+tab_name+" where Roll_no='0623110001'";
          ResultSet rs=stat.executeQuery(sql1);
          while(rs.next())
          {
          String val=rs.getString("apt1");
          System.out.println(val);
          }
           */
          }
        catch(Exception ob)
        {
        ob.printStackTrace();
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
