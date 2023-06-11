<%-- 
    Document   : user-change-password
    Created on : Jun 8, 2023, 12:26:40 AM
    Author     : MSI AD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    </head>
    <body>
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12 col-lg-6">

                        <!-- Change Password Form -->
                        <form action="MainController" method="POST">
                            <div class="form-group">
                                <label>Current Password</label>
                                <input name="username" value="${sessionScope.account.username}" type="hidden">
                                <input id="mypass" name="password" type="password" class="form-control" required="">
                                <p id="resultss" style="margin-left: 10px;">${incorectPass}</p>
                                <style>
                                    #resultss{
                                        width: 60%;
                                        padding-left: 3px;
                                        padding-right: 3px;
                                        border-radius: 3px;
                                        background: #F8ECEC;
                                        color: #be4b49;
                                    }
                                </style>

                            </div>
                            <div class="box">
                                <div class="form-group">
                                    <label>New Password</label>
                                    <input name="newPass" type="password"  required="" class="form-control"  id="pass" onkeyup="validatePassword(this.value); checkPassword(this.value)">
                                    <span id="toggleBtn"></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Confirm Password</label>
                                <input name="newConPass" type="password"  required="" class="form-control">
                            </div>
                            <div class="submit-section">
                                <button id="submit" name="action" value="changepass" type="submit" class="btn btn-primary submit-btn">Save Change</button>
                            </div>
                            <p id="results" style="margin-left: 10px;">${correctPass}</p>
                            <style>
                                #results{
                                    width: 60%;
                                    color: #006400;
                                    background: #E5FFE5;
                                    padding-left: 3px;
                                    padding-right: 3px;
                                    border-radius: 3px;
                                }
                            </style>

                        </form>
                        <!-- /Change Password Form -->

                    </div>
                </div>
            </div>
        </div>
    </body>

</html>
