/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.dto.AppointmentDTO;
import sample.utils.Utils;

/**
 *
 * @author MSI AD
 */
public class AppointmentDAO {

    private static final String APPOINTMENT_LIST_DASHBOARD = "SELECT TOP 5 b.username_customer, b.username_doctor, b.date, bs.booking_name, s.service_name, sl.time_slot \n"
            + "FROM tbl_Booking b, tbl_Booking_Status bs, tbl_Booking_Status_Details bsd, tbl_Service s, tbl_Slot sl \n"
            + "WHERE b.booking_id = bsd.booking_id AND bs.booking_status = bsd.booking_status AND b.slot_number = sl.slot_number \n"
            + "				AND b.service_id = s.service_id \n"
            + "ORDER BY b.date DESC";
    private static final String IMAGE_DOCTOR = "select  a.image\n"
            + "from tbl_Account a join tbl_Booking b on a.user_name = b.username_doctor and b.username_doctor = ?";
    private static final String IMAGE_CUS = "select  a.image\n"
            + "from tbl_Account a join tbl_Booking b on a.user_name = b.username_customer and b.username_customer = ?";

    public List<AppointmentDTO> get_list_appointment() throws SQLException {
        List<AppointmentDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(APPOINTMENT_LIST_DASHBOARD);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String user_customer = rs.getString("username_customer");
                    String user_doctor = rs.getString("username_doctor");
                    String date = rs.getString("date");
                    String status = rs.getString("booking_name");
                    String service = rs.getString("service_name");
                    String time = rs.getString("time_slot");
                    list.add(new AppointmentDTO(user_doctor, service, user_customer, date, time, status));
                }
            }
        } catch (Exception e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    public String get_image_doctor(String doctor) throws SQLException {
        String url = "";
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(IMAGE_DOCTOR);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    url = rs.getString("image");
                }
            }
        } catch (Exception e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return url;
    }

    public String get_image_cus(String doctor) throws SQLException {
        String url = "";
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(IMAGE_CUS);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    url = rs.getString("image");
                }
            }
        } catch (Exception e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return url;
    }

}
