

// This page creates a new table for a branch in the database.

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


public class reg_newsession extends HttpServlet {
   
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session1=request.getSession();
        String regsession=(String)session1.getAttribute("regsession");

       // String session=request.getParameter("session");
        String year=request.getParameter("year");
        String branch=request.getParameter("branch");
        String semester=request.getParameter("semester");

        

        String tab_name=regsession+year+branch+semester;
        System.out.println(tab_name);
        try {
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:college");
Statement stat=conn.createStatement();

String[] tests={"pt1","pt2","pt3","sess1","sess2","ext"};

String sql="select * from "+branch+" where semester='"+semester+"'";
        //'"+semester+"'
        ResultSet rs=stat.executeQuery(sql);
        String sql_stat="";
              while(rs.next())
                  {
                    String sub=rs.getString("subject");
                    for(int i=0;i<tests.length;i++)
                   {
                    sql_stat=sql_stat + sub +  tests[i] +" varchar(20)," ;
                   }
                  }
        int len=sql_stat.length();
         sql_stat=sql_stat.substring(0, len-1);
System.out.println(sql_stat);
  // 


String us="create table "+tab_name+" " +
                "(Enrollment_no varchar(32) UNIQUE, " +
                "Roll_no varchar(50) UNIQUE, " +
                "name varchar(50)," + sql_stat + ")";


System.out.println(us);
boolean i=stat.execute(us);
           RequestDispatcher view=request.getRequestDispatcher("reg_manag_sess.jsp");
           view.forward(request, response);
           return;
        }
        catch(Exception ob)
        {
         ob.printStackTrace();
         RequestDispatcher view=request.getRequestDispatcher("reg_new_session_info.jsp");
session1.setAttribute("taberr","Table already exists");
session1.setAttribute("regsession",regsession);

view.forward(request,response);
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
