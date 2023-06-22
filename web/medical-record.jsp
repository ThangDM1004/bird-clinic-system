<%-- 
    Document   : medical-record
    Created on : Jun 22, 2023, 1:04:23 PM
    Author     : MSI AD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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




        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Pet Information</h4>
                <div class="row form-row">
                    <div class="col-md-12">
                        <div class="form-group">

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Pet Name <span class="text-danger"></span></label>
                            <input type="text" class="form-control" value="" disabled="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Species <span class="text-danger"></span></label>
                            <input type="email" class="form-control" value="" disabled="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Age <span class="text-danger"></span></label>
                            <input disabled="" type="text" name="fullname" class="form-control" value="" >
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Gender <span class="text-danger"></span></label>
                            <input disabled="" type="text" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Basic Information -->
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Owner Information</h4>
                <div class="row form-row">
                    <div class="col-md-12">
                        <div class="form-group">

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Full Name <span class="text-danger"></span></label>
                            <input type="text" class="form-control" value="" disabled="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Phone <span class="text-danger"></span></label>
                            <input type="email" class="form-control" value="" disabled="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Medical Details</h4>
                <div class="row form-row">
                    <div class="col-md-12">
                        <div class="form-group">

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Doctor's Name <span class="text-danger"></span></label>
                            <input type="text" class="form-control" value="" disabled="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div  class="form-group">
                            <label>Service <span class="text-danger"></span></label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About Me -->


        <!-- /About Me -->


        <!-- Registrations -->
        <div class="submit-section submit-btn-bottom">
            <button id="submit" type="submit" name="action" value="update-doctor-profile-setting" class="btn btn-primary submit-btn">Done</button>

        </div>


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
        <script src="assets/js/checkValidate.js"></script>
    </body>
</html>
