
package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class view_studs_class extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session1=request.getSession();
        String sessionyr=request.getParameter("sessionyr");
        String user_acc=(String)session1.getAttribute("user_acc");
        String year=request.getParameter("year");
        String branch=request.getParameter("branch");
        String semester=request.getParameter("semester");
        if(sessionyr!=null)
        {
        user_acc=(String)session1.getAttribute("user_acc");
        year=request.getParameter("year");
        branch=request.getParameter("branch");
        semester=request.getParameter("semester");
        }else
        {
        sessionyr=(String)session1.getAttribute("sessionyr");
        year=(String)session1.getAttribute("year");
        branch=(String)session1.getAttribute("branch");
        semester=(String)session1.getAttribute("semester");
        }
        session1.setAttribute("sessionyr",sessionyr);
        session1.setAttribute("year",year);
        session1.setAttribute("branch",branch);
        session1.setAttribute("semester",semester);
        session1.setAttribute("user_acc",user_acc);
        String tab_name=sessionyr+year+branch+semester;
        System.out.println(tab_name);

        try {
                  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection conn=DriverManager.getConnection("jdbc:odbc:college");
        Statement stat=conn.createStatement();

        String sql="select * from "+tab_name;
        ResultSet rs=stat.executeQuery(sql);
        System.out.print("working.." + rs.toString());
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet view_studs_class</title>");
            out.println("<script language='javascript'>");
            out.println("function deletestud()");
            out.println("{");
            out.println("document.myform.action='delete_student';");
            out.println("}");
            out.println("function refreshpage()");
            out.println("{");
            out.println("location.reload(true);");
            out.println("}");
            out.println("</script>");
            out.println("</head>");
            out.println("<body>");
            out.println("<center><h1>LIST OF STUDENTS OF "+tab_name+"</h1>");
            out.println("<br>");
            out.println("<form name='myform' action='view_stud_repo_info.jsp' method='POST'>");
            out.println("<table border=0 cellspacing=10>");
            out.println("<tr>");
            out.println("<th>Roll Number</th>");
            out.println("<th>Name</th>");
            out.println("</tr>");
            while(rs.next())
            {
            out.println("<tr>");
            String roll=rs.getString("roll_no");
            //out.println("<td>"+rs.getString("roll_no")+"</td>");
            out.println("<td><input type='radio' name='roll_no' value='"+roll+"'>"+roll+"</td>");
            out.println("<td>"+rs.getString("name")+"</td>");
            out.println("</tr>");
            }
            out.println("</table>");
            out.println("<input type='submit' value='submit' />");
            out.println("<input type='submit' value='Delete Student' onclick='deletestud()' />");
            out.println("<input type='button' value='Refresh' onclick='refreshpage();'>");
            out.println("</form>");
            out.println("</center>");
            out.println("</body>");
            out.println("</html>");
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
