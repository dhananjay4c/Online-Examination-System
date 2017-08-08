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
public class te_md_no_qs_xm_in extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession se=request.getSession();
        // course name
        String c=(String)se.getAttribute("cn");
        // teacher user name
        String c1=(String)se.getAttribute("us");
        //min question
        int qnum=(Integer)se.getAttribute("qq");
        //max question
        int ma_qnum=(Integer)se.getAttribute("ma_q");
        // new modified value bu user entered
        String qu=request.getParameter("t1");
        int iq=Integer.parseInt(qu);
        System.out.println(iq);
        try 
        {
            if(iq>qnum&&iq<ma_qnum)
            {
          Connection conn=null;
          conn=Dao.getCon();
String str1="update te_qno_exam set qno=? where course=?";
PreparedStatement ps=conn.prepareStatement(str1);
ps.setInt(1,iq);
ps.setString(2,c);
int re=ps.executeUpdate();
System.out.println(re);
String str2="update reg_teacher set no_ques=? where c_adp=?";
PreparedStatement ps1=conn.prepareStatement(str2);
ps1.setInt(1,iq);
ps1.setString(2,c);
int re1=ps1.executeUpdate();
response.sendRedirect("te_hm.jsp");          

        }
            else
            {
            String qw="You question limit should be ion between"+qnum+"&"+ma_qnum;
                System.out.println("You question limit should be ion between"+qnum+"&"+ma_qnum);
                se.setAttribute("eo", qw);
                response.sendRedirect("te_md_no_qs_xm.jsp");
            }
        }
        catch(Exception ae)
           {
             ae.printStackTrace();  
           }
        finally
        { 
            out.close();
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
