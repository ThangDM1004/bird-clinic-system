<%-- 
    Document   : customers
    Created on : Jun 6, 2023, 5:45:42 PM
    Author     : MSI AD
--%>

<%@page import="sample.dto.UserDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>

<div class="page-wrapper">
    <div class="content container-fluid">

        <!-- Page Header -->
        <div class="page-header">
            <div class="row">
                <div class="col-sm-12">
                    <h3 class="page-title">List of Customer</h3>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="javascript:(0);">Users</a></li>
                        <li class="breadcrumb-item active">Patient</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /Page Header -->

        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <div class="table-responsive">
                                <table class="datatable table table-hover table-center mb-0">
                                    <thead>
                                        <tr>
                                            <th>Username</th>
                                            <th>Customer Name</th>
                                            <th>Gender</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Date Of Birth</th>
                                            <th class="text-right">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            UserDAO dao = new UserDAO();
                                            List<UserDTO> list = dao.getListCustomer();

                                            for (UserDTO user : list) {

                                        %>
                                        <tr>                                                    
                                            <td><%=user.getUsername()%></td>
                                            <td>
                                                <h2 class="table-avatar">
                                                    <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="<%=user.getImage()%>" alt="User Image"></a>
                                                    <a href="#view_specialities_details" data-toggle="modal"><%=user.getFullname()%></a>
                                                </h2>
                                            </td>
                                            <td><%=user.getGender()%></td>
                                            <td><%=user.getEmail()%></td>
                                            <td><%=user.getPhone()%></td>
                                            <td><%=user.getDate_of_birth()%></td>
                                            <td class="text-right"><%=user.isStatus()%></td>                                                    
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>			
        </div>

    </div>			
</div>
<!-- /Page Wrapper -->

</div>
<!-- /Main Wrapper -->
<!-- View Details Modal -->
<div class="modal fade" id="view_specialities_details" aria-hidden="true" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">View Profile</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row form-row">
                    <div class="col-12 col-sm-6">
                        <div class="form-group">
                            <label>Updating</label>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>
