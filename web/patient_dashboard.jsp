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
                            <a class="nav-link active" href="#pat_appointments" data-toggle="tab">Appointments</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#pat_medical_records" data-toggle="tab"><span class="med-records">Medical Records</span></a>
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
                        <h1> Bạn chưa có lịch nào </h1>
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
                                                <th>Doctor</th>
                                                <th>Appt Date</th>
                                                <th>Booking Date</th>
                                                <th>Amount</th>
                                                <th>Service</th>
                                                <th>Status</th>
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
                    <div id="pat_medical_records" class="tab-pane fade">
                        <%
                            MedicalRecordDAO daoMR = new MedicalRecordDAO();
                            List<MedicalRecordDTO> MR = daoMR.getMR(user.getUsername());
                            if (MR == null) {
                        %>
                        <h1> Bạn chưa có không có ghi nhận nào </h1>
                        <%
                        } else {
                            for (MedicalRecordDTO mrr : MR) {
                        %>
                        <div class="card card-table mb-0">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover table-center mb-0">
                                        <thead>
                                            <tr>

                                                <th>Date Again </th>
                                                <th>Service</th>
                                                <th>Note</th>
                                                <th>Created</th>
                                                <th></th>
                                            </tr>     
                                        </thead>
                                        <tbody>
                                            <tr>

                                                <td><%= mrr.getDate_again()%></td>
                                                <td><%= daoMR.getSerNam(mrr.getSer_id())%></td>
                                                <td> <textarea readonly=""> <%= mrr.getNote()%> </textarea> </td>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="doctor-profile.jsp" class="avatar avatar-sm mr-2">
                                                            <img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb-01.jpg" alt="User Image">
                                                        </a>
                                                        <a href="doctor-profile.jsp"><%= daoMR.getDocName(mrr.getDoctorName())%><span> <%= daoMR.getSpec(mrr.getDoctorName())%></span></a>
                                                    </h2>
                                                </td>
                                                <td class="text-right">
                                                    <div class="table-action">
<!--                                                        <a href="javascript:void(0);" class="btn btn-sm bg-info-light">
                                                            <i class="far fa-eye"></i> View
                                                        </a>-->
                                                        <a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
                                                            <i class="fas fa-print"></i> Feedback
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>

                                        </tbody>  	
                                    </table>
                                </div>
                            </div>
                        </div>

                        <% }
                                                        }%>
                    </div>
                    <!-- /Medical Records Tab -->

                    <!-- Billing Tab -->

                    <!-- /Billing Tab -->

                </div>
                <!-- Tab Content -->

            </div>
        </div>
    </body>
</html>
