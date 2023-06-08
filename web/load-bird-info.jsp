<%-- 
    Document   : load-bird-info
    Created on : Jun 8, 2023, 12:12:35 PM
    Author     : MSI AD
--%>

<%@page import="sample.dto.PatientDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.PatientDAO"%>
<%@page import="sample.dto.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

        <!-- Favicons -->
        
    </head>
    <body>
        <%
            HttpSession s = request.getSession();
            UserDTO user = (UserDTO) s.getAttribute("account");
            PatientDAO dao = new PatientDAO();
            String selectedOption = request.getParameter("selectedOption");
            List<PatientDTO> listBird = dao.getBird(user.getUsername());
        %>
        <div class="row form-row">
            <%
                for (PatientDTO list : listBird) {
                    String name = list.getName();
                //    if (list.getName() == selectedOption) {
            %>
            <div class="col-12 col-md-12">
                <div class="form-group">
                    <div class="change-avatar">
                        <div class="profile-img">
                            <img src="<%= list.getImage()%>" alt="User Image">
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
                    <input type="text" class="form-control" value="<%= list.getName()%>">
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="form-group">
                    <label>Species</label>
                    <input type="text" class="form-control" value="<%= dao.getSpecies(list.getSpecies_id())%>">
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="form-group">
                    <label>Age</label>
                    <div>
                        <input type="text" class="form-control datetimepicker" value="<%= list.getAge()%>">
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="form-group">
                    <label>Gender</label>
                    <input type="text" class="form-control datetimepicker" value="<%= list.getGender()%>">
                </div>
            </div>

            <div class="submit-section">
                <button type="submit" class="btn btn-primary submit-btn">Save Changes</button>
            </div>
            <%
              //      }
                }
            %>

            <!-- /Profile Settings Form -->
        </div>
        <script src="assets/js/jquery.min.js"></script>

        <!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Sticky Sidebar JS -->
        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

        <!-- Custom JS -->
        <script src="assets/js/script.js"></script>
    </body>
</html>
