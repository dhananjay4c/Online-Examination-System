/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2017-04-19 21:03:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import java.sql.Date;

public final class showresult_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n");
      out.write("<HTML>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>Online Examination System</title>\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\r\n");
      out.write("</head>\r\n");
      out.write("  \r\n");

    HttpSession st=request.getSession();
    
    int  b=(Integer)st.getAttribute("No_of_questions");

   /* int q=Integer.parseInt(st.getAttribute("No_of_questions").toString());
    int a=Integer.parseInt(st.getAttribute("answers").toString());
    int m=Integer.parseInt(st.getAttribute("marks").toString());*/

      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"Main\">\r\n");
      out.write("    <form id=\"form1\">\r\n");
      out.write("<div id=\"header-wrapper\">\r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t<div id=\"menu\">\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("               <li class=\"current_page_item\"><a href=\"index.jsp\">Home</a></li>\r\n");
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
      out.write("\t<img src=\"images/logo1.gif\"/>\r\n");
      out.write("\t<h1 style=\"margin:-80px 0 0 60px;\">Online Examination System</h1>\r\n");
      out.write("\t<p style=\"margin:0 0 0 70px;\">Excel your potential</p>\r\n");
      out.write("</div>\r\n");
      out.write("<hr />\r\n");
      out.write("<div id=\"page\">\r\n");
      out.write("\t<div id=\"page-bgtop\">\r\n");
      out.write("\t <h2>\r\n");
      out.write("    Examination Result</h2>\r\n");
      out.write("    &nbsp;\r\n");
      out.write("    <br />\r\n");
      out.write("    <table bgcolor=\"#eeeeee\" border=1>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>\r\n");
      out.write("                Subject:\r\n");
      out.write("            </td>\r\n");
      out.write("            <td>\r\n");
      out.write("            ");
      out.print(st.getAttribute("cs") );
      out.write("\r\n");
      out.write("            <label name=\"lblSubject\" style=\"width:154px; color:red; font-family:Verdana, Arial, Helvetica, sans-serif\" ></label>\r\n");
      out.write("                </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>\r\n");
      out.write("                Starting Time :\r\n");
      out.write("            </td>\r\n");
      out.write("            \r\n");
      out.write("           \r\n");
      out.write("            <td>\r\n");
      out.write("            1 Minute\r\n");
      out.write("            <label name=\"lblStime\" style=\"width:154px; color:red; font-family:Verdana, Arial, Helvetica, sans-serif\" ></label>\r\n");
      out.write("               </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        \r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>\r\n");
      out.write("                Remain Time  :\r\n");
      out.write("            </td>\r\n");
      out.write("            \r\n");
      out.write("            <td>\r\n");
      out.write("            ");

            String mm="Time Up"; 
            mm=(String)st.getAttribute("mins");
             if(mm==null){
             mm="Time Up";
             }
             String ss="Time Up";
             ss=(String)st.getAttribute("secs");
             if(ss==null){
             ss="Time Up";
             }
             
      out.write("\r\n");
      out.write("            ");
      out.print(mm );
      out.write("  Min  ");
      out.print( ss);
      out.write("  Sec\r\n");
      out.write("            \r\n");
      out.write("            <label name=\"lblMin\" style=\"width:154px; color:red; font-family:Verdana, Arial, Helvetica, sans-serif\" ></label>\r\n");
      out.write("             \r\n");
      out.write("                </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        \r\n");
      out.write("                <tr>\r\n");
      out.write("            <td>\r\n");
      out.write("               No. of Questions :\r\n");
      out.write("            </td>\r\n");
      out.write("            <td>\r\n");
      out.write("            ");
      out.print(b );
      out.write("\r\n");
      out.write("            <label name=\"lblNquestions\" style=\"width:154px; color:red; font-family:Verdana, Arial, Helvetica, sans-serif\" ></label>\r\n");
      out.write("           </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        \r\n");
      out.write("                <tr>\r\n");
      out.write("            <td>\r\n");
      out.write("                No. of correct answers : \r\n");
      out.write("            </td>\r\n");
      out.write("            <td>\r\n");
      out.write("            ");
      out.print(st.getAttribute("marks"));
      out.write("\r\n");
      out.write("                <label name=\"lblNcans\" style=\"width::154px; color:red; font-family:Verdana, Arial, Helvetica, sans-serif\" ></label></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>\r\n");
      out.write("                Grade : \r\n");
      out.write("            </td>\r\n");
      out.write("            <td>\r\n");
      out.write("            ");

            int total=b;
            int correct=(Integer)st.getAttribute("marks");
            int grade=correct*100/total;
            String result="";
            if((grade>=45)&&(grade<60)){
            result="B Grade ";
            }else if((grade>=60)&&(grade<75)){
            result="A Grade ";
            }else if(grade>=75){
            result="A Grade with Excelent ";
            }else{
            result="C Grade ";
            }
            
      out.write("\r\n");
      out.write("            ");
      out.print(result );
      out.write("\r\n");
      out.write("               <label name=\"lblGrade\" style=\"width::154px; color:red; font-family:Verdana, Arial, Helvetica, sans-serif\" ></label></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </table>\r\n");
      out.write("    <br />\r\n");
      out.write("    <a  href=\"reviewquestions.jsp\">Review Questions</a>\r\n");
      out.write("    <br />\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- end #page -->\r\n");
      out.write("\t<div id=\"footer\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("    </form>\r\n");
      out.write("    </div>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</HTML>\r\n");
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
