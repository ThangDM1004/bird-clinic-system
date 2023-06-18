<%-- 
    Document   : patient_dashboard
    Created on : Jun 8, 2023, 12:14:21 AM
    Author     : MSI AD
--%>

<%@page import="sample.dto.MedicalRecordDTO"%>
<%@page import="sample.dto.UserDTO"%>
<%@page import="sample.dto.AppointmentDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.AppointmentDAO"%>
<%@page import="sample.dao.MedicalRecordDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession s = request.getSession();
            UserDTO user = (UserDTO) s.getAttribute("account");
            if (user != null) {

            } else {
                response.sendRedirect("login.jsp");
            }
        %>

        <div class="card">
            <div class="card-body pt-0">

                <!-- Tab Menu -->
                <nav class="user-tabs mb-4">
                    <ul class="nav nav-tabs nav-tabs-bottom nav-justified">
                        <li class="nav-item">
                            <a class="nav-link active" href="#pat_appointments" data-toggle="tab">Appointments Assign</a>
                        </li>
                    </ul>
                </nav>
                <!-- /Tab Menu -->

                <!-- Tab Content -->

                <div class="tab-content pt-0">
                    <!-- Appointment Tab -->

                    <div id="pat_appointments" class="tab-pane fade show active">
                        <%
                            AppointmentDAO daoApp = new AppointmentDAO();
                            List<AppointmentDTO> ls = daoApp.getAppointmentForUser(user.getUsername());
                            if (ls == null) {
                        %>
                        <h1> Hiện chưa có lịch nào </h1>
                        <%
                        } else {
                            for (AppointmentDTO apt : ls) {
                        %>
                        <div class="card card-table mb-0">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover table-center mb-0">
                                        <thead>
                                            <tr>
                                                <th>User Name</th>
                                                <th>Bird Name</th>
                                                <th>Time Slot</th>
                                                <th>Service</th>
                                                <th>Status</th>
                                                <th>Doctor</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="doctor-profile.jsp" class="avatar avatar-sm mr-2">
                                                            <img class="avatar-img rounded-circle" src="<%= !apt.getImgDoc().equals("") ? apt.getImgDoc() : "assets/img/user_image_default.png"%>" alt="User Image">
                                                        </a>
                                                        <a href="doctor-profile.jsp"><%= apt.getDoctorName()%><span><%= apt.getSpeciality()%></span></a>
                                                    </h2>
                                                </td>
                                                <td><%= apt.getDate()%><span class="d-block text-info"><%= apt.getTime()%></span></td>
                                                <td><%= apt.getDateBooking()%></td>
                                                <td><%= apt.getFee()%></td>
                                                <td><%= apt.getService()%></td>
                                                <td><span class="badge badge-pill"><%= daoApp.getStatusName(apt.getStatus())    %> </span></td>
<!--                                                <td class="text-right">
                                                    <div class="table-action">
                                                        <a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
                                                            <i class="fas fa-print"></i> Print
                                                        </a>
                                                        <a href="javascript:void(0);" class="btn btn-sm bg-info-light">
                                                            <i class="far fa-eye"></i> View
                                                        </a>
                                                    </div>
                                                </td>-->
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <% }
                            }%>
                    </div>


                    <!-- /Appointment Tab -->

                    <!-- Prescription Tab -->

                    <!-- /Prescription Tab -->

                    <!-- Medical Records Tab -->
                   
                    <!-- /Medical Records Tab -->

                    <!-- Billing Tab -->

                    <!-- /Billing Tab -->

                </div>
                <!-- Tab Content -->

            </div>
        </div>
    </body>
</html>
