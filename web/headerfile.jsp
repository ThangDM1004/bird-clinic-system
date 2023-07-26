<%-- 
    Document   : headerfile
    Created on : Jul 26, 2023, 12:11:01 PM
    Author     : TPTNam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>thedearbird</title>

        <!-- Favicons -->
        <link rel="shortcut icon" type="image/x-icon" href="admin/assets/img/logo-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/style_2.css">
        <link rel="stylesheet" href="assets/css/style_3.css">
    </head>
    <body>
        <header class="header">
            <nav class="navbar navbar-expand-lg header-nav">
                <div class="navbar-header">
                    <a id="mobile_btn" href="javascript:void(0);">
                        <span class="bar-icon">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                    </a>

                    <a href="index-2.jsp" class="navbar-brand logo">
                        <img style="object-fit: fill;" src="assets/img/final_logo.png" class="img-fluid" alt="Logo">
                    </a>
                </div>
                <div class="main-menu-wrapper">
                    <div class="menu-header">
                        <a href="index-2.jsp" class="menu-logo">
                            <img src="assets/img/final_logo.png" class="img-fluid" alt="Logo">
                        </a>
                        <a id="menu_close" class="menu-close" href="javascript:void(0);">
                            <i class="fas fa-times"></i>
                        </a>
                    </div>
                    <ul class="main-nav">
                        <li class="active">
                            <a href="index-2.jsp">Home</a>
                        </li>
                        <li>
                            <a href="blog.jsp" >Blog</a>
                        </li>


                    </ul>
                </div>
                <ul class="nav header-navbar-rht">
                    <li class="nav-item contact-item">
                        <div class="header-contact-img">
                            <i class="far fa-hospital"></i>
                        </div>
                        <div class="header-contact-detail">
                            <p class="contact-header">Contact</p>
                            <p class="contact-info-header"> 099999123</p>
                        </div>
                    </li>
                    <c:if test="${sessionScope.account == null}">
                        <li class="nav-item">
                            <a class="nav-link header-login" href="login.jsp">login / Signup </a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.account != null}">
                        <li class="nav-item dropdown has-arrow logged-item">
                            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                                <span class="user-img">
                                    <img class="rounded-circle" src="${sessionScope.account.image}" width="31" alt="${sessionScope.account.username}">
                                </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <div class="user-header">
                                    <div class="avatar avatar-sm">
                                        <img src="${sessionScope.account.image}" alt="User Image" class="avatar-img rounded-circle">
                                    </div>
                                    <div class="user-text">
                                        <h6>${sessionScope.account.fullname}</h6>
                                        <c:set var="roleName" value="${sessionScope.account.role}"/>
                                        <c:if test="${fn:containsIgnoreCase(roleName, '1')}">
                                            <p class="text-muted mb-0">Administrator</p>
                                        </c:if>
                                        <c:if test="${fn:containsIgnoreCase(roleName, '2')}">
                                            <p class="text-muted mb-0">Staff</p>
                                        </c:if>
                                        <c:if test="${fn:containsIgnoreCase(roleName, '3')}">
                                            <p class="text-muted mb-0">Doctor</p>
                                        </c:if>
                                        <c:if test="${fn:containsIgnoreCase(roleName, '4')}">
                                            <p class="text-muted mb-0">Customer</p>
                                        </c:if>
                                        <c:if test="${fn:containsIgnoreCase(roleName, '5')}">
                                            <p class="text-muted mb-0">Manager</p>
                                        </c:if>
                                    </div>
                                </div>
                                <!--                                    <a class="dropdown-item" href="#">My Appoinment</a>-->
                                <a class="dropdown-item" href="patient-dashboard.jsp">Profile Settings</a>
                                  <c:if test="${fn:containsIgnoreCase(roleName, '1')}">
                                            <a class="dropdown-item" href="admin/index.jsp">Admin Dashboard</a>
                                        </c:if>
                                <c:if test="${fn:containsIgnoreCase(roleName, '3')}">
                                    <a class="dropdown-item" href="doctor-dashboard.jsp">Doctor Dashboard</a>
                                </c:if>
                                <c:if test="${fn:containsIgnoreCase(roleName, '2')}">
                                    <a class="dropdown-item" href="staff.jsp">Staff Dashboard</a>
                                </c:if>
                                <a class="dropdown-item" href="MainController?action=logout">Logout</a>
                            </div>
                        </li>
                    </c:if>

                </ul>
            </nav>
        </header>
    </body>
</html>
