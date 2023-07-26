/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import sample.dao.UserDAO;
import sample.dto.UserDTO;

/**
 *
 * @author TPTNam
 */
public class AddDocStaffController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();

        try {
            String username = request.getParameter("username");
            String fullname = request.getParameter("fullname");
            String fullname_decode = new String(fullname.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
            String email = request.getParameter("email");

            String gender = request.getParameter("gender");
            String dobString = request.getParameter("dob");
            //Chỗ này đổi này tháng chuỗi sang java date
            SimpleDateFormat inputDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date utilDate = inputDateFormat.parse(dobString);
            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            String spec = request.getParameter("bio");
            Part img = request.getPart("image");
            String role = request.getParameter("role");
            String realPath = request.getServletContext().getRealPath("/assets/img/");
            String filename = "user_image_default.png";
            if (!img.getSubmittedFileName().equals("")) {
                filename = img.getSubmittedFileName();
                img.write(realPath + filename);
            }
            UserDAO dao = new UserDAO();
            UserDTO user = dao.checkExistAccount(username);
            dao.signUpAccountStaffOrDoctor(username, fullname, email, gender, sqlDate, phone, password, spec,"/assets/img/" + filename, role);
            response.sendRedirect("admin/index.jsp");
        } catch (Exception e) {
            e.printStackTrace();
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
