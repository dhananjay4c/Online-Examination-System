/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2017-04-29 19:20:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adm_005flog_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link href=\"/bootstrap-3.3.7-dist/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("<link href=\"css/adminLogin.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\tjavascript: window.history.forward(1);\r\n");
      out.write("</script>\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\tfunction check() {\r\n");
      out.write("\t\tvar txtAD;\r\n");
      out.write("\t\tvar tx;\r\n");
      out.write("\t\tvar txt;\r\n");
      out.write("\t\ttxtAD = document.getElementById('t1');\r\n");
      out.write("\t\ttx = document.getElementById('t2');\r\n");
      out.write("\r\n");
      out.write("\t\tif (txtAD.value == '') //if(name.value=='')\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"Enter the User Name\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif (tx.value == '') //if(name.value=='')\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"Enter the Password\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\tfunction fi() {\r\n");
      out.write("\t\tparent.location = 'index.jsp'\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("<title>adminlogin</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#666\" class=\"container\">\r\n");
      out.write("\t<div id=\"loginHeading\">\r\n");
      out.write("\t\t<h1>Admin Login</h1>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"adminLoginDiv\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<form id=\"form1\" name=\"f1\" action=\"adm_log_in\" method=\"POST\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t");

				HttpSession ad = request.getSession();
				String ee = (String) ad.getAttribute("er_ps");
				if (ee == null) {
					ee = "";
				}
			
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t<table>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td><label>User Name</label></td>\r\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" name=\"t1\" class=\"ipt\" id=\"t1\"\r\n");
      out.write("\t\t\t\t\t\tplaceholder=\"Enter user name\" /></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td><label>Password</label></td>\r\n");
      out.write("\t\t\t\t\t<td><input type=\"password\" name=\"t2\" class=\"ipt\" id=\"t2\"\r\n");
      out.write("\t\t\t\t\t\tplaceholder=\"Password\" /></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td></td>\r\n");
      out.write("\t\t\t\t\t<td><input class=\"btn\" type=\"submit\" value=\"Submit\" name=\"b1\"\r\n");
      out.write("\t\t\t\t\t\tonclick=\"return check()\" style=\"font-weight: 700\" /> <input\r\n");
      out.write("\t\t\t\t\t\tclass=\"btn\" type=\"reset\" width=\"40\" value=\"Cancle\" name=\"b2\"\r\n");
      out.write("\t\t\t\t\t\tonclick=\"fi()\" style=\"font-weight: 700\" /></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
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
