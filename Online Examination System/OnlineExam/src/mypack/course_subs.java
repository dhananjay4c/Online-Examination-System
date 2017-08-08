
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

public class course_subs extends HttpServlet {
   
   // String sub_loop="";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        HttpSession session=request.getSession();
        String branch=(String)session.getAttribute("branch");
        String semester=(String)session.getAttribute("semester");
        System.out.println(branch);
        System.out.println(semester);
        String[] textbox=request.getParameterValues("inputbox[]");
        
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:college");
Statement stat=conn.createStatement();

for(int i=0;i<textbox.length;i++)
        {
        System.out.println(textbox[i]);
        String us="insert into "+branch+" " +
                "values( '"+textbox[i]+"','"+semester+"')";
        //sub_loop=sub_loop+textbox[i];
        boolean b=stat.execute(us);
        }
        //System.out.println(sub_loop);

           RequestDispatcher view=request.getRequestDispatcher("done.jsp");
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
