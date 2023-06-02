package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<!-- Mirrored from dreamguys.co.in/demo/doccure/admin/login.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 30 Nov 2019 04:12:46 GMT -->\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=0\">\n");
      out.write("\t<title>Doccure - Login</title>\n");
      out.write("\n");
      out.write("\t<!-- Favicon -->\n");
      out.write("\t<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/img/logo-icon.png\">\n");
      out.write("\n");
      out.write("\t<!-- Bootstrap CSS -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("\t<!-- Fontawesome CSS -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"assets/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("\t<!-- Main CSS -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("\n");
      out.write("\t<!--[if lt IE 9]>\n");
      out.write("\t\t\t<script src=\"assets/js/html5shiv.min.js\"></script>\n");
      out.write("\t\t\t<script src=\"assets/js/respond.min.js\"></script>\n");
      out.write("\t\t<![endif]-->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\t<!-- Main Wrapper -->\n");
      out.write("\t<div class=\"main-wrapper login-body\">\n");
      out.write("\t\t<div class=\"login-wrapper\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"loginbox\">\n");
      out.write("\t\t\t\t\t<div class=\"login-left\">\n");
      out.write("\t\t\t\t\t\t<img class=\"img-fluid\" src=\"assets/img/logo_admin_login.png\" alt=\"Logo\">\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"login-right\">\n");
      out.write("\t\t\t\t\t\t<div class=\"login-right-wrap\">\n");
      out.write("\t\t\t\t\t\t\t<h1>Login</h1>\n");
      out.write("\t\t\t\t\t\t\t<p class=\"account-subtitle\">Access to our dashboard</p>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<!-- Form -->\n");
      out.write("\t\t\t\t\t\t\t<form action=\"https://dreamguys.co.in/demo/doccure/admin/index.jsp\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" placeholder=\"Email\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"password\" placeholder=\"Password\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<button class=\"btn btn-primary btn-block\" type=\"submit\">Login</button>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t<!-- /Form -->\n");
      out.write("\t\t\t\t\t\t\t<div class=\"text-center dont-have\"><a href=\"../login.jsp\">Back to Clinic</a></div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"text-center dont-have\"><a href=\"../admin/index.jsp\">Go to Manager</a></div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- /Main Wrapper -->\n");
      out.write("\n");
      out.write("\t<!-- jQuery -->\n");
      out.write("\t<script src=\"assets/js/jquery-3.2.1.min.js\"></script>\n");
      out.write("\n");
      out.write("\t<!-- Bootstrap Core JS -->\n");
      out.write("\t<script src=\"assets/js/popper.min.js\"></script>\n");
      out.write("\t<script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("\t<!-- Custom JS -->\n");
      out.write("\t<script src=\"assets/js/script.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("<!-- Mirrored from dreamguys.co.in/demo/doccure/admin/login.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 30 Nov 2019 04:12:46 GMT -->\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
