/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2017-04-29 20:08:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import Dbean.Dao;

public final class infopage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 int a=0; 
         int b=0;
         int x=1;
         int marks=0;
         String s2;
     
  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"JQuery/jquery-3.2.1.js\">\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\">\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t\t<link href=\"bootstrap-3.3.7-dist/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Online Examination System</title>\r\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\r\n");
      out.write("     ");
      out.write("\r\n");
      out.write("     ");

     try
{
     List numquestions=new LinkedList();    
      List answers=new LinkedList();
    Connection conn=null;
conn=Dao.getCon();
Statement stat=conn.createStatement();
HttpSession st=request.getSession();
String cou=(String)st.getAttribute("cs");
System.out.println("deep singh"+cou);
String g1 = "select q_id from ques_in where c_name='"+cou+"'";
    ResultSet rs = stat.executeQuery(g1);
//for storing d qu num from ques table
                 


while (rs.next())
{
  numquestions.add(rs.getInt(1));
  }
  a=numquestions.size();
   //System.out.println(a);
   
    st.setAttribute("No_of_questions", a);
   st.setAttribute("x", x);
     st.setAttribute("answers",answers);
     st.setAttribute("marks",marks);
      s2=(String)st.getAttribute("cs");
   }
 catch(Exception e)
		{	
                e.printStackTrace();
		}
   
   
      out.write("\r\n");
      out.write("  <body> \r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div id=\"Main\">\r\n");
      out.write("    <form id=\"form1\">\r\n");
      out.write("<div id=\"header-wrapper\">\r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t<div id=\"menu\">\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("                <li class=\"current_page_item\"><br></li><li class=\"current_page_item\"><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("                <li><a href=\"aboutus.jsp\" class=\"first\">About Us</a></li>\r\n");
      out.write("                <li><a href=\"home.jsp\" class=\"first\">Login</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"takeexam.jsp\" class=\"first\">Take Exam</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"previousexams.jsp\">Previous Exam</a></li>\r\n");
      out.write("                <li><a href=\"practiceexam.jsp\">Practice Exam</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"logout.jsp\">Logout</a></li>\r\n");
      out.write("                <li><a href=\"help.jsp\" class=\"first\">Help</a></li>\r\n");
      out.write("                <li><a href=\"contactus.jsp\" class=\"first\">Contact Us</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"logo\">\r\n");
      out.write("\t<p>&nbsp;</p>\r\n");
      out.write("\t<p><img src=\"images/logo1.gif\"/>\r\n");
      out.write("  </p>\r\n");
      out.write("<h1 style=\"margin:-80px 0 0 60px;\">Online Examination System</h1>\r\n");
      out.write("\t<p style=\"margin:0 0 0 70px;\">Excel your potential</p>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<hr />\r\n");
      out.write("<div id=\"page\">\r\n");
      out.write("\t<div id=\"page-bgtop\">\r\n");
      out.write("            <center>\r\n");
      out.write("                        <h2>&nbsp;</h2>\r\n");
      out.write("                        <h2>Start the exam!</h2>\r\n");
      out.write("       <form>  \r\n");
      out.write("  \r\n");
      out.write("   <input class=\"btn btn-info\" type=\"button\" value=\"Start\" onClick=\"javascript:location.href='exam.jsp'\">   \r\n");
      out.write("</form>  \r\n");
      out.write("   <hr>  \r\n");
      out.write(" </center> \r\n");
      out.write("\r\n");
      out.write("\t \r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- end #page -->\r\n");
      out.write("\t<div id=\"footer\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
