<%-- 
    Document   : blank-page
    Created on : May 29, 2023, 4:18:42 PM
    Author     : MSI AD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en">

    <!-- doccure/blank-page.jsp  30 Nov 2019 04:12:20 GMT -->
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

        <!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/style_1.css">

        <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>

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
                            <img src="assets/img/final_logo.png" class="img-fluid" alt="Logo">
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

                            <li>
                                <a href="blank-page.jsp" >Blog</a>
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
                        <li class="nav-item">
                            <a class="nav-link header-login" href="login.jsp">login / Signup </a>
                        </li>
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
                                    <li class="breadcrumb-item active" aria-current="page">Blank Page</li>
                                </ol>
                            </nav>
                            <h2 class="breadcrumb-title">Blank Page</h2>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Breadcrumb -->

            <!-- Page Content -->
            <div class="content">
                <!--Post Filter-->
                <div class="post-filter container">
                    <span class="filter-item active-filter" data-filter='all'>All</span>
                    <span class="filter-item " data-filter='design'>Design</span>
                    <span class="filter-item " data-filter='tech'>Tech</span>
                    <span class="filter-item " data-filter='mobile'>Mobile</span>
                </div>

                <!--Post-->
                <section class="post container">
                    <!--Post Box 1-->
                    <div class="post-box mobile">
                        <img src="assets/img/post/post-1.jpg" alt="post-1" class="post-img">
                        <h2 class="category">Mobile</h2>
                        <a href="blog_details.jsp" class="post-title">
                            How To Create Best UX Design With Adobe
                        </a>
                        <span class="post-date">12 Feb 2023</span>
                        <p class="post-description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptas iure odio facilis ipsam eum, in quibusdam modi! Perferendis rerum qui tempore mollitia cupiditate, repudiandae veritatis?</p>
                        <!--Profile author-->
                        <div class="profile">
                            <img src="assets/img/post/profile-1.jpg" alt="" class="profile-img">
                            <span class="profile-name">Marques Brown</span>
                        </div>
                    </div>

                    <!--Post Box 2-->
                    <div class="post-box tech">
                        <img src="assets/img/post/post-2.jpg" alt="post-1" class="post-img">
                        <h2 class="category">Tech</h2>
                        <a href="blog_details.jsp" class="post-title">
                            How To Create Best UX Design With Adobe
                        </a>
                        <span class="post-date">12 Feb 2023</span>
                        <p class="post-description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptas iure odio facilis ipsam eum, in quibusdam modi! Perferendis rerum qui tempore mollitia cupiditate, repudiandae veritatis?</p>
                        <!--Profile author-->
                        <div class="profile">
                            <img src="assets/img/post/profile-2.jpg" alt="" class="profile-img">
                            <span class="profile-name">Thomas Brown</span>
                        </div>
                    </div>

                    <!--Post Box 3-->
                    <div class="post-box design">
                        <img src="assets/img/post/post-1.jpg" alt="post-1" class="post-img">
                        <h2 class="category">Design</h2>
                        <a href="blog_details.jsp" class="post-title">
                            How To Create Best UX Design With Adobe
                        </a>
                        <span class="post-date">12 Feb 2023</span>
                        <p class="post-description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptas iure odio facilis ipsam eum, in quibusdam modi! Perferendis rerum qui tempore mollitia cupiditate, repudiandae veritatis?</p>
                        <!--Profile author-->
                        <div class="profile">
                            <img src="assets/img/post/profile-3.jpg" alt="" class="profile-img">
                            <span class="profile-name">Marques Brown</span>
                        </div>
                    </div>

                    <!--Post Box 4-->
                    <div class="post-box mobile">
                        <img src="assets/img/post/post-4.jpg" alt="post-1" class="post-img">
                        <h2 class="category">Mobile</h2>
                        <a href="blog_details.jsp" class="post-title">
                            How To Create Best UX Design With Adobe
                        </a>
                        <span class="post-date">12 Feb 2023</span>
                        <p class="post-description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptas iure odio facilis ipsam eum, in quibusdam modi! Perferendis rerum qui tempore mollitia cupiditate, repudiandae veritatis?</p>
                        <!--Profile author-->
                        <div class="profile">
                            <img src="assets/img/post/profile-1.jpg" alt="" class="profile-img">
                            <span class="profile-name">Marques Brown</span>
                        </div>
                    </div>

                    <!--Post Box 5-->
                    <div class="post-box tech">
                        <img src="assets/img/post/post-5.jpg" alt="post-1" class="post-img">
                        <h2 class="category">Tech</h2>
                        <a href="blog_details.jsp" class="post-title">
                            How To Create Best UX Design With Adobe
                        </a>
                        <span class="post-date">12 Feb 2023</span>
                        <p class="post-description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptas iure odio facilis ipsam eum, in quibusdam modi! Perferendis rerum qui tempore mollitia cupiditate, repudiandae veritatis?</p>
                        <!--Profile author-->
                        <div class="profile">
                            <img src="assets/img/post/profile-2.jpg" alt="" class="profile-img">
                            <span class="profile-name">Thomas Brown</span>
                        </div>
                    </div>

                    <!--Post Box 6-->
                    <div class="post-box design">
                        <img src="assets/img/post/post-6.jpg" alt="post-1" class="post-img">
                        <h2 class="category">Design</h2>
                        <a href="blog_details.jsp" class="post-title">
                            How To Create Best UX Design With Adobe
                        </a>
                        <span class="post-date">12 Feb 2023</span>
                        <p class="post-description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptas iure odio facilis ipsam eum, in quibusdam modi! Perferendis rerum qui tempore mollitia cupiditate, repudiandae veritatis?</p>
                        <!--Profile author-->
                        <div class="profile">
                            <img src="assets/img/post/profile-3.jpg" alt="" class="profile-img">
                            <span class="profile-name">Marques Brown</span>
                        </div>
                    </div>

                    <!--Post Box 7-->
                    <div class="post-box mobile">
                        <img src="assets/img/post/post-7.jpg" alt="post-1" class="post-img">
                        <h2 class="category">Mobile</h2>
                        <a href="blog_details.jsp" class="post-title">
                            How To Create Best UX Design With Adobe
                        </a>
                        <span class="post-date">12 Feb 2023</span>
                        <p class="post-description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptas iure odio facilis ipsam eum, in quibusdam modi! Perferendis rerum qui tempore mollitia cupiditate, repudiandae veritatis?</p>
                        <!--Profile author-->
                        <div class="profile">
                            <img src="assets/img/post/profile-1.jpg" alt="" class="profile-img">
                            <span class="profile-name">Marques Brown</span>
                        </div>
                    </div>

                    <!--Post Box 8-->
                    <div class="post-box tech">
                        <img src="assets/img/post/post-8.jpg" alt="post-1" class="post-img">
                        <h2 class="category">Tech</h2>
                        <a href="blog_details.jsp" class="post-title">
                            How To Create Best UX Design With Adobe
                        </a>
                        <span class="post-date">12 Feb 2023</span>
                        <p class="post-description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptas iure odio facilis ipsam eum, in quibusdam modi! Perferendis rerum qui tempore mollitia cupiditate, repudiandae veritatis?</p>
                        <!--Profile author-->
                        <div class="profile">
                            <img src="assets/img/post/profile-2.jpg" alt="" class="profile-img">
                            <span class="profile-name">Thomas Brown</span>
                        </div>
                    </div>

                    <!--Post Box 9-->
                    <div class="post-box design">
                        <img src="assets/img/post/post-9.jpg" alt="post-1" class="post-img">
                        <h2 class="category">Design</h2>
                        <a href="blog_details.jsp" class="post-title">
                            How To Create Best UX Design With Adobe
                        </a>
                        <span class="post-date">12 Feb 2023</span>
                        <p class="post-description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptas iure odio facilis ipsam eum, in quibusdam modi! Perferendis rerum qui tempore mollitia cupiditate, repudiandae veritatis?</p>
                        <!--Profile author-->
                        <div class="profile">
                            <img src="assets/img/post/profile-3.jpg" alt="" class="profile-img">
                            <span class="profile-name">Marques Brown</span>
                        </div>
                    </div>
                </section>

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
        <script src="assets/js/main_1.js"></script>
        <script src="assets/js/jquery.min.js"></script>
        <!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Custom JS -->
        <script src="assets/js/script.js"></script>

    </body>

</html>