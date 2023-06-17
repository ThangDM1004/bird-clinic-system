<%-- 
    Document   : user-profile
    Created on : Jun 8, 2023, 12:18:08 AM
    Author     : MSI AD
--%>

<%@page import="sample.dao.UserDAO"%>
<%@page import="sample.dto.UserDTO"%>
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
            UserDAO daoUs = new UserDAO();
            UserDTO users = daoUs.getUser(user.getUsername());
        %>

        <div class="card">
            <div class="card-body">

                <!-- Profile Settings Form -->
                <form>
                    <div class="row form-row">
                        <div class="col-12 col-md-12">
                            <div class="form-group">
                                <div class="change-avatar">
                                    <div class="form-group">
                                        <label> CHANGE AVATAR </label>
                                        <input type="file" class="form-control" name="icon" accept="image/jpeg, image/png, image/jpg">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-12">
                            <div class="form-group">
                                <label>Full Name</label>
                                <input type="text" class="form-control" value="<%= user.getFullname()%>">
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Date of Birth</label>
                                <div>
                                    <input type="date" data-date="" data-date-format="DD MMMM YYYY" class="form-control" value="<%= user.getDate_of_birth()%>">
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Gender</label>
                                <select class="form-control select">
                                    <option <% if (user.getGender().trim().equalsIgnoreCase("male")) { %> selected <% } %>>Male</option>
                                    <option <% if (user.getGender().trim().equalsIgnoreCase("female")) { %> selected <% }%>>Female</option>
                                </select>

                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Email ID</label>
                                <input type="email" class="form-control" value="<%= user.getEmail()%>">
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Mobile</label>
                                <input type="text" value="<%= user.getPhone()%>" class="form-control">
                            </div>
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
     <script src="assets/js/checkUpdateValidate.js"></script>
</html>
