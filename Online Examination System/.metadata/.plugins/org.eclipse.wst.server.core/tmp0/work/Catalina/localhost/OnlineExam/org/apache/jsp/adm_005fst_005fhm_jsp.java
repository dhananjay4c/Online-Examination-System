/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2017-04-28 00:47:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adm_005fst_005fhm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("    \r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("\t\t<link href=\"bootstrap-3.3.7-dist/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("        <script language=\"javascript\">\r\n");
      out.write("         javascript:window.history.forward(1);   \r\n");
      out.write("        </script>\r\n");
      out.write("        <script>\r\n");
      out.write("function fi()\r\n");
      out.write("    {\r\n");
      out.write("    parent.location='adm_hm.jsp'\r\n");
      out.write("    }\r\n");
      out.write("</script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body class=\"container\">\r\n");
      out.write("        ");

        HttpSession ad=request.getSession();
        String s1=(String)ad.getAttribute("aus");
        
      out.write("\r\n");
      out.write("        <h3>Login by:");
      out.print( s1 );
      out.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"adm_hm.jsp\">Home</a>&nbsp;\r\n");
      out.write("\t\t<a href=\"adm_logout.jsp\">Logout</a></h3>\r\n");
      out.write("        <hr>\r\n");
      out.write("        <h2 align=\"center\"><font size=\"6\" color=\"#800080\">Student Page </font> </h2>\r\n");
      out.write("<p align=\"center\">&nbsp;</p>\r\n");
      out.write("        <div align=\"center\">\r\n");
      out.write("        <table class=\"\" border=\"1\" cellspacing=\"1\" cellpadding=\"1\" width=100% height=\"224\">\r\n");
      out.write("<thead>\r\n");
      out.write("<tr>\r\n");
      out.write("<th colspan=\"2\" bgcolor=\"#FF9933\"><font color=\"#FFFFFF\">\r\n");
      out.write("<span style=\"font-size: 20pt\">Description</span></font></th>\r\n");
      out.write("</tr>\r\n");
      out.write("</thead>\r\n");
      out.write("<tbody>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\"><b><font size=\"4\">Student Information</font></b></td>\r\n");
      out.write("<td align=\"center\"><b><a href=\"adm_st_info.jsp\"><font size=\"4\">Click here</font></a></b></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\"><b><font size=\"4\">Delete Student</font></b></td>\r\n");
      out.write("<td align=\"center\"><b><a href=\"adm_st_del.jsp\"><font size=\"4\">Click here</font></a></b></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\"><b><font size=\"4\">Student Result</font></b></td>\r\n");
      out.write("<td align=\"center\"><b><a href=\"adm_st_rslt.jsp\"><font size=\"4\">Click here</font></a></b></td>\r\n");
      out.write("</tr>\r\n");
      out.write("</tbody>\r\n");
      out.write("</table>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<p align=\"center\">\r\n");
      out.write("<br>\r\n");
      out.write("    <input class=\"btn btn-link\"  type=\"submit\" value=\"<<Back\" name=\"b1\" onClick=\"fi()\" style=\"font-weight: 700\" />\r\n");
      out.write("        \r\n");
      out.write("    </p>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
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
