/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.*;
import java.net.*;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;

import Dbean.Dao;

/**
 *
 * @author ARVIND
 */
public class ex_q_val extends HttpServlet {
   
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
         int a=0; 
         int b=0;
         int x=1;
         int marks=0;
         String s2;
     List answers=new LinkedList();
   a=(Integer)st.getAttribute("No_of_questions");
   x=(Integer)st.getAttribute("x");
     answers=(LinkedList)st.getAttribute("answers");
     marks=(Integer)st.getAttribute("marks");
      s2=(String)st.getAttribute("cs");
      st.setAttribute("No_of_questions", a);
   st.setAttribute("x", x);
     st.setAttribute("answers",answers);
     st.setAttribute("marks",marks);
        int j[]=new int[100];
        int q=0;
        int r=0;
        int f=0;
        int max=0;
        int min=0;
            try
           {
               Connection  conn=Dao.getCon();
                Statement stat = conn.createStatement();
                String g = "select count(q_id) from ques_in where c_name='"+cou+"'";            
                ResultSet rs = stat.executeQuery(g);
                while (rs.next())
                    {
                   j[0]=rs.getInt(1);
    System.out.println("total no of question in database");
    System.out.println("count");
    System.out.println(j[0]);
    q=j[0];
    r=(q/2);
    st.setAttribute("q",q);
    st.setAttribute("r",r);
                   }  
    String g1="select * from reg_teacher where c_adp='"+cou+"' ";
    ResultSet rs1 = stat.executeQuery(g1);
    while (rs1.next())
         {
        f=rs1.getInt("no_ques");
         }
     st.setAttribute("ff",f);
     System.out.println("total no of question in teacher");
      System.out.println(f);
      String sgr="select * from course where c_name='"+cou+"'"; 
     ResultSet rs2 = stat.executeQuery(sgr); 
    while (rs2.next())
         {
        min=rs2.getInt("ques_disp");
        max=rs2.getInt("max_q");
         }
      //q is d total qu in question db
      //f is no of qu in teacher db
      if(q>=f)
      {
          if(q>min&&q<max)
            {
               System.out.println("Go On");
    response.sendRedirect("exam.jsp");
          }
         
      }
      else
      {
          System.out.println("Insert more question");
          response.sendRedirect("error.jsp");  }
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
