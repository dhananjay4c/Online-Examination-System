/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2017-04-29 19:50:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"JQuery/jquery-3.2.1.js\">\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\">\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<link href=\"bootstrap-3.3.7-dist/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>Online Examination System</title>\r\n");
      out.write(" <script language=\"javascript\">\r\n");
      out.write("function check()\r\n");
      out.write("{\r\n");
      out.write("var txtAD;\r\n");
      out.write("var tx;\r\n");
      out.write("var txt;\r\n");
      out.write("txtAD = document.getElementById('t1');\r\n");
      out.write("tx = document.getElementById('t2');\r\n");
      out.write("\r\n");
      out.write("if (txtAD.value == '') //if(name.value=='')\r\n");
      out.write("{\r\n");
      out.write("alert(\"Enter the User Name\");\r\n");
      out.write("return false;\r\n");
      out.write("}\r\n");
      out.write("if (tx.value == '') //if(name.value=='')\r\n");
      out.write("{\r\n");
      out.write("alert(\"Enter the Password\");\r\n");
      out.write("return false;\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<script>\r\n");
      out.write("function fi()\r\n");
      out.write("    {\r\n");
      out.write("    parent.location='index.jsp'\r\n");
      out.write("    }\r\n");
      out.write("</script>  \r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("     ");
 
        HttpSession st=request.getSession();
        String s22=(String)st.getAttribute("et");
        if(s22==null)
            {
            s22="";
        }
        
      out.write("\r\n");
      out.write("<div id=\"Main\">\r\n");
      out.write("<form id=\"form1\" name=\"f1\" action=\"st_log_in\" method=\"post\">\r\n");
      out.write("<div id=\"header-wrapper\"  style=\"background-color:#000000;\">\r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t<div id=\"menu\">\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("                <li class=\"current_page_item\"><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("                \r\n");
      out.write("                <li><a href=\"aboutus.jsp\" class=\"first\">About Us</a></li>\r\n");
      out.write("                <li><a href=\"home.jsp\" class=\"first\">Login</a></li>\r\n");
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
      out.write("\t\r\n");
      out.write("<table style=\"width: 1195px; height: 161px\">\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td colspan=\"1\" rowspan=\"2\" style=\"width: 311px; height: 212px;\">\r\n");
      out.write("                <table height=\"207\" style=\"width: 421px; height: 180px\">\r\n");
      out.write("        <tr>\r\n");
      out.write("                        <td style=\"width: 311px; height: 3px\">\r\n");
      out.write("                        <label style=\"width:414px; background-color:#FFFFFF; font-size:larger; color:#000000; font-size:20px;\"></label>\r\n");
      out.write("              \r\n");
      out.write("              \r\n");
      out.write("                        <p>&nbsp;</p><br />\r\n");
      out.write("                  <p><img src=\"images/images (1).jpg\" width=\"382\" />               </p></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </table>\r\n");
      out.write("            </td>\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            <td colspan=\"3\" style=\"height: 104px\">\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("                <br />\r\n");
      out.write("                <br />\r\n");
      out.write("                <br />\r\n");
      out.write("            \r\n");
      out.write("            <fieldset style=\"width: 381px; height: 170px\">\r\n");
      out.write("            <table style=\"width: 381px; height: 51px\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td colspan=\"3\" style=\"height: 20px; background-color: #C0C0FF;\">\r\n");
      out.write("                    <label style=\"background-color:#C0C0FF;  border-color:#FFFFFF; width:374px;\" ><strong>Login to give exam</strong></label>\r\n");
      out.write("               </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("            <td style=\"width: 100px; height: 10px;\">\r\n");
      out.write("            <label>User Id</label>              </td>\r\n");
      out.write("            <td style=\"width: 139px; height: 10px;\">\r\n");
      out.write("            <input name=\"t1\" type=\"text\" id=\"t1\" placeholder=\"User Id\" maxlength=\"30\" /></td>\r\n");
      out.write("            <td style=\"width: 90px; height: 10px;\">                </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("            <td style=\"width: 100px; height: 10px;\">\r\n");
      out.write("                <Label>Password</Label></td>\r\n");
      out.write("            <td style=\"width: 139px; height: 10px;\">\r\n");
      out.write("               <input name=\"t2\" type=\"password\" id=\"t2\" maxlength=\"30\" /></td>\r\n");
      out.write("            <td style=\"width: 90px; height: 10px;\">               </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("            <td style=\"width: 100px; height: 10px;\">\r\n");
      out.write("               \r\n");
      out.write("               \r\n");
      out.write("                <tr>\r\n");
      out.write("            <td style=\"width: 100px\">            </td>\r\n");
      out.write("            <td style=\"width: 139px\">\r\n");
      out.write("                <a href=\"ChangePassword.jsp\">Change Password</a></td>\r\n");
      out.write("            <td style=\"width: 90px\">\r\n");
      out.write("               <input class=\"btn btn-success\" name=\"btnLogin\" type=\"submit\" id=\"btnLogin\" value=\"Login\"/></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("            <td style=\"width: 100px\">            </td>\r\n");
      out.write("            <td style=\"width: 139px\">\r\n");
      out.write("                <a href=\"sign_up.jsp\">Not a member yet?</a></td>\r\n");
      out.write("            <td style=\"width: 90px\">\r\n");
      out.write("               </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td background=\"red\" colspan=\"3\" style=\"width: 100px\">\r\n");
      out.write("                  \r\n");
      out.write("                  ");

				  		if(session.getAttribute("et")!=null)
						  out.println(session.getAttribute("et"));
				  
      out.write("\r\n");
      out.write("                  \r\n");
      out.write("                  </td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td colspan=\"3\" style=\"width: 100px\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td colspan=\"3\" style=\"width: 100px\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td colspan=\"3\" style=\"width: 100px\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("            </fieldset>\r\n");
      out.write("            \r\n");
      out.write("            </td>\r\n");
      out.write("            <td colspan=\"1\" style=\"height: 104px\">\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        </div>\r\n");
      out.write("\t<!-- end #page -->\r\n");
      out.write("\t<div id=\"footer\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("    </form>\r\n");
      out.write("    </div>\r\n");
      out.write("</body>\r\n");
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
