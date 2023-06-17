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
                        <li class="breadcrumb-item"><a href="javascript:(0);">Admin</a></li>
                        <li class="breadcrumb-item active">Customer</li>
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
                                            <th class="text-right">Account Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            int rowCounter = 1;
                                            UserDAO dao = new UserDAO();
                                            List<UserDTO> list = dao.getListCustomer();

                                            for (UserDTO user : list) {
                                                int index = list.indexOf(user);
                                        %>
                                        <tr>                                                    
                                            <td><%=user.getUsername()%></td>
                                            <td>
                                                <h2 class="table-avatar">
                                                    <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="<%=user.getImage()%>" alt="User Image"></a>
                                                    <a href="#view_specialities_details_<%=index%>" data-toggle="modal"><%=user.getFullname()%></a>
                                                </h2>
                                            </td>
                                            <td><%=user.getGender()%></td>
                                            <td><%=user.getEmail()%></td>
                                            <td><%=user.getPhone()%></td>
                                            <td><%=user.getDate_of_birth()%></td>

                                            <td class="text-right">
                                                <%
                                                    boolean isStatus = user.isStatus();
                                                %>
                                                <form id="statusForm<%=rowCounter%>" action="../SetStatusController" method="POST">
                                                    <label class="switch">
                                                        <input name="username" value="<%=user.getUsername()%>" type="hidden">                                                        <input name="username" value="<%=user.getUsername()%>" type="hidden">
                                                        <input name="statusName" value="<%=isStatus%>" type="hidden">
                                                        <input type="checkbox" onchange="document.getElementById('statusForm<%= rowCounter%>').submit()" <%= isStatus ? "checked" : "unchecked"%>>
                                                        <span class="slider round"></span>
                                                    </label>
                                                </form>
                                                <style>
                                                    .switch {
                                                        margin-left: 10px;
                                                        position: relative;
                                                        display: inline-block;
                                                        width: 60px;
                                                        height: 34px;
                                                    }

                                                    /* Hide default HTML checkbox */
                                                    .switch input {
                                                        opacity: 0;
                                                        width: 0;
                                                        height: 0;
                                                    }

                                                    /* The slider */
                                                    .slider {
                                                        position: absolute;
                                                        cursor: pointer;
                                                        top: 0;
                                                        left: 0;
                                                        right: 0;
                                                        bottom: 0;
                                                        background-color: #ccc;
                                                        -webkit-transition: .4s;
                                                        transition: .4s;
                                                    }

                                                    .slider:before {
                                                        position: absolute;
                                                        content: "";
                                                        height: 26px;
                                                        width: 26px;
                                                        left: 4px;
                                                        bottom: 4px;
                                                        background-color: white;
                                                        -webkit-transition: .4s;
                                                        transition: .4s;
                                                    }

                                                    input:checked + .slider {
                                                        background-color: #6EC531;
                                                    }

                                                    input:focus + .slider {
                                                        box-shadow: 0 0 1px #6EC531;
                                                    }

                                                    input:checked + .slider:before {
                                                        -webkit-transform: translateX(26px);
                                                        -ms-transform: translateX(26px);
                                                        transform: translateX(26px);
                                                    }

                                                    /* Rounded sliders */
                                                    .slider.round {
                                                        border-radius: 34px;
                                                    }

                                                    .slider.round:before {
                                                        border-radius: 50%;
                                                    }

                                                </style>
                                            </td>                                                    
                                        </tr>
                                        <%
                                                rowCounter++;
                                            }
                                        %>
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
<%
    for (UserDTO user : list) {
        int index = list.indexOf(user);
%>
<div class="modal fade" id="view_specialities_details_<%=index%>" aria-hidden="true" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">View Profile</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <div class="widget-profile pro-widget-content">
                        <div class="profile-info-widget">
                            <a href="#" class="booking-doc-img">
                                <img src="<%=user.getImage()%>" style width="100%" alt="User Image"> 
                            </a>
                            <div class="profile-det-info">
                                <h3>Full name: <%=user.getFullname()%></h3>
                                <h3>Gender: <%=user.getGender()%></h3>
                                <h3>Email: <%=user.getEmail()%></h3>
                                <h3>Phone: <%=user.getPhone()%></h3>


                                <div class="patient-details">
                                    <h5 class="mb-0"></h5>
                                </div>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>

        </div>

    </div>
</div>
<%
    }
%>


