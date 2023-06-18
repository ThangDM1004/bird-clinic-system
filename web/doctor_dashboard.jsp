<%-- 
    Document   : doctor_dashboard
    Created on : Jun 18, 2023, 7:04:23 PM
    Author     : MSI AD
--%>

<%@page import="sample.dto.AppointmentDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div class="row">
            <div class="col-md-12">
                <div class="card dash-card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12 col-lg-4">
                                <div class="dash-widget dct-border-rht">
                                    <div class="circle-bar circle-bar1">
                                        <div class="circle-graph1" data-percent="75">
                                            <img src="assets/img/icon-01.png" class="img-fluid"
                                                 alt="patient">
                                        </div>
                                    </div>
                                    <div class="dash-widget-info">

                                        <h6>Total Patient</h6>
                                        <h3>

                                            
                                        </h3>
                                        <p class="text-muted">Till Today</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12 col-lg-4">
                                <div class="dash-widget dct-border-rht">
                                    <div class="circle-bar circle-bar2">
                                        <div class="circle-graph2" data-percent="65">
                                            <img src="assets/img/icon-02.png" class="img-fluid"
                                                 alt="Patient">
                                        </div>
                                    </div>
                                    <div class="dash-widget-info">
                                        <h6>Today Patient</h6>
                                        <h3> 
                                          
                                        </h3>
                                        <p class="text-muted">
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12 col-lg-4">
                                <div class="dash-widget">
                                    <div class="circle-bar circle-bar3">
                                        <div class="circle-graph3" data-percent="50">
                                            <img src="assets/img/icon-03.png" class="img-fluid"
                                                 alt="Patient">
                                        </div>
                                    </div>
                                    <div class="dash-widget-info">
                                        <h6>Appoinments</h6>
                                        <h3>
                                          
                                        </h3>
                                        <p class="text-muted">Till Today</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <h4 class="mb-4">Patient Appoinment</h4>
                <div class="appointment-tab">

                    <!-- Appointment Tab -->
                    <ul class="nav nav-tabs nav-tabs-solid nav-tabs-rounded">
                        <li class="nav-item">
                            <a class="nav-link active" href="#upcoming-appointments"
                               data-toggle="tab">Upcoming</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#today-appointments" data-toggle="tab">Today</a>
                        </li>
                    </ul>
                    <!-- /Appointment Tab -->

                    <div class="tab-content">

                        <!-- Upcoming Appointment Tab -->                                            
                       
                        <div class="tab-pane show active" id="upcoming-appointments">
                            <div class="card card-table mb-0">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-center mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Custommer Name</th>
                                                    <th>Appt Date</th>
                                                    <th>Service</th>
                                                    <th>Type</th>
                                                    <th class="text-center">Slot</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                          
                                            <tbody>                                                                 
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="patient-profile.jsp"
                                                               class="avatar avatar-sm mr-2"><img
                                                                    class="avatar-img rounded-circle"
                                                                    src=""
                                                                    alt="User Image"></a>
                                                            <a href="patient-profile.jsp"><span></span></a>
                                                        </h2>
                                                    </td>
                                                    <td><span
                                                            class="d-block text-info"></span>
                                                    </td>
                                                    <td> </td>

                                                    <td class="text-center"></td>
                                                    <td class="text-right">
                                                        <div class="table-action">
                                                            <a href="javascript:void(0);"
                                                               class="btn btn-sm bg-info-light">
                                                                <i class="far fa-eye"></i> View
                                                            </a>

                                                            <a href="javascript:void(0);"
                                                               class="btn btn-sm bg-success-light">
                                                                <i class="fas fa-check"></i> Accept
                                                            </a>
                                                            <a href="javascript:void(0);"
                                                               class="btn btn-sm bg-danger-light">
                                                                <i class="fas fa-times"></i> Cancel
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>                                                                
                                            </tbody>
                                         
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- /Upcoming Appointment Tab -->

                        <!-- Today Appointment Tab -->    
                       
                        <div class="tab-pane" id="today-appointments">
                            <div class="card card-table mb-0">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-center mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Custommer Name</th>
                                                    <th>Appt Date</th>
                                                    <th>Service</th>
                                                    <th class="text-center">Slot</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                           
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="patient-profile.jsp"
                                                               class="avatar avatar-sm mr-2"><img
                                                                    class="avatar-img rounded-circle"
                                                                    src=""
                                                                    alt="User Image"></a>
                                                            <a href="patient-profile.jsp"></a>
                                                        </h2>
                                                    </td>
                                                    <td><span class="d-block text-info">
                                                        </span></td>
                                                    <td></td>
                                                    <td class="text-center"></td>
                                                    <td class="text-right">
                                                        <div class="table-action">
                                                            <a href="javascript:void(0);"
                                                               class="btn btn-sm bg-info-light">
                                                                <i class="far fa-eye"></i> View
                                                            </a>

                                                            <a href="javascript:void(0);"
                                                               class="btn btn-sm bg-success-light">
                                                                <i class="fas fa-check"></i> Accept
                                                            </a>
                                                            <a href="javascript:void(0);"
                                                               class="btn btn-sm bg-danger-light">
                                                                <i class="fas fa-times"></i> Cancel
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                            </tbody>
                                           
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- /Today Appointment Tab -->

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
