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
public class st_log_in extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
	 String cs="";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession st=request.getSession();
        String stu=request.getParameter("t1");
        out.println(stu);
        // student user name
        st.setAttribute("stu",stu);
       String ps=request.getParameter("t2");
       out.println(ps);
       st.setAttribute("ps",ps);
       //String cs=request.getParameter("d1");
       //out.println(ps);
       
    Connection con= Dao.getCon(); 
    try{
    	PreparedStatement ps1= con.prepareStatement("select * from st_reg where u_name=? and pass=?");
    	ps1.setString(1, stu);
    	ps1.setString(2, ps);
    	ResultSet rs=ps1.executeQuery();
   if(rs.next()){
	  cs=rs.getString("course");
	   st.setAttribute("cs", cs);
	   
   }
    }catch (Exception e) {
		// TODO: handle exception
	}
    //st.setAttribute("cs",cs);
       String i1="0";
       st.setAttribute("i1",i1);
       String l1="0";
       st.setAttribute("l1",l1);
       String p="0";
       st.setAttribute("p",p);
       
       //d1 is for d current date
        java.util.Date d1=new java.util.Date();
        //System.out.println(d1);
       // String sd=String.valueOf(d1);
        //System.out.println("Todays date");
      // System.out.println(sd);
        String apt=null;
        String da=null;
        String un=null;
        String fn=null;
        String dt=null;
        int cd1=0;
       int cd2=0;
       int cd3=0;
       int rd1=0;
       int rd2=0;
       int rd3=0;
        try
        {
            
        Connection conn=null;   
conn=Dao.getCon();
Statement stat=conn.createStatement();
String str1="select * from st_reg where u_name='" + stu + "' and course='"+cs+"'";
ResultSet rst=stat.executeQuery(str1);

while(rst.next())
{
	System.out.println("deep result set after login"+rst);
   apt=rst.getString("pass");
   da=rst.getString("doe");
  un=rst.getString("u_name");
  fn=rst.getString("f_name");
  
  
}
  if(ps.equals(apt)&& stu.equals(un))
{ 
 st.setAttribute("fn",fn);
 st.setAttribute("da",da);
 response.sendRedirect("takeexam.jsp");
java.util.Date d=new java.util.Date(da);  
Boolean b1=!d1.before(d);
Boolean b2=d1.after(d);
System.out.println(b1);
System.out.println(b2);
System.out.println("Current Date");
System.out.println(d1.getDate());
System.out.println(d1.getMonth());
System.out.println(d1.getYear());
System.out.println("From the database");
System.out.println(d.getDate());
System.out.println(d.getMonth());
System.out.println(d.getYear());
cd1=d1.getDate();
cd2=d1.getMonth();
cd3=d1.getYear();
rd1=d.getDate();
rd2=d.getMonth();
rd3=d.getYear();
//if(ps.equals(apt)&& stu.equals(un))
//{ 
 if(cd3==rd3)
 {
 if(cd2==rd2)
 {
 if(cd1==rd1)
     {
     
  System.out.println("You can give ur xam");   
  response.sendRedirect("takeexam.jsp");
     }
 else
 {
     if(d1.before(d))
     {
         String loo="You Have Come Early.Kindly Come On"+rd1+"-"+(cd2+1)+"-"+cd3;
         st.setAttribute("et",loo);
         response.sendRedirect("home.jsp");
     }
 else
     {
     String lo="Your Booking Date had been expired which was on"+rd1+"-"+cd2+"-"+cd3;
         st.setAttribute("et",lo);    
  System.out.println("You have to register again"); 
  response.sendRedirect("home.jsp");
     }
 }
 }
 else
 {
     if(d1.before(d))
 {
 System.out.println("Come on that day******");
 String loo="You Have Come Early.Kindly Come On"+d;
         st.setAttribute("et",loo);
         response.sendRedirect("home.jsp");
 }
 else
 {
         String lo="Your Booking Date had been expired which was on"+d;
         st.setAttribute("et",lo);
  System.out.println("You have to register again@@@@@@"); 
  response.sendRedirect("home.jsp");
 }
 }
 }
 else
 {
     if(d1.before(d))
 {
 System.out.println("Come on that day####");
 String loo="You Have Come Early.Kindly Come On"+d;
         st.setAttribute("et",loo);
         response.sendRedirect("home.jsp");
 }
 else
 {
         String lo="Your Booking Date had been expired which was on"+d;
         st.setAttribute("et",lo);
           System.out.println("You have to register again!!!!!!!"); 
         response.sendRedirect("home.jsp");
  
 }
 }
 }
  else
  {
    String lo="You have not Registered.Please Register";
         st.setAttribute("et",lo);
    System.out.println("AAAEEEOOOOO!!!");
      response.sendRedirect("home.jsp");
  }
      
        
 }
        catch(Exception ae)
        {
         ae.printStackTrace();   
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
