
package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class add_teacher extends HttpServlet {
   
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String tea_id=request.getParameter("tea_id");
        String name=request.getParameter("name");
        String dob=request.getParameter("dob");
        String fath_name=request.getParameter("fath_name");
        String pres_add=request.getParameter("pres_add");
        String perm_add=request.getParameter("perm_add");
        String ph_res=request.getParameter("ph_res");
        String ph_cell=request.getParameter("ph_cell");
        String dt_of_join=request.getParameter("dt_of_join");
        String subject=request.getParameter("subject");
        String classes=request.getParameter("classes");
        String salary=request.getParameter("salary");
        
        try {

            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection conn=DriverManager.getConnection("jdbc:odbc:college");
        Statement stat=conn.createStatement();

           String sql="insert into teacher_info(tea_id,name,dob,father_name,present_add,perm_add,phone_res,phone_cell,dt_of_join,subject,classes,salary) values ('"+tea_id+"','"+name+"','"+dob+"','"+fath_name+"','"+pres_add+"','"+perm_add+"','"+ph_res+"','"+ph_cell+"','"+dt_of_join+"','"+subject+"','"+classes+"','"+salary+"')";
            System.out.println(sql);

            int a=stat.executeUpdate(sql);

            RequestDispatcher view=request.getRequestDispatcher("reg_teacher.jsp");
           view.forward(request, response);
           return;

        } catch(Exception ob)
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
