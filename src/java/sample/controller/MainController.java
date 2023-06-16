/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MSI AD
 */
@MultipartConfig()
public class MainController extends HttpServlet {

    private static String LOGIN = "login";
    private static String LOGIN_CONTROLLER = "LoginController";
    private static String LOGOUT = "logout";
    private static String LOGOUT_CONTROLLER = "LogoutController";
    private static String REGISTER = "register";
    private static String REGISTER_CONTROLLER = "RegisterController";
    private static String UPDATESERVICE = "updateService";
    private static String UPDATESERVICE_CONTROLLER = "UpdateServiceController";
    private static String ADDSERVICE = "Add";
    private static String ADDSERVICE_CONTROLLER = "AddServiceController";
    private static String UPDATE_DOCTOR_SETTING_PROFILE = "update-doctor-profile-setting";
    private static String UPDATE_DOCTOR_SETTING_PROFILE_CONTROLLER = "UpdateDoctorSettingProfileController";
    private static String CHANGEPASS = "changepass";
    private static String CHANGEPASS_CONTROLLER = "ChangePassController";
    private static String UPDATE_BIRD = "Update";
    private static String UPDATE_BIRD_CONTROLLER = "UpdateBirdController";
    private static String ADD_BIRD = "Add Bird";
    private static String ADD_BIRD_CONTROLLER = "AddBirdController";
    private static String DELETE_BIRD = "Delete";
    private static String DELETE_BIRD_CONTROLLER = "DeleteBirdController";
    private static String BOOKING_SELECTDAY = "Next";
    private static String BOOKING_SELECTDAY_CONTROLLER = "BookingSelectDayController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = null;
        try {
            String actions = request.getParameter("action");
            if (actions.equals(REGISTER)) {
                url = REGISTER_CONTROLLER;
            } else if (actions.equals(LOGIN)) {
                url = LOGIN_CONTROLLER;
            } else if (actions.equals(LOGOUT)) {
                url = LOGOUT_CONTROLLER;
            } else if (actions.equals(UPDATESERVICE)) {
                url = UPDATESERVICE_CONTROLLER;
            } else if (actions.equals(ADDSERVICE)) {
                url = ADDSERVICE_CONTROLLER;
            } else if (actions.equals(UPDATE_DOCTOR_SETTING_PROFILE)) {
                url = UPDATE_DOCTOR_SETTING_PROFILE_CONTROLLER;
            } else if (actions.equals(CHANGEPASS)) {
                url = CHANGEPASS_CONTROLLER;
            } else if (actions.equals(UPDATE_BIRD)) {
                url = UPDATE_BIRD_CONTROLLER;
            } else if (actions.equals(ADD_BIRD)) {
                url = ADD_BIRD_CONTROLLER;
            } else if (actions.equals(DELETE_BIRD)) {
                url = DELETE_BIRD_CONTROLLER;
            } else if (actions.equals(BOOKING_SELECTDAY)) {
                url = BOOKING_SELECTDAY_CONTROLLER;
            } else {
                url = "error-404.jsp";
            }
        } catch (Exception e) {
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
