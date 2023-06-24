<%-- 
    Document   : index-2
    Created on : May 29, 2023, 4:21:56 PM
    Author     : MSI AD
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@page import="java.util.List"%>
<%@page import="sample.dao.ServiceDAO"%>
<%@page import="sample.dto.ServiceDTO"%>
<!DOCTYPE html>
<html lang="en">

    <!-- doccure/index.jsp  30 Nov 2019 04:12:03 GMT -->

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>thedearbird | HomePage</title>

        <!-- Favicons -->
        <link rel="shortcut icon" type="image/x-icon" href="admin/assets/img/logo-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/style_2.css">
        <link rel="stylesheet" href="assets/css/style_3.css">



        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
                        <script src="assets/js/html5shiv.min.js"></script>
                        <script src="assets/js/respond.min.js"></script>
                <![endif]-->

    </head>

    <body>

        <!-- Main Wrapper -->
        <div class="main-wrapper">

            <!-- Header -->
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
                            <!-- <li class="has-submenu">
                                    <a href="#">Doctors <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                            <li><a href="doctor-dashboard.jsp">Doctor Dashboard</a></li>
                                            <li><a href="appointments.jsp">Appointments</a></li>
                                            <li><a href="schedule-timings.jsp">Schedule Timing</a></li>
                                            <li><a href="my-patients.jsp">Patients List</a></li>
                                            <li><a href="patient-profile.jsp">Patients Profile</a></li>
                                            <li><a href="chat-doctor.jsp">Chat</a></li>
                                            <li><a href="invoices.jsp">Invoices</a></li>
                                            <li><a href="doctor-profile-settings.jsp">Profile Settings</a></li>
                                            <li><a href="reviews.jsp">Reviews</a></li>
                                            <li><a href="doctor-register.jsp">Doctor Register</a></li>
                                    </ul>
                            </li>
                            <li class="has-submenu">
                                    <a href="#">Patients <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                            <li><a href="search.jsp">Search Doctor</a></li>
                                            <li><a href="doctor-profile.jsp">Doctor Profile</a></li>
                                            <li><a href="booking.jsp">Booking</a></li>
                                            <li><a href="checkout.jsp">Checkout</a></li>
                                            <li><a href="booking-success.jsp">Booking Success</a></li>
                                            <li><a href="patient-dashboard.jsp">Patient Dashboard</a></li>
                                            <li><a href="favourites.jsp">Favourites</a></li>
                                            <li><a href="chat.jsp">Chat</a></li>
                                            <li><a href="profile-settings.jsp">Profile Settings</a></li>
                                            <li><a href="change-password.jsp">Change Password</a></li>
                                    </ul>
                            </li>
                            <li class="has-submenu">
                                    <a href="#">Pages <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                            <li><a href="voice-call.jsp">Voice Call</a></li>
                                            <li><a href="video-call.jsp">Video Call</a></li>
                                            <li><a href="search.jsp">Search Doctors</a></li>
                                            <li><a href="calendar.jsp">Calendar</a></li>
                                            <li><a href="components.jsp">Components</a></li>
                                            <li class="has-submenu">
                                                    <a href="invoices.jsp">Invoices</a>
                                                    <ul class="submenu">
                                                            <li><a href="invoices.jsp">Invoices</a></li>
                                                            <li><a href="invoice-view.jsp">Invoice View</a></li>
                                                    </ul>
                                            </li>
                                            <li><a href="blank-page.jsp">Starter Page</a></li>
                                            <li><a href="login.jsp">Login</a></li>
                                            <li><a href="register.jsp">Register</a></li>
                                            <li><a href="forgot-password.jsp">Forgot Password</a></li>
                                    </ul>
                            </li> -->
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
                                <p class="contact-info-header"> +1 315 369 5943</p>
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
                                    <a class="dropdown-item" href="MainController?action=logout">Logout</a>
                                </div>
                            </li>
                        </c:if>

                    </ul>
                </nav>
            </header>
            <!-- /Header -->

            <!-- Home Banner -->
            <section class="section section-search">
                <div class="container-fluid">
                    <div class="banner-wrapper">
                        <div class="banner-header text-center">
                            <h1>Our doctor is available, Make an appointment now !</h1>
                            <p>Discover the best doctors, clinic & hospital the city nearest to you.</p>
                            <div style="margin-left: auto; margin-right: auto;" class="col-6">
                                <a style="padding: 5px 0; font-size: 15px;" href="booking.jsp" class="btn book-btn">Book Us Now</a>
                            </div>


                        </div>

                        <!-- Search -->
                        <div class="search-box">
                            <!--                            <form action="templateshub.net">
                                                            <div class="form-group search-location">
                                                                <input type="text" class="form-control" placeholder="Search Location">
                                                                <span class="form-text">Based on your Location</span>
                                                            </div>
                                                            <div class="form-group search-info">
                                                                <input type="text" class="form-control"
                                                                       placeholder="Search Doctors, Clinics, Hospitals, Diseases Etc">
                                                                <span class="form-text">Ex : Dental or Sugar Check up etc</span>
                                                            </div>
                                                            <button type="submit" class="btn btn-primary search-btn"><i class="fas fa-search"></i>
                                                                <span>Search</span></button>
                                                        </form>-->
                        </div>
                        <!-- /Search -->

                    </div>
                </div>
            </section>
            <!-- /Home Banner -->

            <!-- Clinic and Specialities -->
            <section class="section section-specialities">
                <div class="container-fluid">
                    <div class="section-header text-center">
                        <h2>Top 5 most used services</h2>
                        <p class="sub-title">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-md-9">
                            <!-- Slider -->
                            <div class="specialities-slider slider">

                                <!-- Slider Item -->
                                <%
                                    ServiceDAO dao = new ServiceDAO();
                                    List<ServiceDTO> list = dao.getListTop5();

                                    for (ServiceDTO s : list) {
                                %>

                                <div class="speicality-item text-center">	
                                    <div class="speicality-img">
                                        <a href="" > <img src="<%=s.getIcon_link()%>" class="img-fluid"
                                                          alt="Speciality"></a>
                                        <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                    </div>
                                    <p><%=s.getService_name()%></p>
                                </div>
                                <%}%>
                                <!-- /Slider Item -->
                            </div>
                            <!-- /Slider -->

                        </div>
                    </div>
                </div>
            </section>



            <!-- Clinic and Specialities -->

            <!-- Popular Section -->
            <section class="section section-doctor">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="section-header ">
                                <h2>Book Our Service</h2>
                                <p>Lorem Ipsum is simply dummy text </p>
                            </div>
                            <div class="about-content">
                                <p>It is a long established fact that a reader will be distracted by the readable content of
                                    a page when looking at its layout. The point of using Lorem Ipsum.</p>
                                <p>web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem
                                    ipsum' will uncover many web sites still in their infancy. Various versions have evolved
                                    over the years, sometimes</p>
                                <a href="javascript:;">Read More..</a>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="doctor-slider slider">

                                <%
                                    ServiceDAO dao_1 = new ServiceDAO();
                                    List<ServiceDTO> lists = dao.getListService();
                                    for (ServiceDTO ser : lists) {

                                %>
                                <!-- Doctor Widget -->
                                <div class="profile-widget">
                                    <div class="doc-img">
                                        <a href="">
                                            <img class="img-fluid" alt="User Image" src="<%=ser.getIcon_link()%>" style="align-items: center;">
                                        </a>
                                        <a href="javascript:void(0)" class="fav-btn">
                                            <i class="far fa-bookmark"></i>
                                        </a>
                                    </div>
                                    <div class="pro-content">
                                        <h3 class="title">
                                            <a href=""><%=ser.getService_name()%></a>
                                            <i class="fas fa-check-circle verified"></i>
                                        </h3>
                                        <p class="speciality"></p>
                                        <div class="rating">
                                            <i class="fas fa-star filled"></i>
                                            <i class="fas fa-star filled"></i>
                                            <i class="fas fa-star filled"></i>
                                            <i class="fas fa-star filled"></i>
                                            <i class="fas fa-star filled"></i>
                                            <span class="d-inline-block average-rating">(17)</span>
                                        </div>
                                        <ul class="available-info">
                                            <!--                                            <li>
                                                                                            <i class="fas fa-map-marker-alt"></i> Florida, USA
                                                                                        </li>-->
                                            <li>
                                                <i class="far fa-clock"></i> Available on today
                                            </li>
                                            <li>
                                                <i class="far fa-money-bill-alt"></i> $<%=ser.getFee()%>
                                                <i class="fas fa-info-circle" data-toggle="tooltip" title="Lorem Ipsum"></i>
                                            </li>
                                        </ul>
                                        <div class="row row-sm">
                                            <div class="col-6">
                                                <a href="#view_specialities_details" data-toggle="modal" class="btn view-btn">View Profile</a>
                                            </div>
                                            <div class="col-6">
                                                <a href="" class="btn book-btn">Book Now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Doctor Widget -->

                                <%                                     }
                                %>


                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- /Popular Section -->

            <!-- Availabe Features -->
            <section class="section section-features">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-5 features-img">
                            <img src="assets/img/features/feature.png" class="img-fluid" alt="Feature">
                        </div>
                        <div class="col-md-7">
                            <div class="section-header">
                                <h2 class="mt-2">Availabe Features in Our Clinic</h2>
                                <p>It is a long established fact that a reader will be distracted by the readable content of
                                    a page when looking at its layout. </p>
                            </div>
                            <div class="features-slider slider">
                                <!-- Slider Item -->
                                <div class="feature-item text-center">
                                    <img src="assets/img/features/feature-01.jpg" class="img-fluid" alt="Feature">
                                    <p>Patient Ward</p>
                                </div>
                                <!-- /Slider Item -->

                                <!-- Slider Item -->
                                <div class="feature-item text-center">
                                    <img src="assets/img/features/feature-02.jpg" class="img-fluid" alt="Feature">
                                    <p>Test Room</p>
                                </div>
                                <!-- /Slider Item -->

                                <!-- Slider Item -->
                                <div class="feature-item text-center">
                                    <img src="assets/img/features/feature-03.jpg" class="img-fluid" alt="Feature">
                                    <p>ICU</p>
                                </div>
                                <!-- /Slider Item -->

                                <!-- Slider Item -->
                                <div class="feature-item text-center">
                                    <img src="assets/img/features/feature-04.jpg" class="img-fluid" alt="Feature">
                                    <p>Laboratory</p>
                                </div>
                                <!-- /Slider Item -->

                                <!-- Slider Item -->
                                <div class="feature-item text-center">
                                    <img src="assets/img/features/feature-05.jpg" class="img-fluid" alt="Feature">
                                    <p>Operation</p>
                                </div>
                                <!-- /Slider Item -->

                                <!-- Slider Item -->
                                <div class="feature-item text-center">
                                    <img src="assets/img/features/feature-06.jpg" class="img-fluid" alt="Feature">
                                    <p>Medical</p>
                                </div>
                                <!-- /Slider Item -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Availabe Features -->

            <!-- Footer -->
            <footer class="footer">

                <!-- Footer Top -->
                <div class="footer-top">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-3 col-md-6">

                                <!-- Footer Widget -->
                                <div class="footer-widget footer-about">
                                    <div class="footer-logo">
                                        <img src="assets/img/footer_logo.png" alt="logo">
                                    </div>

                                    <div class="footer-about-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                            incididunt ut labore et dolore magna aliqua. </p>
                                        <div class="social-icon">
                                            <ul>
                                                <li>
                                                    <a href="#" target="_blank"><i class="fab fa-facebook-f"></i> </a>
                                                </li>
                                                <li>
                                                    <a href="#" target="_blank"><i class="fab fa-twitter"></i> </a>
                                                </li>
                                                <li>
                                                    <a href="#" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" target="_blank"><i class="fab fa-dribbble"></i> </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Footer Widget -->

                            </div>

                            <div class="col-lg-3 col-md-6">

                                <!-- Footer Widget -->
                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">For Patients</h2>
                                    <ul>
                                        <li><a href="search.jsp"><i class="fas fa-angle-double-right"></i> Search for
                                                Doctors</a></li>
                                        <li><a href="login.jsp"><i class="fas fa-angle-double-right"></i> Login</a></li>
                                        <li><a href="register.jsp"><i class="fas fa-angle-double-right"></i> Register</a>
                                        </li>
                                        <li><a href="booking.jsp"><i class="fas fa-angle-double-right"></i> Booking</a>
                                        </li>
                                        <li><a href="patient-dashboard.jsp"><i class="fas fa-angle-double-right"></i>
                                                Patient Dashboard</a></li>
                                    </ul>
                                </div>
                                <!-- /Footer Widget -->

                            </div>

                            <div class="col-lg-3 col-md-6">

                                <!-- Footer Widget -->
                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">For Doctors</h2>
                                    <ul>
                                        <li><a href="appointments.jsp"><i class="fas fa-angle-double-right"></i>
                                                Appointments</a></li>
                                        <li><a href="chat.jsp"><i class="fas fa-angle-double-right"></i> Chat</a></li>
                                        <li><a href="login.jsp"><i class="fas fa-angle-double-right"></i> Login</a></li>
                                        <li><a href="doctor-register.jsp"><i class="fas fa-angle-double-right"></i>
                                                Register</a></li>
                                        <li><a href="doctor-dashboard.jsp"><i class="fas fa-angle-double-right"></i> Doctor
                                                Dashboard</a></li>
                                    </ul>
                                </div>
                                <!-- /Footer Widget -->

                            </div>

                            <div class="col-lg-3 col-md-6">

                                <!-- Footer Widget -->
                                <div class="footer-widget footer-contact">
                                    <h2 class="footer-title">Contact Us</h2>
                                    <div class="footer-contact-info">
                                        <div class="footer-address">
                                            <span><i class="fas fa-map-marker-alt"></i></span>
                                            <p> 3556 Beech Street, San Francisco,<br> California, CA 94108 </p>
                                        </div>
                                        <p>
                                            <i class="fas fa-phone-alt"></i>
                                            +1 315 369 5943
                                        </p>
                                        <p class="mb-0">
                                            <i class="fas fa-envelope"></i>
                                            doccure@example.com
                                        </p>
                                    </div>
                                </div>
                                <!-- /Footer Widget -->

                            </div>

                        </div>
                    </div>
                </div>
                <!-- /Footer Top -->
            </footer>
            <!-- /Footer -->
        </div>
        <!-- /Main Wrapper -->

        <!-- jQuery -->
        <script src="assets/js/jquery.min.js"></script>

        <!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <!-- Slick JS -->
        <script src="assets/js/slick.js"></script>

        <!-- Custom JS -->
        <script src="assets/js/script.js"></script>


        <div class="modal fade" id="view_specialities_details" aria-hidden="true" role="dialog">
            <div class="modal-dialog modal-dialog-scrollable modal-xl" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">View Services</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="card-wrapper">
                            <div class="cards">
                                <div class = "product-imgs">
                                    <div class = "img-display">
                                        <div class = "img-showcase">
                                            <img src="assets/img/features/feature-01.jpg">
                                            <img src="assets/img/features/feature-02.jpg">
                                            <img src="assets/img/features/feature-03.jpg">
                                            <img src="assets/img/features/feature-04.jpg">
                                        </div>
                                    </div>
                                    <div class = "img-select">
                                        <div class = "img-item">
                                            <a href = "#" data-id = "1">
                                                <img src = "assets/img/features/feature-01.jpg" alt = "shoe image">
                                            </a>
                                        </div>
                                        <div class = "img-item">
                                            <a href = "#" data-id = "2">
                                                <img src = "assets/img/features/feature-02.jpg" alt = "shoe image">
                                            </a>
                                        </div>
                                        <div class = "img-item">
                                            <a href = "#" data-id = "3">
                                                <img src = "assets/img/features/feature-03.jpg" alt = "shoe image">
                                            </a>
                                        </div>
                                        <div class = "img-item">
                                            <a href = "#" data-id = "4">
                                                <img src = "assets/img/features/feature-04.jpg" alt = "shoe image">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="product-contents">
                                <h2 class="product-titles">Emergency</h2>
                                <a href="#" class="product-link">Most used service</a>
                                <div class="product-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                    <span>4.7(21)</span>
                                </div>

                                <div class="product-price">
                                    <p class="new-price">Service Price: <span>$111</span></p>
                                </div>

                                <div class="product-detail">
                                    <h2>About this service</h2>
                                    <p>t is a long established fact that a reader will be distracted by the readable content of
                                        a page when looking at its layout. The point of using Lorem Ipsum t is a long established fact that a reader will be distracted by the readable content of
                                        a page when looking at its layout. The point of using Lorem Ipsum</p>
                                    <ul>
                                        <li>Specialize: <span>Internal</span></li>
                                        <li>Available: <span>Service ready</span></li>
                                    </ul>
                                </div>

                                <div class="purchase-info">
                                    <button style="padding: 20px; font-size: 20px;" type="button" class="btn book-btn">Book now</button>
                                </div>

                                <div class="social-links">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fab fa-dribbble"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <section id="testimonials">
                            <div class="testimonial-heading">
                                <span>Comments</span>
                                <h1>Customer Feedback</h1>
                            </div>
                            <div class="testimonial-box-container">
                                <!--Box-1-->
                                <div class="testimonial-box">
                                    <div class="box-top">
                                        <div class="profiles">
                                            <div class="profile-images">
                                                <img src="assets/img/post/profile-3.jpg">
                                            </div>
                                            <div class="name-user">
                                                <strong>Dang Minh Thang</strong>
                                                <span>@dangminhthang</span>
                                            </div>
                                        </div>
                                        <div class="reviewss">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                    </div>

                                    <!--Comment-->
                                    <div class="client-comment">
                                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eveniet magnam facilis perspiciatis obcaecati debitis nihil temporibus nesciunt, recusandae labore blanditiis non, voluptatibus, itaque provident architecto aperiam. Quod cum assumenda accusamus!</p>
                                    </div>
                                </div>

                                <div class="testimonial-box">
                                    <div class="box-top">
                                        <div class="profiles">
                                            <div class="profile-images">
                                                <img src="assets/img/post/profile-1.jpg">
                                            </div>
                                            <div class="name-user">
                                                <strong>Dang Minh Thang</strong>
                                                <span>@dangminhthang</span>
                                            </div>
                                        </div>
                                        <div class="reviewss">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                    </div>

                                    <!--Comment-->
                                    <div class="client-comment">
                                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eveniet magnam facilis perspiciatis obcaecati debitis nihil temporibus nesciunt, recusandae labore blanditiis non, voluptatibus, itaque provident architecto aperiam. Quod cum assumenda accusamus!</p>
                                    </div>
                                </div>

                                <div class="testimonial-box">
                                    <div class="box-top">
                                        <div class="profiles">
                                            <div class="profile-images">
                                                <img src="assets/img/post/profile-2.jpg">
                                            </div>
                                            <div class="name-user">
                                                <strong>Dang Minh Thang</strong>
                                                <span>@dangminhthang</span>
                                            </div>
                                        </div>
                                        <div class="reviewss">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                    </div>

                                    <!--Comment-->
                                    <div class="client-comment">
                                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eveniet magnam facilis perspiciatis obcaecati debitis nihil temporibus nesciunt, recusandae labore blanditiis non, voluptatibus, itaque provident architecto aperiam. Quod cum assumenda accusamus!</p>
                                    </div>
                                </div>

                                <div class="testimonial-box">
                                    <div class="box-top">
                                        <div class="profiles">
                                            <div class="profile-images">
                                                <img src="assets/img/post/profile-3.jpg">
                                            </div>
                                            <div class="name-user">
                                                <strong>Dang Minh Thang</strong>
                                                <span>@dangminhthang</span>
                                            </div>
                                        </div>
                                        <div class="reviewss">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                    </div>

                                    <!--Comment-->
                                    <div class="client-comment">
                                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eveniet magnam facilis perspiciatis obcaecati debitis nihil temporibus nesciunt, recusandae labore blanditiis non, voluptatibus, itaque provident architecto aperiam. Quod cum assumenda accusamus!</p>
                                    </div>
                                </div>
                            </div>
                        </section>

                    </div>
                </div>
            </div>
        </div>
        <script>

        </script>

    </body>

    <!-- doccure/index.jsp  30 Nov 2019 04:12:03 GMT -->

</html>
