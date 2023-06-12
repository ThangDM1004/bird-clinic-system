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
                            <li class="has-submenu">
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
                            <li class="has-submenu active">
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
                                    <li class="active"><a href="blank-page.jsp">Starter Page</a></li>
                                    <li><a href="login.jsp">Login</a></li>
                                    <li><a href="register.jsp">Register</a></li>
                                    <li><a href="forgot-password.jsp">Forgot Password</a></li>
                                </ul>
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
                <section id="blog">
                    <!--blog-heading--------------->
                    <div class="blog-heading">
                        <span>My Recent Posts</span>
                        <h3>My Blog</h3>
                    </div>


                    <!--container---------------->
                    <div class="blog-container">

                        <!--box-1------------->
                        <div class="blog-box">

                            <!--img---->
                            <div class="blog-img">
                                <img src="assets/img/post/blog-1.png" alt="blog">
                            </div>
                            <!--text--->
                            <div class="blog-text">
                                <span>18 July 2021 / Web Design</span>
                                <a href="#" class="blog-title">What Has Happened to All of the Web Design Ideas?</a>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate facilis modi veritatis adipisci omnis perferendis deleniti tempore quasi? Explicabo recusandae soluta vel cum perspiciatis consequuntur dolorum distinctio minima voluptate quae?</p>
                                <a href="#">Read More</a>
                            </div>

                        </div>

                        <!--box-1------------->
                        <div class="blog-box">

                            <!--img---->
                            <div class="blog-img">
                                <img src="assets/img/post/blog-1.png" alt="blog">
                            </div>
                            <!--text--->
                            <div class="blog-text">
                                <span>18 July 2021 / Web Design</span>
                                <a href="#" class="blog-title">What Has Happened to All of the Web Design Ideas?</a>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate facilis modi veritatis adipisci omnis perferendis deleniti tempore quasi? Explicabo recusandae soluta vel cum perspiciatis consequuntur dolorum distinctio minima voluptate quae?</p>
                                <a href="#">Read More</a>
                            </div>

                        </div>

                        <!--box-1------------->
                        <div class="blog-box">

                            <!--img---->
                            <div class="blog-img">
                                <img src="assets/img/post/blog-1.png" alt="blog">
                            </div>
                            <!--text--->
                            <div class="blog-text">
                                <span>18 July 2021 / Web Design</span>
                                <a href="#" class="blog-title">What Has Happened to All of the Web Design Ideas?</a>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate facilis modi veritatis adipisci omnis perferendis deleniti tempore quasi? Explicabo recusandae soluta vel cum perspiciatis consequuntur dolorum distinctio minima voluptate quae?</p>
                                <a href="#">Read More</a>
                            </div>

                        </div><!--box-1------------->
                        <div class="blog-box">

                            <!--img---->
                            <div class="blog-img">
                                <img src="assets/img/post/blog-1.png" alt="blog">
                            </div>
                            <!--text--->
                            <div class="blog-text">
                                <span>18 July 2021 / Web Design</span>
                                <a href="#" class="blog-title">What Has Happened to All of the Web Design Ideas?</a>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate facilis modi veritatis adipisci omnis perferendis deleniti tempore quasi? Explicabo recusandae soluta vel cum perspiciatis consequuntur dolorum distinctio minima voluptate quae?</p>
                                <a href="#">Read More</a>
                            </div>

                        </div>
                        <!--box-1------------->
                        <div class="blog-box">

                            <!--img---->
                            <div class="blog-img">
                                <img src="assets/img/post/blog-1.png" alt="blog">
                            </div>
                            <!--text--->
                            <div class="blog-text">
                                <span>18 July 2021 / Web Design</span>
                                <a href="#" class="blog-title">What Has Happened to All of the Web Design Ideas?</a>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate facilis modi veritatis adipisci omnis perferendis deleniti tempore quasi? Explicabo recusandae soluta vel cum perspiciatis consequuntur dolorum distinctio minima voluptate quae?</p>
                                <a href="#">Read More</a>
                            </div>

                        </div>




                    </div>

                </section>
            </div>	
            <!-- /Page Content -->

            <style>
                #blog{
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    padding: 40px;
                    border-top: 1px solid rgba(0, 0, 0, 0.05);
                    border-bottom: 1px solid rgba(0, 0, 0, 0.05);
                }
                .blog-heading{
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;

                }
                .blog-heading span{
                    color: #f33c3c;
                }
                .blog-heading h3{
                    font-size: 2.4rem;
                    color: #2b2b2b;
                    font-weight: 600;
                }
                .blog-container{
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    margin: 20px 0px;
                    flex-wrap: wrap;
                }

                .blog-box{
                    width:350px;
                    background-color: #ffffff;
                    border: 1px solid #ececec;
                    margin: 20px 20px;

                }
                .blog-img{
                    width:100%;
                    height: auto;
                }
                .blog-img img{
                    width:100%;
                    height: 100%;
                    object-fit: cover;
                    object-position: center;
                }
                .blog-text{
                    padding: 30px;
                    display: flex;
                    flex-direction: column;
                }
                .blog-text span{
                    color: #f33c3c;
                    font-size: 0.9rem;
                }
                .blog-text .blog-title{
                    font-size: 1.3rem;
                    font-weight: 500;
                    color: #272727;
                }
                .blog-text p{
                    color: #9b9b9b;
                    font-size: 0.9rem;
                    display: -webkit-box;
                    -webkit-line-clamp: 3;
                    -webkit-box-orient: vertical;
                    overflow: hidden;
                    text-overflow: ellipsis;
                    margin: 20px 0px;
                }
                .blog-text a{
                    color: #0f0f0f;
                }
                .blog-text a:hover{
                    color: #c74242;
                    transition: all ease 0.3s;
                }


                @media(max-width:1250px){

                    .blog-box{
                        width: 300px;
                    }
                } 
                @media(max-width:1100px){
                    .blog-box{
                        width:70%;
                    }
                }

                @media(max-width:550px){

                    .blog-box{
                        margin: 20px 10px;
                        width: 100%;
                    }
                    #blog{
                        padding:20px;
                    }
                }


            </style>

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

        <!-- Custom JS -->
        <script src="assets/js/script.js"></script>

    </body>

    <!-- doccure/blank-page.jsp  30 Nov 2019 04:12:20 GMT -->
</html>