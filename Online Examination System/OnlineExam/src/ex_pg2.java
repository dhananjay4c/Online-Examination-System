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
public class ex_pg2 extends HttpServlet {
   static int k=0;
   String sol1[]=new String[100];
  
   public static int p=0;
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
        //String sol[]=(String)request.getAttribute("sol");
        String stu=(String)st.getAttribute("stu");
        String cou=(String)st.getAttribute("cs");
        String ij=(String)st.getAttribute("l1");
        
        int l1=Integer.parseInt(ij);
        String pj=(String)st.getAttribute("p");
        p=Integer.parseInt(pj);
        int qno=(Integer)st.getAttribute("q");
        Connection conn=null;
        String s1=request.getParameter("rg");
        System.out.println(s1+"::::"+stu);
        String Statement="";
        try
        {
       out.println("<html>");
            out.println("<head>");
              out.write("<h3>Login by: ");
      out.print(stu);
      
      out.write(" <hr>\r\n");
            out.println("</head>");
            out.println("<body>");
            out.println("<form name=f2 action=rslt method=POST>");
            out.println("<h1>");
            out.println("<label>To check the result...</label>");
            out.println("</h1>");
            out.println("<br>");
            out.println("<br>");
            out.println("<br>");
            out.println("<br>");
            out.println("<input type=submit name=b2 value=Result>");
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
            int q[]=new int[100];
            conn=Dao.getCon();
                exam_pg.sol[l1]=s1;
                st.setAttribute("sol", exam_pg.sol[l1]);
              
                        
                 System.out.println("answer you entered by user name:"+stu);
                 
                for(int j=1;j<(qno+1);j++)
                {
                 System.out.println(exam_pg.sol[j]);
                }
                  
                 
               
                Statement="select ans from ques_in where c_name='"+cou+"';";
            Statement stat=conn.createStatement();	
           ResultSet rs1=stat.executeQuery(Statement);
            
            //This is the entry point of getting the answers from data base.
            
                 while(rs1.next())
                 {
                 sol1[k]=rs1.getString("ans");
                 k++;
                 }
            System.out.println("Answer from the database");
                for(int j=0;j<qno;j++)
                {
                System.out.println("question no"+j);
                System.out.println(sol1[j]);
                }
                for(int i=0;i<qno;i++)
                {
            // if(sol1[i].equals(ser.sol[i+1]))
                 if(exam_pg.sol[i+1].equals(exam_pg.sol2[i]))
                        {
                          p++; 
                          String gf=Integer.toString(p);
                          st.setAttribute("p", gf);
                        }
                        System.out.println(p);
                        exam_pg.i1=0;
                        exam_pg.l1=0;
                }
        } 
 catch(Exception e)
		{	
                e.printStackTrace();
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
