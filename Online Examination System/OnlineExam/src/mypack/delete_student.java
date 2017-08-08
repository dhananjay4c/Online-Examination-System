
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


public class delete_student extends HttpServlet {
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session1=request.getSession();
        String user_acc=(String)session1.getAttribute("user_acc");
     String sessionyr=(String)session1.getAttribute("sessionyr");
     String year=(String)session1.getAttribute("year");
     String branch=(String)session1.getAttribute("branch");
     String semester=(String)session1.getAttribute("semester");
     String roll_no=request.getParameter("roll_no");
        String tab_name=sessionyr+year+branch+semester;
        System.out.println(tab_name);

        try {

            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection conn=DriverManager.getConnection("jdbc:odbc:college");
        Statement stat=conn.createStatement();

        String sql="delete from "+tab_name+" where roll_no='"+roll_no+"' ";
        int exec=stat.executeUpdate(sql);

            session1.setAttribute("sessionyr",sessionyr);
        session1.setAttribute("year",year);
        session1.setAttribute("branch",branch);
        session1.setAttribute("semester",semester);
        session1.setAttribute("user_acc",user_acc);
        System.out.println("deleted");
        RequestDispatcher view=request.getRequestDispatcher("view_studs_class");
           view.forward(request, response);
           return;
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
