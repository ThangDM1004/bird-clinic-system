<%-- 
    Document   : loginpage
    Created on : May 21, 2023, 7:39:34 PM
    Author     : Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="assets_login/fonts/icomoon/style.css">

        <link rel="stylesheet" href="assets_login/css/owl.carousel.min.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets_login/css/bootstrap.min.css">

        <!-- Style -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets_login/css/style.css">

        <title>Login </title>

    </head>
    <body>


        <div class="d-lg-flex half">
            <div class="bg order-1 order-md-2" style="background-image: url('assets_login/images/pexels-international-fund-for-animal-welfare-5486952.jpg');"></div>
            <div class="contents order-2 order-md-1">

                <div class="container">                  
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-7">
                            <div class="mb-4">
                                <h3>Sign In</h3>
                            </div>
                            <form action="#" method="post">
                                <div class="form-group first">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" id="username">

                                </div>
                                <div class="form-group last mb-3">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" id="password">

                                </div>

                                <div class="d-flex mb-5 align-items-center">

                                    <label class="control control--checkbox mb-0"><span class="caption">Remember me</span>
                                        <input type="checkbox" checked="checked"/>
                                        <div class="control__indicator"></div>
                                    </label>
                                    <span class="ml-auto"><a href="#" class="forgot-pass">Forgot Password</a></span> <br>                              
                                </div>

                                <input type="submit" value="Sign In" class="btn btn-block btn-primary">
                                <a href="register.jsp" style="text-decoration: none;" >Create Account</a>

                                <span class="d-block text-center my-4 text-muted">&mdash; or &mdash;</span>

                                <div class="social-login">
                                    <!--                                    <a href="#" class="facebook btn d-flex justify-content-center align-items-center">
                                                                            <span class="icon-facebook mr-3"></span> Login with Facebook
                                                                        </a>
                                                                        <a href="#" class="twitter btn d-flex justify-content-center align-items-center">
                                                                            <span class="icon-twitter mr-3"></span> Login with  Twitter
                                                                        </a>-->
                                    <a href="#" class="google btn d-flex justify-content-center align-items-center">
                                        <span class="icon-google mr-3"></span> Login with  Google
                                    </a>
                                </div>
                            </form>
                            <div style="margin-top: 20px; text-align: center;" class="mb-4">
                                <a style="text-decoration: none;" href="homepage.jsp">Back to home</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>



        <script src="assets_login/js/jquery-3.3.1.min.js"></script>
        <script src="assets_login/js/popper.min.js"></script>
        <script src="assets_login/js/bootstrap.min.js"></script>
        <script src="assets_login/js/main.js"></script>
    </body>
</html>
