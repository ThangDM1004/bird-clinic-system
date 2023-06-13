<%-- 
    Document   : bird-profile
    Created on : Jun 8, 2023, 12:24:27 AM
    Author     : MSI AD
--%>

<%@page import="sample.dto.UserDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.dto.PatientDTO"%>
<%@page import="sample.dao.PatientDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            HttpSession s = request.getSession();
            UserDTO user = (UserDTO) s.getAttribute("account");
            PatientDAO dao = new PatientDAO();
            int count = 0;
            List<PatientDTO> listBird = dao.getBird(user.getUsername());
        %>

        <select id="select" onchange="sendOption()">
            <%
                for (PatientDTO x : listBird) {
            %>
            <option value="<%= x.getName()%>"> <%= x.getName()%></option>    
            <%
                }
            %>
        </select>

        <div  class="card">
            <div style="margin-left: 640px;" class="col-sm-5 col">
                <a href="#Add_Specialities_details" data-toggle="modal"
                   class="btn btn-primary float-right mt-2">Add</a>
            </div>
            <div id="demo" class="card-body">
                <!-- Profile Settings Form -->
                <form action="MainController" method="post" enctype="multipart/form-data">
                    <div class="row form-row">
                        <%
                            for (PatientDTO x : listBird) {
                                count++;
                                String species = dao.getSpecies(x.getSpecies_id());
                        %>
                        <div class="col-12 col-md-12">
                            <div class="form-group">
                                <div class="change-avatar">
                                    <div class="profile-img">
                                        <img src="<%= x.getImage()%>" alt="User Image">
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
                                <input type="text" class="form-control" value="<%= x.getName()%>">
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Species</label>
                                <input type="text" class="form-control" value="<%= species.trim()%>">
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Age</label>
                                <div>
                                    <input type="text" class="form-control datetimepicker" value="<%= x.getAge()%>">
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Gender</label>
                                <input type="text" class="form-control datetimepicker" value="<%= x.getGender()%>">
                            </div>
                        </div>

                        <div class="submit-section">
                          <button name="action" value="Update" type="submit" class="btn btn-primary submit-btn">Update</button>
                        </div>
                        <%
                                if (count == 1) {
                                    break;
                                }
                            }
                        %>

                        <!-- /Profile Settings Form -->
                    </div>
                </form>
            </div>
        </div>

    </body>
</html>
