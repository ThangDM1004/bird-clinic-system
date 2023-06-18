<%-- 
    Document   : appointments
    Created on : May 29, 2023, 4:18:27 PM
    Author     : MSI AD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en">

    <!-- doccure/appointments.jsp  30 Nov 2019 04:12:09 GMT -->
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
        <div class="appointments">

            <!-- Appointment List -->
            <div class="appointment-list">
                <div class="profile-info-widget">
                    <a href="patient-profile.jsp" class="booking-doc-img">
                        <img src="assets/img/patients/patient.jpg" alt="User Image">
                    </a>
                    <div class="profile-det-info">
                        <h3><a href="patient-profile.jsp">Richard Wilson</a></h3>
                        <div class="patient-details">
                            <h5><i class="far fa-clock"></i> 14 Nov 2019, 10.00 AM</h5>
                            <h5><i class="fas fa-map-marker-alt"></i> Newyork, United States</h5>
                            <h5><i class="fas fa-envelope"></i> richard@example.com</h5>
                            <h5 class="mb-0"><i class="fas fa-phone"></i> +1 923 782 4575</h5>
                        </div>
                    </div>
                </div>
                <div class="appointment-action">
                    <a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
                        <i class="far fa-eye"></i> View
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-success-light">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </div>
            <!-- /Appointment List -->

            <!-- Appointment List -->
            <div class="appointment-list">
                <div class="profile-info-widget">
                    <a href="patient-profile.jsp" class="booking-doc-img">
                        <img src="assets/img/patients/patient1.jpg" alt="User Image">
                    </a>
                    <div class="profile-det-info">
                        <h3><a href="patient-profile.jsp">Charlene Reed </a></h3>
                        <div class="patient-details">
                            <h5><i class="far fa-clock"></i> 12 Nov 2019, 5.00 PM</h5>
                            <h5><i class="fas fa-map-marker-alt"></i> North Carolina, United States</h5>
                            <h5><i class="fas fa-envelope"></i> charlenereed@example.com</h5>
                            <h5 class="mb-0"><i class="fas fa-phone"></i> +1 828 632 9170</h5>
                        </div>
                    </div>
                </div>
                <div class="appointment-action">
                    <a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
                        <i class="far fa-eye"></i> View
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-success-light">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </div>
            <!-- /Appointment List -->

            <!-- Appointment List -->
            <div class="appointment-list">
                <div class="profile-info-widget">
                    <a href="patient-profile.jsp" class="booking-doc-img">
                        <img src="assets/img/patients/patient2.jpg" alt="User Image">
                    </a>
                    <div class="profile-det-info">
                        <h3><a href="patient-profile.jsp">Travis Trimble</a></h3>

                        <div class="patient-details">
                            <h5><i class="far fa-clock"></i> 11 Nov 2019, 8.00 PM</h5>
                            <h5><i class="fas fa-map-marker-alt"></i> Maine, United States</h5>
                            <h5><i class="fas fa-envelope"></i> travistrimble@example.com</h5>
                            <h5 class="mb-0"><i class="fas fa-phone"></i> +1 207 729 9974</h5>
                        </div>
                    </div>
                </div>
                <div class="appointment-action">
                    <a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
                        <i class="far fa-eye"></i> View
                    </a>

                    <a href="javascript:void(0);" class="btn btn-sm bg-success-light">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </div>
            <!-- /Appointment List -->

            <!-- Appointment List -->
            <div class="appointment-list">
                <div class="profile-info-widget">
                    <a href="patient-profile.jsp" class="booking-doc-img">
                        <img src="assets/img/patients/patient3.jpg" alt="User Image">
                    </a>
                    <div class="profile-det-info">
                        <h3><a href="patient-profile.jsp">Carl Kelly</a></h3>
                        <div class="patient-details">
                            <h5><i class="far fa-clock"></i> 9 Nov 2019, 9.00 AM</h5>
                            <h5><i class="fas fa-map-marker-alt"></i> Newyork, United States</h5>
                            <h5><i class="fas fa-envelope"></i> carlkelly@example.com</h5>
                            <h5 class="mb-0"><i class="fas fa-phone"></i> +1 260 724 7769</h5>
                        </div>
                    </div>
                </div>
                <div class="appointment-action">
                    <a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
                        <i class="far fa-eye"></i> View
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-success-light">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </div>
            <!-- /Appointment List -->

            <!-- Appointment List -->
            <div class="appointment-list">
                <div class="profile-info-widget">
                    <a href="patient-profile.jsp" class="booking-doc-img">
                        <img src="assets/img/patients/patient4.jpg" alt="User Image">
                    </a>
                    <div class="profile-det-info">
                        <h3><a href="patient-profile.jsp">Michelle Fairfax</a></h3>
                        <div class="patient-details">
                            <h5><i class="far fa-clock"></i> 9 Nov 2019, 1.00 PM</h5>
                            <h5><i class="fas fa-map-marker-alt"></i> Indiana, United States</h5>
                            <h5><i class="fas fa-envelope"></i> michellefairfax@example.com</h5>
                            <h5 class="mb-0"><i class="fas fa-phone"></i> +1 504 368 6874</h5>
                        </div>
                    </div>
                </div>
                <div class="appointment-action">
                    <a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
                        <i class="far fa-eye"></i> View
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-success-light">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </div>
            <!-- /Appointment List -->

            <!-- Appointment List -->
            <div class="appointment-list">
                <div class="profile-info-widget">
                    <a href="patient-profile.jsp" class="booking-doc-img">
                        <img src="assets/img/patients/patient5.jpg" alt="User Image">
                    </a>
                    <div class="profile-det-info">
                        <h3><a href="patient-profile.jsp">Gina Moore</a></h3>
                        <div class="patient-details">
                            <h5><i class="far fa-clock"></i> 8 Nov 2019, 3.00 PM</h5>
                            <h5><i class="fas fa-map-marker-alt"></i> Florida, United States</h5>
                            <h5><i class="fas fa-envelope"></i> ginamoore@example.com</h5>
                            <h5 class="mb-0"><i class="fas fa-phone"></i> +1 954 820 7887</h5>
                        </div>
                    </div>
                </div>
                <div class="appointment-action">
                    <a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
                        <i class="far fa-eye"></i> View
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-success-light">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </div>
            <!-- /Appointment List -->

            <!-- Appointment List -->
            <div class="appointment-list">
                <div class="profile-info-widget">
                    <a href="patient-profile.jsp" class="booking-doc-img">
                        <img src="assets/img/patients/patient6.jpg" alt="User Image">
                    </a>
                    <div class="profile-det-info">
                        <h3><a href="patient-profile.jsp">Elsie Gilley</a></h3>
                        <div class="patient-details">
                            <h5><i class="far fa-clock"></i> 6 Nov 2019, 9.00 AM</h5>
                            <h5><i class="fas fa-map-marker-alt"></i> Kentucky, United States</h5>
                            <h5><i class="fas fa-envelope"></i> elsiegilley@example.com</h5>
                            <h5 class="mb-0"><i class="fas fa-phone"></i> +1 315 384 4562</h5>
                        </div>
                    </div>
                </div>
                <div class="appointment-action">
                    <a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
                        <i class="far fa-eye"></i> View
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-success-light">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </div>
            <!-- /Appointment List -->

            <!-- Appointment List -->
            <div class="appointment-list">
                <div class="profile-info-widget">
                    <a href="patient-profile.jsp" class="booking-doc-img">
                        <img src="assets/img/patients/patient7.jpg" alt="User Image">
                    </a>
                    <div class="profile-det-info">
                        <h3><a href="patient-profile.jsp">Joan Gardner</a></h3>
                        <div class="patient-details">
                            <h5><i class="far fa-clock"></i> 5 Nov 2019, 12.00 PM</h5>
                            <h5><i class="fas fa-map-marker-alt"></i> California, United States</h5>
                            <h5><i class="fas fa-envelope"></i> joangardner@example.com</h5>
                            <h5 class="mb-0"><i class="fas fa-phone"></i> +1 707 2202 603</h5>
                        </div>
                    </div>
                </div>
                <div class="appointment-action">
                    <a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
                        <i class="far fa-eye"></i> View
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-success-light">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </div>
            <!-- /Appointment List -->

            <!-- Appointment List -->
            <div class="appointment-list">
                <div class="profile-info-widget">
                    <a href="patient-profile.jsp" class="booking-doc-img">
                        <img src="assets/img/patients/patient8.jpg" alt="User Image">
                    </a>
                    <div class="profile-det-info">
                        <h3><a href="patient-profile.jsp">Daniel Griffing</a></h3>
                        <div class="patient-details">
                            <h5><i class="far fa-clock"></i> 5 Nov 2019, 7.00 PM</h5>
                            <h5><i class="fas fa-map-marker-alt"></i> New Jersey, United States</h5>
                            <h5><i class="fas fa-envelope"></i> danielgriffing@example.com</h5>
                            <h5 class="mb-0"><i class="fas fa-phone"></i> +1 973 773 9497</h5>
                        </div>
                    </div>
                </div>
                <div class="appointment-action">
                    <a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
                        <i class="far fa-eye"></i> View
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-success-light">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </div>
            <!-- /Appointment List -->

            <!-- Appointment List -->
            <div class="appointment-list">
                <div class="profile-info-widget">
                    <a href="patient-profile.jsp" class="booking-doc-img">
                        <img src="assets/img/patients/patient9.jpg" alt="User Image">
                    </a>
                    <div class="profile-det-info">
                        <h3><a href="patient-profile.jsp">Walter Roberson</a></h3>
                        <div class="patient-details">
                            <h5><i class="far fa-clock"></i> 4 Nov 2019, 10.00 AM</h5>
                            <h5><i class="fas fa-map-marker-alt"></i> Florida, United States</h5>
                            <h5><i class="fas fa-envelope"></i> walterroberson@example.com</h5>
                            <h5 class="mb-0"><i class="fas fa-phone"></i> +1 850 358 4445</h5>
                        </div>
                    </div>
                </div>
                <div class="appointment-action">
                    <a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
                        <i class="far fa-eye"></i> View
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-success-light">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </div>
            <!-- /Appointment List -->

            <!-- Appointment List -->
            <div class="appointment-list">
                <div class="profile-info-widget">
                    <a href="patient-profile.jsp" class="booking-doc-img">
                        <img src="assets/img/patients/patient10.jpg" alt="User Image">
                    </a>
                    <div class="profile-det-info">
                        <h3><a href="patient-profile.jsp">Robert Rhodes</a></h3>
                        <div class="patient-details">
                            <h5><i class="far fa-clock"></i> 4 Nov 2019, 11.00 AM</h5>
                            <h5><i class="fas fa-map-marker-alt"></i> California, United States</h5>
                            <h5><i class="fas fa-envelope"></i> robertrhodes@example.com</h5>
                            <h5 class="mb-0"><i class="fas fa-phone"></i> +1 858 259 5285</h5>
                        </div>
                    </div>
                </div>
                <div class="appointment-action">
                    <a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
                        <i class="far fa-eye"></i> View
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-success-light">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </div>
            <!-- /Appointment List -->

            <!-- Appointment List -->
            <div class="appointment-list">
                <div class="profile-info-widget">
                    <a href="patient-profile.jsp" class="booking-doc-img">
                        <img src="assets/img/patients/patient11.jpg" alt="User Image">
                    </a>
                    <div class="profile-det-info">
                        <h3><a href="patient-profile.jsp">Harry Williams</a></h3>
                        <div class="patient-details">
                            <h5><i class="far fa-clock"></i> 3 Nov 2019, 6.00 PM</h5>
                            <h5><i class="fas fa-map-marker-alt"></i> Colorado, United States</h5>
                            <h5><i class="fas fa-envelope"></i> harrywilliams@example.com</h5>
                            <h5 class="mb-0"><i class="fas fa-phone"></i> +1 303 607 7075</h5>
                        </div>
                    </div>
                </div>
                <div class="appointment-action">
                    <a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
                        <i class="far fa-eye"></i> View
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-success-light">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </div>
            <!-- /Appointment List -->

        </div>
    </body>

    <!-- doccure/appointments.jsp  30 Nov 2019 04:12:09 GMT -->
</html>
