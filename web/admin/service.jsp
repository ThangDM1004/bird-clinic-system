<%-- 
    Document   : service
    Created on : Jun 6, 2023, 5:38:29 PM
    Author     : MSI AD
--%>
<%@page import="sample.dao.ServiceDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sample.dto.ServiceDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>thedearbird - Appointments | Manager</title>


        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo-icon.png">


        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Feathericon CSS -->
        <link rel="stylesheet" href="assets/css/feathericon.min.css">

        <!-- Datatables CSS -->
        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

        <!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--[if lt IE 9]>
                <script src="assets/js/html5shiv.min.js"></script>
                <script src="assets/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="page-wrapper">
            <div class="content container-fluid">

                <!-- Page Header -->
                <div class="page-header">
                    <div class="row">
                        <div class="col-sm-7 col-auto">
                            <h3 class="page-title">Services</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
                                <li class="breadcrumb-item active">Services</li>
                            </ul>
                        </div>
                        <div class="col-sm-5 col">
                            <a href="#Add_Specialities_details" data-toggle="modal"
                               class="btn btn-primary float-right mt-2">Add</a>
                        </div>
                    </div>
                </div>
                <!-- /Page Header -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="datatable table table-hover table-center mb-0">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Services</th>
                                                <th>Price</th>
                                                <th>Rating</th>
                                                <th>Actions</th>
                                                <th>Service status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                List<ServiceDTO> ls = new ArrayList();
                                                ServiceDAO dao = new ServiceDAO();
                                                ls = dao.serviceWithStar();
                                                for (ServiceDTO ser : ls) {
                                                    int index = ls.indexOf(ser);
                                            %>
                                            <tr>
                                                <td><%= ser.getService_id()%></td>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a class="avatar avatar-sm mr-2">
                                                            <img class="avatar-img"
                                                                 src="<%= ser.getIcon_link()%>"
                                                                 alt="Speciality">
                                                        </a>
                                                        <a data-toggle="modal"
                                                           href="#view_specialities_details"><%= ser.getService_name()%></a>
                                                    </h2>
                                                </td>
                                                <td>
                                                    <p><%= ser.getFee()%></p>
                                                </td>
                                                <td>
                                                    <i class="fe fe-star text-warning"></i>
                                                    <%= ser.getRating()%>
                                                </td>
                                                <td>
                                                    <div class="actions">
                                                        <a class="btn btn-sm bg-success-light" data-toggle="modal"
                                                           href="#edit_specialities_details_<%= index%>">
                                                            <i class="fe fe-pencil"></i> Edit
                                                        </a>
                                                    </div>

                                                </td>
                                                <td>
                                                    <div class="status-toggle" class="text-right">
                                                        <input type="checkbox" id="status_1" class="check" checked>
                                                        <label for="status_1" class="checktoggle">checkbox</label>
                                                    </div>
                                                </td>

                                            </tr>
                                            <%
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
        <!-- /Page Wrapper -->


        <!-- Add Modal -->
        <div class="modal fade" id="Add_Specialities_details" aria-hidden="true" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">

                <form name="MainController" action="update" method="POST">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Add Services</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="row form-row">
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>Service Icon</label>
                                            <input type="file" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>Service Image</label>
                                            <input type="file" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row form-row">
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>Service Name</label>
                                            <input style="width: 350px;" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <div class="row form-row">
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>Service Price</label>
                                            <input type="number" placeholder="$" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <div class="row form-row">
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>Service Describe</label>
                                            <textarea type="text" class="form-control"></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="row form-row">
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>Service Details</label>
                                            <textarea style="width: 300px;" type="text" class="form-control"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Add new</button>
                            </form>
                        </div>
                    </div>
                </form>

            </div>
        </div>
        <!-- /ADD Modal -->

        <!-- Edit Details Modal -->
        <%
            for (ServiceDTO ser : ls) {
                int index = ls.indexOf(ser);
        %>
        <div class="modal fade" id="edit_specialities_details_<%= index%>" aria-hidden="true" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit Specialities</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="row form-row">
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Service Icon</label>
                                        <input type="file" class="form-control">
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Service Image</label>
                                        <input type="file" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row form-row">
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Service Name</label>
                                        <input style="width: 350px;" type="text" class="form-control" value="<%= ser.getService_name()%>"> 
                                    </div>
                                </div>
                            </div>

                            <div class="row form-row">
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Service Price</label>
                                        <input type="number" placeholder="$" class="form-control "  value="<%= ser.getFee()%>" >
                                    </div>
                                </div>
                            </div>

                            <div class="row form-row">
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Service Describe</label>
                                        <textarea type="text" class="form-control"> <%= ser.getDescription()%>  </textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-row">
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Service Details</label>
                                        <textarea style="width: 300px;" type="text" class="form-control"> <%= ser.getService_detail()%></textarea>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Save Changes</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <%
            }
        %>
        <!-- /Edit Details Modal -->


        <!-- View Details Modal -->
        <div class="modal fade" id="view_specialities_details" aria-hidden="true" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">View Service</h5>
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
        <!-- /View Details Modal -->
        <!-- Delete Modal -->
        <div class="modal fade" id="delete_modal" aria-hidden="true" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <!--	<div class="modal-header">
                                    <h5 class="modal-title">Delete</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                    </button>
                            </div>-->
                    <div class="modal-body">
                        <div class="form-content p-2">
                            <h4 class="modal-title">Delete</h4>
                            <p class="mb-4">Are you sure want to delete?</p>
                            <button type="button" class="btn btn-primary">Save </button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="assets/js/jquery-3.2.1.min.js"></script>

        <!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Slimscroll JS -->
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <!-- Datatables JS -->
        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/datatables.min.js"></script>

        <!-- Custom JS -->
        <script  src="assets/js/script.js"></script>
        <!-- /Delete Modal -->
    </body>
</html>