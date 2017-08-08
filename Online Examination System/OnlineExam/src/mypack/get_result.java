/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class get_result extends HttpServlet {
   
    String tab_name;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String a=request.getParameter("batch");
        String roll_no=request.getParameter("roll_no");
        String branch=request.getParameter("branch");
        String firstpartstr=a.substring(0,4);
        int firstpartint=Integer.parseInt(firstpartstr);
        int secondpartint=1;
        int semester=1;
        try {

             Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:college");
Statement stat=conn.createStatement();

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet get_result</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<table>");
            for(int i=0;i<4;i++)
            {
                for(int x=0;x<2;x++)
                {
            firstpartstr=String.valueOf(firstpartint+i);
            String secondpartstr=String.valueOf(secondpartint+i);
            tab_name=firstpartstr+secondpartstr+branch+semester;
            String us="select * from "+tab_name+" where Roll_no='"+roll_no+"'";
            System.out.println(tab_name + roll_no);
            ResultSet rs=stat.executeQuery(us);
            out.println("<tr>");
            if(rs.next()!= false)
            out.println("<td>"+rs.getString("name") +"</td>");
            out.println("</tr>");
                }
            }
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
            
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
