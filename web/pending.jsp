<%-- 
    Document   : patient_dashboard
    Created on : Jun 8, 2023, 12:14:21 AM
    Author     : MSI AD
--%>

<%@page import="sample.dao.UserDAO"%>
<%@page import="sample.dao.BookingDAO"%>
<%@page import="sample.dto.BookingDTO"%>
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
            UserDAO udao = new UserDAO();
            List<UserDTO> doctor = udao.doctorList();
        %>

        <div class="card">
            <div class="card-body pt-0">

                <!-- Tab Menu -->
                <nav class="user-tabs mb-4">
                    <ul class="nav nav-tabs nav-tabs-bottom nav-justified">
                        <li class="nav-item">
                            <a class="nav-link active" href="#pat_appointments" data-toggle="tab">Appointments</a>
                        </li>
                    </ul>
                </nav>
                <!-- /Tab Menu -->

                <!-- Tab Content -->

                <form action="MainController">
                    <div class="tab-content pt-0">
                        <!-- Appointment Tab -->

                        <div id="pat_appointments" class="tab-pane fade show active">
                            <%
                                BookingDAO dao = new BookingDAO();
                                List<BookingDTO> list = dao.getAllBooking();
                                if (list == null) {
                            %>
                            <h1> Hiện chưa có lịch nào </h1>
                            <%
                            } else {
                                for (BookingDTO x : list) {

                                    if (x.getBooking_status() == 1) {
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
                                                    <th style="width: 250px">Service</th>
                                                    <th>Status</th>
                                                    <th>Doctor</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <%=x.getUsername_customer()%>
                                                    </td>
                                            <input type="hidden" name="bookingID" value=" <%=x.getBooking_id() %>">
                                            <td><%= dao.getBirdname(x.getPatient_id())%></td>
                                            <td><%= dao.getSlotTime(x.getBooking_id())%></td>
                                            <td style="width: 250px"><%= dao.getServicename(x.getBooking_id())%></td>
                                            <td><%= dao.getBookingStatus(x.getBooking_id())%></td>
                                            <td>
                                                <select name="select_doctor">
                                                    <%
                                                        for (UserDTO d : doctor) {
                                                    %>
                                                    <option value="<%=d.getUsername()%>"><%= d.getFullname()%></option>                                                        
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </td>
                                            <td><div class="submit-section">
                                                    <button name="action" value="Accept" type="submit" class="btn btn-primary submit-btn">Accept</button>
                                                </div></td>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <%
                                        }
                                    }
                                }
                            %>
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
                </form>
            </div>
        </div>
    </body>
</html>
