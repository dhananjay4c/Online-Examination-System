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
public class rslt extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession st=request.getSession();
        String stu=(String)st.getAttribute("stu");
        String cou=(String)st.getAttribute("cs");
        String fna=(String)st.getAttribute("fn");
        String dat=(String)st.getAttribute("da");
        String r=null;
        String pj=(String)st.getAttribute("p");
        int p=Integer.parseInt(pj);
        
        int gf=(Integer)st.getAttribute("r");
        try
        {
        out.println("<html>");
            out.println("<head>");
            out.write("        <h3>Login by: ");
      out.print(stu);
      
      out.write("        <hr>\r\n");
            out.println("<title>Servlet c</title>");  
            out.println("</head>");
            out.println("<body>");
            r="pass";
            if(p>gf)
            {
               out.println("<h1>You Have Cleared the Examination"); 
                out.println("<br>");
                 out.println("<br>");
            out.println("<h1>Your Score is " +p + "</h1>");
          
         st.setAttribute("p", p);
         
            }
            else
            {
                out.println("<h1>You Have Not Cleared the Examination"); 
                out.println("<br>");
                 out.println("<br>");
            out.println("<h1>Your Score is " +p + "</h1>");
                //out.println("<h1>Servlet c at " + request.getContextPath () + "</h1>");
             
             st.setAttribute("p", p);
            }
          Connection  con=Dao.getCon();
String str="insert into result(c_name,f_name,doe,marks,result,u_name) values(?,?,?,?,?,?)";
        PreparedStatement  ps=con.prepareStatement(str);
        ps.setString(1, cou);
        ps.setString(2, fna);
        ps.setInt(4, p);
        ps.setString(3, dat);
        ps.setString(5, r);
        ps.setString(6, stu);
        int rst=ps.executeUpdate(); 
        String str1="delete * from st_reg where u_name=?";
PreparedStatement ps2=con.prepareStatement(str1);
ps2.setString(1,stu);
int re=ps2.executeUpdate();
p=0;
            //b.p=0;
            out.println("<form name=f2 action=index.jsp method=POST>");
         out.println("<input type=submit name=b2 value=Thank You>");
         out.println("</form>");
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception ae){ae.printStackTrace();}
        
    
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
