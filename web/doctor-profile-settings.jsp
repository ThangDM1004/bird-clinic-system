<%-- 
    Document   : doctor-profile-settings
    Created on : May 29, 2023, 4:20:52 PM
    Author     : MSI AD
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en">

    <!-- doccure/doctor-profile-settings.jsp  30 Nov 2019 04:12:14 GMT -->
    <head>
        <meta charset="utf-8">
        <title>Doccure</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <!-- Select2 CSS -->
        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css">

        <link rel="stylesheet" href="assets/plugins/dropzone/dropzone.min.css">

        <!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">

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
                            <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                        </a>
                    </div>
                    <div class="main-menu-wrapper">
                        <div class="menu-header">
                            <a href="index-2.jsp" class="menu-logo">
                                <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                            </a>
                            <a id="menu_close" class="menu-close" href="javascript:void(0);">
                                <i class="fas fa-times"></i>
                            </a>
                        </div>
                        <ul class="main-nav">
                            <li>
                                <a href="index-2.jsp">Home</a>
                            </li>
                            <li class="has-submenu active">
                                <a href="#">Doctors <i class="fas fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="doctor-dashboard.jsp">Doctor Dashboard</a></li>
                                    <li><a href="appointments.jsp">Appointments</a></li>
                                    <li><a href="schedule-timings.jsp">Schedule Timing</a></li>
                                    <li><a href="my-patients.jsp">Patients List</a></li>
                                    <li><a href="patient-profile.jsp">Patients Profile</a></li>
                                    <li><a href="chat-doctor.jsp">Chat</a></li>
                                    <li><a href="invoices.jsp">Invoices</a></li>
                                    <li class="active"><a href="doctor-profile-settings.jsp">Profile Settings</a></li>
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
                            </li>
                            <li>
                                <a href="admin/index.jsp" target="_blank">Admin</a>
                            </li>
                            <li class="login-link">
                                <a href="login.jsp">Login / Signup</a>
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

                        <!-- User Menu -->
                        <li class="nav-item dropdown has-arrow logged-item">
                            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                                <span class="user-img">
                                    <img class="rounded-circle" src="assets/img/doctors/doctor-thumb-02.jpg" width="31" alt="Darren Elder">
                                </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <div class="user-header">
                                    <div class="avatar avatar-sm">
                                        <img src="assets/img/doctors/doctor-thumb-02.jpg" alt="User Image" class="avatar-img rounded-circle">
                                    </div>
                                    <div class="user-text">
                                        <h6>Darren Elder</h6>
                                        <p class="text-muted mb-0">Doctor</p>
                                    </div>
                                </div>
                                <a class="dropdown-item" href="doctor-dashboard.jsp">Dashboard</a>
                                <a class="dropdown-item" href="doctor-profile-settings.jsp">Profile Settings</a>
                                <a class="dropdown-item" href="login.jsp">Logout</a>
                            </div>
                        </li>
                        <!-- /User Menu -->

                    </ul>
                </nav>
            </header>
            <!-- /Header -->

            <!-- Breadcrumb -->
            <div class="breadcrumb-bar">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-md-12 col-12">
                            <nav aria-label="breadcrumb" class="page-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index-2.jsp">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Profile Settings</li>
                                </ol>
                            </nav>
                            <h2 class="breadcrumb-title">Profile Settings</h2>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Breadcrumb -->

            <!-- Page Content -->
            <div class="content">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-md-5 col-lg-4 col-xl-3 theiaStickySidebar">

                            <!-- Profile Sidebar -->
                            <div class="profile-sidebar">
                                <div class="widget-profile pro-widget-content">
                                    <div class="profile-info-widget">
                                        <a href="#" class="booking-doc-img">
                                            <img src="assets/img/doctors/doctor-thumb-02.jpg" alt="User Image">
                                        </a>
                                        <div class="profile-det-info">
                                            <h3>Dr. Darren Elder</h3>

                                            <div class="patient-details">
                                                <h5 class="mb-0">BDS, MDS - Oral & Maxillofacial Surgery</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="dashboard-widget">
                                    <nav class="dashboard-menu">
                                        <ul>
                                            <li>
                                                <a href="doctor-dashboard.jsp">
                                                    <i class="fas fa-columns"></i>
                                                    <span>Dashboard</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="appointments.jsp">
                                                    <i class="fas fa-calendar-check"></i>
                                                    <span>Appointments</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="my-patients.jsp">
                                                    <i class="fas fa-user-injured"></i>
                                                    <span>My Patients</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="schedule-timings.jsp">
                                                    <i class="fas fa-hourglass-start"></i>
                                                    <span>Schedule Timings</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="invoices.jsp">
                                                    <i class="fas fa-file-invoice"></i>
                                                    <span>Invoices</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="reviews.jsp">
                                                    <i class="fas fa-star"></i>
                                                    <span>Reviews</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat-doctor.jsp">
                                                    <i class="fas fa-comments"></i>
                                                    <span>Message</span>
                                                    <small class="unread-msg">23</small>
                                                </a>
                                            </li>
                                            <li class="active">
                                                <a href="doctor-profile-settings.jsp">
                                                    <i class="fas fa-user-cog"></i>
                                                    <span>Profile Settings</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="social-media.jsp">
                                                    <i class="fas fa-share-alt"></i>
                                                    <span>Social Media</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="doctor-change-password.jsp">
                                                    <i class="fas fa-lock"></i>
                                                    <span>Change Password</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="index-2.jsp">
                                                    <i class="fas fa-sign-out-alt"></i>
                                                    <span>Logout</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <!-- /Profile Sidebar -->

                        </div>
                        <div class="col-md-7 col-lg-8 col-xl-9">
                            <jsp:useBean id="UserDAO" scope="request" class="sample.dao.UserDAO" />
                            <c:set var="username" value="${sessionScope.account.username}" />
                            <c:set var="doctor" value="${UserDAO.getDoctorByID(username)}" />
                            <!-- Basic Information -->
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Basic Information</h4>
                                    <div class="row form-row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="change-avatar">
                                                    <div class="profile-img">
                                                        <img src="${doctor.image}" alt="User Image">
                                                    </div>
                                                    <div class="upload-img">
                                                        <div class="change-photo-btn">
                                                            <span><i class="fa fa-upload"></i> Upload Photo</span>
                                                            <input type="file" class="upload">
                                                        </div>
                                                        <small class="form-text text-muted">Allowed JPG, GIF or PNG. Max size of 2MB</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Username <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control" value="${doctor.username}" readonly>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Email <span class="text-danger">*</span></label>
                                                <input type="email" class="form-control" value="${doctor.email}" readonly>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Full name <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control" value="${doctor.fullname}">
                                            </div>
                                        </div>
                                        <!--										<div class="col-md-6">
                                                                                                                                <div class="form-group">
                                                                                                                                        <label>Last Name <span class="text-danger">*</span></label>
                                                                                                                                        <input type="text" class="form-control">
                                                                                                                                </div>
                                                                                                                        </div>-->
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Phone Number</label>
                                                <input type="text" class="form-control" value="${doctor.phone}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Gender</label>
                                                <select class="form-control select">
                                                    <c:choose>
                                                        <c:when test="${doctor.gender eq 'Male'}">
                                                            <option selected>Male</option>
                                                            <option>Female</option>
                                                        </c:when>
                                                        <c:when test="${doctor.gender eq 'Female'}">
                                                            <option>Male</option>
                                                            <option selected>Female</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option>Male</option>
                                                            <option>Female</option>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </select>

                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group mb-0">
                                                <label>Date of Birth</label>
                                                <input type="text" class="form-control" value="${doctor.date_of_birth}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /Basic Information -->

                            <!-- About Me -->
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">About Me</h4>
                                    <div class="form-group mb-0">
                                        <label>Biography</label>
                                        <textarea class="form-control" rows="5">${doctor.bio}</textarea>
                                    </div>
                                </div>
                            </div>
                            <!-- /About Me -->

                            <!--							 Clinic Info 
                                                                                    <div class="card">
                                                                                            <div class="card-body">
                                                                                                    <h4 class="card-title">Clinic Info</h4>
                                                                                                    <div class="row form-row">
                                                                                                            <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                            <label>Clinic Name</label>
                                                                                                                            <input type="text" class="form-control">
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                            <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                            <label>Clinic Address</label>
                                                                                                                            <input type="text" class="form-control">
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                            <div class="col-md-12">
                                                                                                                    <div class="form-group">
                                                                                                                            <label>Clinic Images</label>
                                                                                                                            <form action="#" class="dropzone"></form>
                                                                                                                    </div>
                                                                                                                    <div class="upload-wrap">
                                                                                                                            <div class="upload-images">
                                                                                                                                    <img src="assets/img/features/feature-01.jpg" alt="Upload Image">
                                                                                                                                    <a href="javascript:void(0);" class="btn btn-icon btn-danger btn-sm"><i class="far fa-trash-alt"></i></a>
                                                                                                                            </div>
                                                                                                                            <div class="upload-images">
                                                                                                                                    <img src="assets/img/features/feature-02.jpg" alt="Upload Image">
                                                                                                                                    <a href="javascript:void(0);" class="btn btn-icon btn-danger btn-sm"><i class="far fa-trash-alt"></i></a>
                                                                                                                            </div>
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                    </div>
                                                                                            </div>
                                                                                    </div>
                                                                                     /Clinic Info 
                            
                                                                                     Contact Details 
                                                                                    <div class="card contact-card">
                                                                                            <div class="card-body">
                                                                                                    <h4 class="card-title">Contact Details</h4>
                                                                                                    <div class="row form-row">
                                                                                                            <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                            <label>Address Line 1</label>
                                                                                                                            <input type="text" class="form-control">
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                            <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                            <label class="control-label">Address Line 2</label>
                                                                                                                            <input type="text" class="form-control">
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                            <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                            <label class="control-label">City</label>
                                                                                                                            <input type="text" class="form-control">
                                                                                                                    </div>
                                                                                                            </div>
                            
                                                                                                            <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                            <label class="control-label">State / Province</label>
                                                                                                                            <input type="text" class="form-control">
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                            <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                            <label class="control-label">Country</label>
                                                                                                                            <input type="text" class="form-control">
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                            <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                            <label class="control-label">Postal Code</label>
                                                                                                                            <input type="text" class="form-control">
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                    </div>
                                                                                            </div>
                                                                                    </div>
                                                                                     /Contact Details 
                                                                                    
                                                                                     Pricing 
                                                                                    <div class="card">
                                                                                            <div class="card-body">
                                                                                                    <h4 class="card-title">Pricing</h4>
                                                                                                    
                                                                                                    <div class="form-group mb-0">
                                                                                                            <div id="pricing_select">
                                                                                                                    <div class="custom-control custom-radio custom-control-inline">
                                                                                                                            <input type="radio" id="price_free" name="rating_option" class="custom-control-input" value="price_free" checked>
                                                                                                                            <label class="custom-control-label" for="price_free">Free</label>
                                                                                                                    </div>
                                                                                                                    <div class="custom-control custom-radio custom-control-inline">
                                                                                                                            <input type="radio" id="price_custom" name="rating_option" value="custom_price" class="custom-control-input">
                                                                                                                            <label class="custom-control-label" for="price_custom">Custom Price (per hour)</label>
                                                                                                                    </div>
                                                                                                            </div>
                            
                                                                                                    </div>
                                                                                                    
                                                                                                    <div class="row custom_price_cont" id="custom_price_cont" style="display: none;">
                                                                                                            <div class="col-md-4">
                                                                                                                    <input type="text" class="form-control" id="custom_rating_input" name="custom_rating_count" value="" placeholder="20">
                                                                                                                    <small class="form-text text-muted">Custom price you can add</small>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    
                                                                                            </div>
                                                                                    </div>
                                                                                     /Pricing 
                                                                                    
                                                                                     Services and Specialization 
                                                                                    <div class="card services-card">
                                                                                            <div class="card-body">
                                                                                                    <h4 class="card-title">Services and Specialization</h4>
                                                                                                    <div class="form-group">
                                                                                                            <label>Services</label>
                                                                                                            <input type="text" data-role="tagsinput" class="input-tags form-control" placeholder="Enter Services" name="services" value="Tooth cleaning " id="services">
                                                                                                            <small class="form-text text-muted">Note : Type & Press enter to add new services</small>
                                                                                                    </div> 
                                                                                                    <div class="form-group mb-0">
                                                                                                            <label>Specialization </label>
                                                                                                            <input class="input-tags form-control" type="text" data-role="tagsinput" placeholder="Enter Specialization" name="specialist" value="Children Care,Dental Care" id="specialist">
                                                                                                            <small class="form-text text-muted">Note : Type & Press  enter to add new specialization</small>
                                                                                                    </div> 
                                                                                            </div>              
                                                                                    </div>
                                                                                     /Services and Specialization 
                                                                             
                                                                                     Education 
                                                                                    <div class="card">
                                                                                            <div class="card-body">
                                                                                                    <h4 class="card-title">Education</h4>
                                                                                                    <div class="education-info">
                                                                                                            <div class="row form-row education-cont">
                                                                                                                    <div class="col-12 col-md-10 col-lg-11">
                                                                                                                            <div class="row form-row">
                                                                                                                                    <div class="col-12 col-md-6 col-lg-4">
                                                                                                                                            <div class="form-group">
                                                                                                                                                    <label>Degree</label>
                                                                                                                                                    <input type="text" class="form-control">
                                                                                                                                            </div> 
                                                                                                                                    </div>
                                                                                                                                    <div class="col-12 col-md-6 col-lg-4">
                                                                                                                                            <div class="form-group">
                                                                                                                                                    <label>College/Institute</label>
                                                                                                                                                    <input type="text" class="form-control">
                                                                                                                                            </div> 
                                                                                                                                    </div>
                                                                                                                                    <div class="col-12 col-md-6 col-lg-4">
                                                                                                                                            <div class="form-group">
                                                                                                                                                    <label>Year of Completion</label>
                                                                                                                                                    <input type="text" class="form-control">
                                                                                                                                            </div> 
                                                                                                                                    </div>
                                                                                                                            </div>
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    <div class="add-more">
                                                                                                            <a href="javascript:void(0);" class="add-education"><i class="fa fa-plus-circle"></i> Add More</a>
                                                                                                    </div>
                                                                                            </div>
                                                                                    </div>
                                                                                     /Education 
                                                                            
                                                                                     Experience 
                                                                                    <div class="card">
                                                                                            <div class="card-body">
                                                                                                    <h4 class="card-title">Experience</h4>
                                                                                                    <div class="experience-info">
                                                                                                            <div class="row form-row experience-cont">
                                                                                                                    <div class="col-12 col-md-10 col-lg-11">
                                                                                                                            <div class="row form-row">
                                                                                                                                    <div class="col-12 col-md-6 col-lg-4">
                                                                                                                                            <div class="form-group">
                                                                                                                                                    <label>Hospital Name</label>
                                                                                                                                                    <input type="text" class="form-control">
                                                                                                                                            </div> 
                                                                                                                                    </div>
                                                                                                                                    <div class="col-12 col-md-6 col-lg-4">
                                                                                                                                            <div class="form-group">
                                                                                                                                                    <label>From</label>
                                                                                                                                                    <input type="text" class="form-control">
                                                                                                                                            </div> 
                                                                                                                                    </div>
                                                                                                                                    <div class="col-12 col-md-6 col-lg-4">
                                                                                                                                            <div class="form-group">
                                                                                                                                                    <label>To</label>
                                                                                                                                                    <input type="text" class="form-control">
                                                                                                                                            </div> 
                                                                                                                                    </div>
                                                                                                                                    <div class="col-12 col-md-6 col-lg-4">
                                                                                                                                            <div class="form-group">
                                                                                                                                                    <label>Designation</label>
                                                                                                                                                    <input type="text" class="form-control">
                                                                                                                                            </div> 
                                                                                                                                    </div>
                                                                                                                            </div>
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    <div class="add-more">
                                                                                                            <a href="javascript:void(0);" class="add-experience"><i class="fa fa-plus-circle"></i> Add More</a>
                                                                                                    </div>
                                                                                            </div>
                                                                                    </div>
                                                                                     /Experience 
                                                                                    
                                                                                     Awards 
                                                                                    <div class="card">
                                                                                            <div class="card-body">
                                                                                                    <h4 class="card-title">Awards</h4>
                                                                                                    <div class="awards-info">
                                                                                                            <div class="row form-row awards-cont">
                                                                                                                    <div class="col-12 col-md-5">
                                                                                                                            <div class="form-group">
                                                                                                                                    <label>Awards</label>
                                                                                                                                    <input type="text" class="form-control">
                                                                                                                            </div> 
                                                                                                                    </div>
                                                                                                                    <div class="col-12 col-md-5">
                                                                                                                            <div class="form-group">
                                                                                                                                    <label>Year</label>
                                                                                                                                    <input type="text" class="form-control">
                                                                                                                            </div> 
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    <div class="add-more">
                                                                                                            <a href="javascript:void(0);" class="add-award"><i class="fa fa-plus-circle"></i> Add More</a>
                                                                                                    </div>
                                                                                            </div>
                                                                                    </div>
                                                                                     /Awards 
                                                                                    
                                                                                     Memberships 
                                                                                    <div class="card">
                                                                                            <div class="card-body">
                                                                                                    <h4 class="card-title">Memberships</h4>
                                                                                                    <div class="membership-info">
                                                                                                            <div class="row form-row membership-cont">
                                                                                                                    <div class="col-12 col-md-10 col-lg-5">
                                                                                                                            <div class="form-group">
                                                                                                                                    <label>Memberships</label>
                                                                                                                                    <input type="text" class="form-control">
                                                                                                                            </div> 
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    <div class="add-more">
                                                                                                            <a href="javascript:void(0);" class="add-membership"><i class="fa fa-plus-circle"></i> Add More</a>
                                                                                                    </div>
                                                                                            </div>
                                                                                    </div>
                                                                                     /Memberships 
                                                                                    
                                                                                     Registrations 
                                                                                    <div class="card">
                                                                                            <div class="card-body">
                                                                                                    <h4 class="card-title">Registrations</h4>
                                                                                                    <div class="registrations-info">
                                                                                                            <div class="row form-row reg-cont">
                                                                                                                    <div class="col-12 col-md-5">
                                                                                                                            <div class="form-group">
                                                                                                                                    <label>Registrations</label>
                                                                                                                                    <input type="text" class="form-control">
                                                                                                                            </div> 
                                                                                                                    </div>
                                                                                                                    <div class="col-12 col-md-5">
                                                                                                                            <div class="form-group">
                                                                                                                                    <label>Year</label>
                                                                                                                                    <input type="text" class="form-control">
                                                                                                                            </div> 
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    <div class="add-more">
                                                                                                            <a href="javascript:void(0);" class="add-reg"><i class="fa fa-plus-circle"></i> Add More</a>
                                                                                                    </div>
                                                                                            </div>
                                                                                    </div>
                                                                                     /Registrations 
                                                                                    
                                                                                    <div class="submit-section submit-btn-bottom">
                                                                                            <button type="submit" class="btn btn-primary submit-btn">Save Changes</button>
                                                                                    </div>-->

                        </div>
                    </div>

                </div>

            </div>		
            <!-- /Page Content -->

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
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
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
                                        <li><a href="search.jsp"><i class="fas fa-angle-double-right"></i> Search for Doctors</a></li>
                                        <li><a href="login.jsp"><i class="fas fa-angle-double-right"></i> Login</a></li>
                                        <li><a href="register.jsp"><i class="fas fa-angle-double-right"></i> Register</a></li>
                                        <li><a href="booking.jsp"><i class="fas fa-angle-double-right"></i> Booking</a></li>
                                        <li><a href="patient-dashboard.jsp"><i class="fas fa-angle-double-right"></i> Patient Dashboard</a></li>
                                    </ul>
                                </div>
                                <!-- /Footer Widget -->

                            </div>

                            <div class="col-lg-3 col-md-6">

                                <!-- Footer Widget -->
                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">For Doctors</h2>
                                    <ul>
                                        <li><a href="appointments.jsp"><i class="fas fa-angle-double-right"></i> Appointments</a></li>
                                        <li><a href="chat.jsp"><i class="fas fa-angle-double-right"></i> Chat</a></li>
                                        <li><a href="login.jsp"><i class="fas fa-angle-double-right"></i> Login</a></li>
                                        <li><a href="doctor-register.jsp"><i class="fas fa-angle-double-right"></i> Register</a></li>
                                        <li><a href="doctor-dashboard.jsp"><i class="fas fa-angle-double-right"></i> Doctor Dashboard</a></li>
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
                                            <p> 3556  Beech Street, San Francisco,<br> California, CA 94108 </p>
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

                <!-- Footer Bottom -->
                <div class="footer-bottom">
                    <div class="container-fluid">

                        <!-- Copyright -->
                        <div class="copyright">
                            <div class="row">
                                <div class="col-md-6 col-lg-6">
                                    <div class="copyright-text">
                                        <p class="mb-0"><a href="templateshub.net">Templates Hub</a></p>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6">

                                    <!-- Copyright Menu -->
                                    <div class="copyright-menu">
                                        <ul class="policy-menu">
                                            <li><a href="term-condition.jsp">Terms and Conditions</a></li>
                                            <li><a href="privacy-policy.jsp">Policy</a></li>
                                        </ul>
                                    </div>
                                    <!-- /Copyright Menu -->

                                </div>
                            </div>
                        </div>
                        <!-- /Copyright -->

                    </div>
                </div>
                <!-- /Footer Bottom -->

            </footer>
            <!-- /Footer -->

        </div>
        <!-- /Main Wrapper -->

        <!-- jQuery -->
        <script src="assets/js/jquery.min.js"></script>

        <!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Sticky Sidebar JS -->
        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

        <!-- Select2 JS -->
        <script src="assets/plugins/select2/js/select2.min.js"></script>

        <!-- Dropzone JS -->
        <script src="assets/plugins/dropzone/dropzone.min.js"></script>

        <!-- Bootstrap Tagsinput JS -->
        <script src="assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>

        <!-- Profile Settings JS -->
        <script src="assets/js/profile-settings.js"></script>

        <!-- Custom JS -->
        <script src="assets/js/script.js"></script>

    </body>

    <!-- doccure/doctor-profile-settings.jsp  30 Nov 2019 04:12:15 GMT -->
</html>