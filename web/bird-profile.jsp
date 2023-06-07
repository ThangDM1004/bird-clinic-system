<%-- 
    Document   : bird-profile
    Created on : Jun 8, 2023, 12:24:27 AM
    Author     : MSI AD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="card">
            <div class="card-body">

                <!-- Profile Settings Form -->
                <form>
                    <div class="row form-row">
                        <select>
                            <option>Your bird</option>                            
                        </select>
                        <div class="col-sm-5 col">
                            <a href="#Add_Specialities_details" data-toggle="modal"
                               class="btn btn-primary float-right mt-2">Add</a>
                        </div>
                        <div class="col-12 col-md-12">
                            <div class="form-group">
                                <div class="change-avatar">
                                    <div class="profile-img">
                                        <img src="assets/img/patients/patient.jpg" alt="User Image">
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
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" value="Richard">
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Species</label>
                                <input type="text" class="form-control" value="Wilson">
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Age</label>
                                <div class="cal-icon">
                                    <input type="text" class="form-control datetimepicker" value="24-07-1983">
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Gender</label>
                                <select class="form-control select">
                                    <option>Male</option>
                                    <option>Female</option>
                                </select>
                            </div>
                        </div>

                        <div class="submit-section">
                            <button type="submit" class="btn btn-primary submit-btn">Save Changes</button>
                        </div>
                </form>
                <!-- /Profile Settings Form -->


            </div>
        </div>
        
    </body>
</html>
