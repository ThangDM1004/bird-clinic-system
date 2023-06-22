/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.dao.BookingDAO;
import sample.dao.MedicalRecordDAO;
import sample.dao.ServiceDAO;
import sample.dto.MedicalRecordDTO;

/**
 *
 * @author MSI AD
 */
public class MedicalRecordController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try {
            MedicalRecordDAO Mdao = new MedicalRecordDAO();
            String bookingID = request.getParameter("booking_id").trim();
            String patientID = request.getParameter("patient_id").trim();
            String note = request.getParameter("note");
            String fee = request.getParameter("total_fee");
            double total_fee = Double.parseDouble(fee);
            String phone = request.getParameter("phone");
            String date = request.getParameter("date_again");
            LocalDate localDate = null;
            BookingDAO dao = new BookingDAO();

            if (date == null) {
            } else {
                localDate = LocalDate.parse(date);
            }
            Date sqlDate = Date.valueOf(localDate);
            String record_id = Integer.toString(Mdao.MaxId() + 1);
            String index = request.getParameter("number_service");
            int count = Integer.parseInt(index);
            String[] list_service = new String[count];
            for (int i = 0; i < count; i++) {
                String service_id = request.getParameter("service_" + Integer.toString(i + 1));
                list_service[i] = service_id;
            }
            boolean checkMR = false;
            boolean checkSelect = false;
            MedicalRecordDTO mr = new MedicalRecordDTO(record_id, sqlDate, total_fee, phone, note, patientID, bookingID, "", null);
            checkMR = Mdao.CreateMedical(mr);
            for (int i = 0; i < list_service.length; i++) {
                MedicalRecordDTO mr1 = new MedicalRecordDTO(record_id, sqlDate, total_fee, phone, note, patientID, bookingID, dao.getServiceIDByName(list_service[i]), null);

                checkSelect = Mdao.ServiceInMedical(mr1);
            }

            if (checkMR == true && checkSelect == true) {
                boolean checkUpdate = dao.CheckInBooking(bookingID, 4);
                if (checkUpdate) {
                    LocalDate ngayHienTai = LocalDate.now();
                    LocalTime gioHienTai = LocalTime.now();
                    Time gioSQL = Time.valueOf(gioHienTai);
                    boolean checkHistory = dao.InsertHistory(bookingID, 4, ngayHienTai, gioSQL, null);
                    if (checkHistory) {
                        HttpSession session = request.getSession();
                        session.setAttribute("status", "medical");
                        response.sendRedirect("doctor-dashboard.jsp");
                    }
                }
            }

        } catch (Exception e) {

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
