<%-- 
    Document   : appointments
    Created on : May 29, 2023, 4:18:27 PM
    Author     : MSI AD
--%>

<%@page import="sample.dto.UserDTO"%>
<%@page import="sample.dto.BookingDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.BookingDAO"%>
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
        <%
            HttpSession s = request.getSession();
            UserDTO user = (UserDTO) s.getAttribute("account");
            BookingDAO dao = new BookingDAO();
            List<BookingDTO> list = dao.getAllBooking();
            if (list == null) {
        %>
        Don't have  appointment
        <%
        } else {
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
                                <th></th>

                            </tr>
                        </thead>
                        <tbody>

                            <%
                                for (BookingDTO x : list) {
                                    if (x.getBooking_status() >= 2 && x.getUsername_doctor().equalsIgnoreCase(user.getUsername()) && x.getBooking_status() <= 3) {
                                        int index = list.indexOf(x);
                            %>
                            <tr>
                                <td>
                                    <%=dao.customerName(x.getUsername_customer())%>
                                </td>
                        <input type="hidden" name="bookingID" value=" <%=x.getBooking_id()%>">
                        <td><%= dao.getBirdname(x.getPatient_id())%> </td>
                        <td> <%=x.getDate()%><br> <%= dao.getSlotTime(x.getBooking_id())%></td>
                        <td style="width: 250px"><%= dao.getServicename(x.getBooking_id())%></td>
                        <input type="hidden" value="3" name="status_booking">
                        <td> <%=dao.getBookingStatus(x.getBooking_id())%></td>
                        <td><div class="submit-section">
                                <%

                                    if (x.getBooking_status() == 3) {
                                %>
                                <a type="button" s href="#Medical-record_<%=index%>" data-toggle="modal" class="btn btn-primary submit-btn">Medical Record</a>
                                <!-- /Profile Settings Form -->
                                <%
                                } else {
                                %>
                                <a type="button" s href="#Medical-record" data-toggle="modal" class="btn btn-primary submit-btn">Medical Record</a>
                                <%
                                    }
                                    if (x.getBooking_status() == 2) {
                                %>
                                <a href="MainController?bookingID=<%=x.getBooking_id()%>&action=Decline" style="background-color: red" class="btn btn-primary submit-btn">Cancel</a>
                                <%
                                } else {
                                %>
                                <button disabled="true" style="background-color: red" name="action" value="Decline" type="submit" class="btn btn-primary submit-btn">Cancel</button>
                                <%
                                    }
                                %>

                            </div></td>

                        <%
                                }
                            }
                        %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </body>

    <!-- doccure/appointments.jsp  30 Nov 2019 04:12:09 GMT -->
</html>
