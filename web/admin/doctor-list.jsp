<%-- 
    Document   : doctor-list
    Created on : May 29, 2023, 4:29:58 PM
    Author     : MSI AD
--%>

<%@page import="sample.dao.UserDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.javafx.scene.control.skin.VirtualFlow.ArrayLinkedList"%>
<%@page import="java.util.List"%>
<%@page import="sample.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from dreamguys.co.in/demo/doccure/admin/doctor-list.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 30 Nov 2019 04:12:51 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>thedearbird - Doctors | Manager</title>


        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo-icon.png">


        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Feathericon CSS -->
        <link rel="stylesheet" href="assets/css/feathericon.min.css">

        <!-- Datatables CSS -->
        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

        <!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--[if lt IE 9]>
                <script src="assets/js/html5shiv.min.js"></script>
                <script src="assets/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

        <!-- Main Wrapper -->
        <div class="main-wrapper">

            <!-- Header -->
            <div class="header">

                <!-- Logo -->
                <div class="header-left">
                    <a href="index.jsp" class="logo">
                        <img src="assets/img/the_logo.png" alt="Logo">
                    </a>
                    <a href="index.jsp" class="logo logo-small">
                        <img src="assets/img/logo-icon.png" alt="Logo" width="30" height="30">
                    </a>
                </div>
                <!-- /Logo -->

                <a href="javascript:void(0);" id="toggle_btn">
                    <i class="fe fe-text-align-left"></i>
                </a>

                <div class="top-nav-search">
                    <form>
                        <input type="text" class="form-control" placeholder="Search here">
                        <button class="btn" type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>

                <!-- Mobile Menu Toggle -->
                <a class="mobile_btn" id="mobile_btn">
                    <i class="fa fa-bars"></i>
                </a>
                <!-- /Mobile Menu Toggle -->

                <!-- Header Right Menu -->
                <ul class="nav user-menu">

                    <!-- Notifications -->
                    <li class="nav-item dropdown noti-dropdown">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                            <i class="fe fe-bell"></i> <span class="badge badge-pill">3</span>
                        </a>
                        <div class="dropdown-menu notifications">
                            <div class="topnav-dropdown-header">
                                <span class="notification-title">Notifications</span>
                                <a href="javascript:void(0)" class="clear-noti"> Clear All </a>
                            </div>
                            <div class="noti-content">
                                <ul class="notification-list">
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media">
                                                <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="User Image" src="assets/img/doctors/doctor-thumb-01.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Dr. Ruby Perrin</span> Schedule <span class="noti-title">her appointment</span></p>
                                                    <p class="noti-time"><span class="notification-time">4 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media">
                                                <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="User Image" src="assets/img/patients/patient1.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Charlene Reed</span> has booked her appointment to <span class="noti-title">Dr. Ruby Perrin</span></p>
                                                    <p class="noti-time"><span class="notification-time">6 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media">
                                                <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="User Image" src="assets/img/patients/patient2.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Travis Trimble</span> sent a amount of $210 for his <span class="noti-title">appointment</span></p>
                                                    <p class="noti-time"><span class="notification-time">8 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media">
                                                <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="User Image" src="assets/img/patients/patient3.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Carl Kelly</span> send a message <span class="noti-title"> to his doctor</span></p>
                                                    <p class="noti-time"><span class="notification-time">12 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="topnav-dropdown-footer">
                                <a href="#">View all Notifications</a>
                            </div>
                        </div>
                    </li>
                    <!-- /Notifications -->

                    <!-- User Menu -->
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
                                        <c:if test="${fn:containsIgnoreCase(roleName, '5')}">
                                            <p class="text-muted mb-0">Manager</p>
                                        </c:if>
                                    </div>
                                </div>
                                <a class="dropdown-item" href="../MainController?action=logout">Logout</a>
                            </div>
                        </li>
                    </c:if>
                    <!-- /User Menu -->
                </ul>
                <!-- /Header Right Menu -->

            </div>
            <!-- /Header -->

            <!-- Sidebar -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="menu-title">
                                <span>Main</span>
                            </li>
                            <li >
                                <a href="index.jsp"><i class="fe fe-home"></i><span>Dashboard</span></a>
                            </li>

                            <c:if test="${fn:containsIgnoreCase(roleName, '1') || fn:containsIgnoreCase(roleName, '5')}">
                                <li>
                                    <a href="appointment-list.jsp"><i class="fe fe-layout"></i> <span>Appointments</span></a>
                                </li>
                            </c:if>
                            <c:if test="${fn:containsIgnoreCase(roleName, '5')}">
                                <li>
                                    <a href="specialities.jsp"><i class="fe fe-users"></i> <span>Services</span></a>
                                </li>
                            </c:if>
                            <c:if test="${fn:containsIgnoreCase(roleName, '1') || fn:containsIgnoreCase(roleName, '5')}">
                                <li class="active">
                                    <a href="doctor-list.jsp"><i class="fe fe-user-plus"></i> <span>Doctors</span></a>
                                </li>
                                <li>
                                    <a href="patient-list.jsp"><i class="fe fe-user"></i> <span>Customers</span></a>
                                </li>
                            </c:if>
                            <c:if test="${fn:containsIgnoreCase(roleName, '5')}">
                                <li>
                                    <a href="reviews.jsp"><i class="fe fe-star-o"></i> <span>Reviews</span></a>
                                </li>
                            </c:if>
                            <!-- <li> 
                                    <a href="transactions-list.jsp"><i class="fe fe-activity"></i> <span>Transactions</span></a>
                            </li>
                            <li> 
                                    <a href="settings.jsp"><i class="fe fe-vector"></i> <span>Settings</span></a>
                            </li>
                            <li class="submenu">
                                    <a href="#"><i class="fe fe-document"></i> <span> Reports</span> <span class="menu-arrow"></span></a>
                                    <ul style="display: none;">
                                            <li><a href="invoice-report.jsp">Invoice Reports</a></li>
                                    </ul>
                            </li>
                            <li class="menu-title"> 
                                    <span>Pages</span>
                            </li>
                            <li> 
                                    <a href="profile.jsp"><i class="fe fe-user-plus"></i> <span>Profile</span></a>
                            </li>
                            <li class="submenu">
                                    <a href="#"><i class="fe fe-document"></i> <span> Authentication </span> <span class="menu-arrow"></span></a>
                                    <ul style="display: none;">
                                            <li><a href="login.jsp"> Login </a></li>
                                            <li><a href="register.jsp"> Register </a></li>
                                            <li><a href="forgot-password.jsp"> Forgot Password </a></li>
                                            <li><a href="lock-screen.jsp"> Lock Screen </a></li>
                                    </ul>
                            </li>
                            <li class="submenu">
                                    <a href="#"><i class="fe fe-warning"></i> <span> Error Pages </span> <span class="menu-arrow"></span></a>
                                    <ul style="display: none;">
                                            <li><a href="error-404.jsp">404 Error </a></li>
                                            <li><a href="error-500.jsp">500 Error </a></li>
                                    </ul>
                            </li>
                            <li> 
                                    <a href="blank-page.jsp"><i class="fe fe-file"></i> <span>Blank Page</span></a>
                            </li>
                            <li class="menu-title"> 
                                    <span>UI Interface</span>
                            </li>
                            <li> 
                                    <a href="components.jsp"><i class="fe fe-vector"></i> <span>Components</span></a>
                            </li>
                            <li class="submenu">
                                    <a href="#"><i class="fe fe-layout"></i> <span> Forms </span> <span class="menu-arrow"></span></a>
                                    <ul style="display: none;">
                                            <li><a href="form-basic-inputs.jsp">Basic Inputs </a></li>
                                            <li><a href="form-input-groups.jsp">Input Groups </a></li>
                                            <li><a href="form-horizontal.jsp">Horizontal Form </a></li>
                                            <li><a href="form-vertical.jsp"> Vertical Form </a></li>
                                            <li><a href="form-mask.jsp"> Form Mask </a></li>
                                            <li><a href="form-validation.jsp"> Form Validation </a></li>
                                    </ul>
                            </li>
                            <li class="submenu">
                                    <a href="#"><i class="fe fe-table"></i> <span> Tables </span> <span class="menu-arrow"></span></a>
                                    <ul style="display: none;">
                                            <li><a href="tables-basic.jsp">Basic Tables </a></li>
                                            <li><a href="data-tables.jsp">Data Table </a></li>
                                    </ul>
                            </li>
                            <li class="submenu">
                                    <a href="javascript:void(0);"><i class="fe fe-code"></i> <span>Multi Level</span> <span class="menu-arrow"></span></a>
                                    <ul style="display: none;">
                                            <li class="submenu">
                                                    <a href="javascript:void(0);"> <span>Level 1</span> <span class="menu-arrow"></span></a>
                                                    <ul style="display: none;">
                                                            <li><a href="javascript:void(0);"><span>Level 2</span></a></li>
                                                            <li class="submenu">
                                                                    <a href="javascript:void(0);"> <span> Level 2</span> <span class="menu-arrow"></span></a>
                                                                    <ul style="display: none;">
                                                                            <li><a href="javascript:void(0);">Level 3</a></li>
                                                                            <li><a href="javascript:void(0);">Level 3</a></li>
                                                                    </ul>
                                                            </li>
                                                            <li><a href="javascript:void(0);"> <span>Level 2</span></a></li>
                                                    </ul>
                                            </li>
                                            <li>
                                                    <a href="javascript:void(0);"> <span>Level 1</span></a>
                                            </li>
                                    </ul>
                            </li> -->
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Sidebar -->

            <!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">

                    <!-- Page Header -->
                    <div class="page-header">
                        <div class="row">
                            <div class="col-sm-7 col-auto">
                                <h3 class="page-title">List of Doctors</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="javascript:(0);">Users</a></li>
                                    <li class="breadcrumb-item active">Doctor</li>
                                </ul>
                            </div>
                            <!--                            PHẦN ADD THÊM BÁC SĨ-->
                            <!--                            <div class="col-sm-5 col">
                                            <a href="#Add_Specialities_details" data-toggle="modal"
                                               class="btn btn-primary float-right mt-2">Add</a>
                                        </div>-->
                        </div>

                    </div>
                    <!-- /Page Header -->

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="datatable table table-hover table-center mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Doctor Name</th>
                                                    <th>Speciality</th>
                                                    <th>Email</th>
                                                    <th>Phone Contact</th>
                                                    <th>Account Status</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    List<UserDTO> ls = new ArrayList<UserDTO>();
                                                    UserDAO dao = new UserDAO();
                                                    ls = dao.doctorList();
                                                    for (UserDTO doc : ls) {

                                                %>

                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="<%= doc.getImage()%>" alt="User Image"></a>
                                                            <a href="#view_specialities_details" data-toggle="modal"><%= doc.getFullname()%></a>
                                                        </h2>
                                                    </td>
                                                    <td><%= doc.getBio()%></td>

                                                    <td><%= doc.getEmail()%></td>

                                                    <td><%= doc.getPhone()%></td>

                                                    <td>
                                                        <div class="status-toggle">
                                                            <input type="checkbox" id="status_1" class="check" checked>
                                                            <label for="status_1" class="checktoggle">checkbox</label>
                                                        </div>
                                                    </td>
                                                </tr>


                                                <%
                                                    }
                                                %>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>			
                    </div>

                </div>			
            </div>
            <!-- /Page Wrapper -->


            <!-- Add Modal -->
            <div class="modal fade" id="Add_Specialities_details" aria-hidden="true" role="dialog">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Add Doctor</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="row form-row">
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>Image Profile</label>
                                            <input type="file" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row form-row">
                                    <div class="col-md-7">
                                        <div class="form-group">
                                            <label>Full Name</label>
                                            <input style="width: 250px;" type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label>Gender</label>
                                            <br>
                                            <select>
                                                <option value="">Male</option>
                                                <option value="">Female</option>
                                                <option value="">Other</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row form-row">
                                    <div class="col-md-7">
                                        <div class="form-group">
                                            <label>Date of Birth</label>
                                            <input type="date" placeholder="$" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label>Specialities</label>
                                            <br>
                                            <select style="height: 40px;  border-radius: 4px; boder: 1px solid #ff1;">
                                                <option style="height: 20px;" value="">Internal</option>
                                                <option style="height: 20px;" value="">External</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row form-row">
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>Email Contact</label>
                                            <input  type="email" placeholder="abcxyz@gmail.com" class="form-control"></input>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>Phone Contact</label>
                                            <input  type="number" class="form-control"></input>
                                        </div>
                                    </div>
                                </div>
                                <div class="row form-row">
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>Bio</label>
                                            <textarea style="width: 300px;" type="text" class="form-control"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row form-row">
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input  type="text"  class="form-control"></input>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" class="form-control"></input>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Add new</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /ADD Modal -->
        </div>

        <!-- View Details Modal -->
        <div class="modal fade" id="view_specialities_details" aria-hidden="true" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">View Specialities</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row form-row">
                            <div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label>Updating</label>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- /View Details Modal -->
        <!-- /Main Wrapper -->

        <!-- jQuery -->
        <script src="assets/js/jquery-3.2.1.min.js"></script>

        <!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Slimscroll JS -->
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <!-- Datatables JS -->
        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/datatables.min.js"></script>

        <!-- Custom JS -->
        <script  src="assets/js/script.js"></script>

    </body>

    <!-- Mirrored from dreamguys.co.in/demo/doccure/admin/doctor-list.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 30 Nov 2019 04:12:51 GMT -->
</html>
