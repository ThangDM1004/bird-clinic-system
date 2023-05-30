package org.apache.jsp;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<!-- doccure/login.html  30 Nov 2019 04:12:20 GMT -->\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<title>Doccure</title>\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=0\">\n");
      out.write("\n");
      out.write("\t<!-- Favicons -->\n");
      out.write("\t<link href=\"assets/img/favicon.png\" rel=\"icon\">\n");
      out.write("\n");
      out.write("\t<!-- Bootstrap CSS -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("\t<!-- Fontawesome CSS -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"assets/plugins/fontawesome/css/fontawesome.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"assets/plugins/fontawesome/css/all.min.css\">\n");
      out.write("\n");
      out.write("\t<!-- Main CSS -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("\n");
      out.write("\t<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("\t<!--[if lt IE 9]>\n");
      out.write("\t\t\t<script src=\"assets/js/html5shiv.min.js\"></script>\n");
      out.write("\t\t\t<script src=\"assets/js/respond.min.js\"></script>\n");
      out.write("\t\t<![endif]-->\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"account-page\">\n");
      out.write("\n");
      out.write("\t<!-- Main Wrapper -->\n");
      out.write("\t<div class=\"main-wrapper\">\n");
      out.write("\n");
      out.write("\t\t<!-- Header -->\n");
      out.write("\t\t<header class=\"header\">\n");
      out.write("\t\t\t<nav class=\"navbar navbar-expand-lg header-nav\">\n");
      out.write("\t\t\t\t<div class=\"navbar-header\">\n");
      out.write("\t\t\t\t\t<a id=\"mobile_btn\" href=\"javascript:void(0);\">\n");
      out.write("\t\t\t\t\t\t<span class=\"bar-icon\">\n");
      out.write("\t\t\t\t\t\t\t<span></span>\n");
      out.write("\t\t\t\t\t\t\t<span></span>\n");
      out.write("\t\t\t\t\t\t\t<span></span>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t<a href=\"index-2.html\" class=\"navbar-brand logo\">\n");
      out.write("\t\t\t\t\t\t<img style=\"object-fit: fill;\" src=\"assets/img/final_logo.png\" class=\"img-fluid\" alt=\"Logo\">\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"main-menu-wrapper\">\n");
      out.write("\t\t\t\t\t<div class=\"menu-header\">\n");
      out.write("\t\t\t\t\t\t<a href=\"index-2.html\" class=\"menu-logo\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"assets/img/final_logo.png\" class=\"img-fluid\" alt=\"Logo\">\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t<a id=\"menu_close\" class=\"menu-close\" href=\"javascript:void(0);\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fas fa-times\"></i>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<ul class=\"main-nav\">\n");
      out.write("\t\t\t\t\t\t<li class=\"active\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"index-2.html\">Home</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li class=\"has-submenu\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">Doctors <i class=\"fas fa-chevron-down\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"submenu\">\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"doctor-dashboard.html\">Doctor Dashboard</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"appointments.html\">Appointments</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"schedule-timings.html\">Schedule Timing</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"my-patients.html\">Patients List</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"patient-profile.html\">Patients Profile</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"chat-doctor.html\">Chat</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"invoices.html\">Invoices</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"doctor-profile-settings.html\">Profile Settings</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"reviews.html\">Reviews</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"doctor-register.html\">Doctor Register</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li class=\"has-submenu\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">Patients <i class=\"fas fa-chevron-down\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"submenu\">\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"search.html\">Search Doctor</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"doctor-profile.html\">Doctor Profile</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"booking.html\">Booking</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"checkout.html\">Checkout</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"booking-success.html\">Booking Success</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"patient-dashboard.html\">Patient Dashboard</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"favourites.html\">Favourites</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"chat.html\">Chat</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"profile-settings.html\">Profile Settings</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"change-password.html\">Change Password</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li class=\"has-submenu\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">Pages <i class=\"fas fa-chevron-down\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"submenu\">\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"voice-call.html\">Voice Call</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"video-call.html\">Video Call</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"search.html\">Search Doctors</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"calendar.html\">Calendar</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"components.html\">Components</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"has-submenu\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"invoices.html\">Invoices</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"submenu\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"invoices.html\">Invoices</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"invoice-view.html\">Invoice View</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"blank-page.html\">Starter Page</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"login.html\">Login</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"register.html\">Register</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"forgot-password.html\">Forgot Password</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"admin/index.html\" target=\"_blank\">Admin</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li class=\"login-link\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"login.html\">Login / Signup</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<ul class=\"nav header-navbar-rht\">\n");
      out.write("\t\t\t\t\t<li class=\"nav-item contact-item\">\n");
      out.write("\t\t\t\t\t\t<div class=\"header-contact-img\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"far fa-hospital\"></i>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"header-contact-detail\">\n");
      out.write("\t\t\t\t\t\t\t<p class=\"contact-header\">Contact</p>\n");
      out.write("\t\t\t\t\t\t\t<p class=\"contact-info-header\"> +1 315 369 5943</p>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li class=\"nav-item\">\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-link header-login\" href=\"login.html\">login / Signup </a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</nav>\n");
      out.write("\t\t</header>\n");
      out.write("\t\t<!-- /Header -->\n");
      out.write("\n");
      out.write("\t\t<!-- Page Content -->\n");
      out.write("\t\t<div class=\"content\">\n");
      out.write("\t\t\t<div class=\"container-fluid\">\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-md-8 offset-md-2\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<!-- Login Tab Content -->\n");
      out.write("\t\t\t\t\t\t<div class=\"account-content\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"row align-items-center justify-content-center\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-md-7 col-lg-6 login-left\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"assets/img/login-banner.png\" class=\"img-fluid\" alt=\"Doccure Login\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-md-12 col-lg-6 login-right\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"login-header\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h3>Login<a href=\"admin/login.html\">Are you an admin?</a></h3>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<form action=\"https://dreamguys.co.in/demo/doccure/index.html\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"form-group form-focus\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control floating\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label class=\"focus-label\">Username</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"form-group form-focus\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<input type=\"password\" class=\"form-control floating\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label class=\"focus-label\">Password</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"text-right\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<a class=\"forgot-link\" href=\"forgot-password.html\">Forgot Password ?</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<button class=\"btn btn-primary btn-block btn-lg login-btn\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\ttype=\"submit\">Login</button>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"login-or\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"or-line\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<span class=\"span-or\">or</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"row form-row social-login\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div style=\"margin-left: auto; margin-right: auto;\" class=\"col-6\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-google btn-block\"><i\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"fab fa-google mr-1\"></i>Login</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"text-center dont-have\">Don’t have an account? <a\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\thref=\"register.html\">Register</a></div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<!-- /Login Tab Content -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- /Page Content -->\n");
      out.write("\n");
      out.write("\t\t<!-- Footer -->\n");
      out.write("\t\t<footer class=\"footer\">\n");
      out.write("\n");
      out.write("\t\t\t<!-- Footer Top -->\n");
      out.write("\t\t\t<div class=\"footer-top\">\n");
      out.write("\t\t\t\t<div class=\"container-fluid\">\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-3 col-md-6\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<!-- Footer Widget -->\n");
      out.write("\t\t\t\t\t\t\t<div class=\"footer-widget footer-about\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"footer-logo\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"assets/img/footer_logo.png\" alt=\"logo\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"footer-about-content\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor\n");
      out.write("\t\t\t\t\t\t\t\t\t\tincididunt ut labore et dolore magna aliqua. </p>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"social-icon\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\" target=\"_blank\"><i class=\"fab fa-facebook-f\"></i> </a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\" target=\"_blank\"><i class=\"fab fa-twitter\"></i> </a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\" target=\"_blank\"><i class=\"fab fa-linkedin-in\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\" target=\"_blank\"><i class=\"fab fa-instagram\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\" target=\"_blank\"><i class=\"fab fa-dribbble\"></i> </a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<!-- /Footer Widget -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-3 col-md-6\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<!-- Footer Widget -->\n");
      out.write("\t\t\t\t\t\t\t<div class=\"footer-widget footer-menu\">\n");
      out.write("\t\t\t\t\t\t\t\t<h2 class=\"footer-title\">For Patients</h2>\n");
      out.write("\t\t\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"search.html\"><i class=\"fas fa-angle-double-right\"></i> Search for\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tDoctors</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"login.html\"><i class=\"fas fa-angle-double-right\"></i> Login</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"register.html\"><i class=\"fas fa-angle-double-right\"></i> Register</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"booking.html\"><i class=\"fas fa-angle-double-right\"></i> Booking</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"patient-dashboard.html\"><i class=\"fas fa-angle-double-right\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tPatient Dashboard</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<!-- /Footer Widget -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-3 col-md-6\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<!-- Footer Widget -->\n");
      out.write("\t\t\t\t\t\t\t<div class=\"footer-widget footer-menu\">\n");
      out.write("\t\t\t\t\t\t\t\t<h2 class=\"footer-title\">For Doctors</h2>\n");
      out.write("\t\t\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"appointments.html\"><i class=\"fas fa-angle-double-right\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tAppointments</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"chat.html\"><i class=\"fas fa-angle-double-right\"></i> Chat</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"login.html\"><i class=\"fas fa-angle-double-right\"></i> Login</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"doctor-register.html\"><i class=\"fas fa-angle-double-right\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tRegister</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"doctor-dashboard.html\"><i class=\"fas fa-angle-double-right\"></i> Doctor\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tDashboard</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<!-- /Footer Widget -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-3 col-md-6\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<!-- Footer Widget -->\n");
      out.write("\t\t\t\t\t\t\t<div class=\"footer-widget footer-contact\">\n");
      out.write("\t\t\t\t\t\t\t\t<h2 class=\"footer-title\">Contact Us</h2>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"footer-contact-info\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"footer-address\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span><i class=\"fas fa-map-marker-alt\"></i></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p> 3556 Beech Street, San Francisco,<br> California, CA 94108 </p>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<i class=\"fas fa-phone-alt\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+1 315 369 5943\n");
      out.write("\t\t\t\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t<p class=\"mb-0\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<i class=\"fas fa-envelope\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\tdoccure@example.com\n");
      out.write("\t\t\t\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<!-- /Footer Widget -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!-- /Footer Top -->\n");
      out.write("\t\t</footer>\n");
      out.write("\t\t<!-- /Footer -->\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\t<!-- /Main Wrapper -->\n");
      out.write("\n");
      out.write("\t<!-- jQuery -->\n");
      out.write("\t<script src=\"assets/js/jquery.min.js\"></script>\n");
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
      out.write("<!-- doccure/login.html  30 Nov 2019 04:12:20 GMT -->\n");
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