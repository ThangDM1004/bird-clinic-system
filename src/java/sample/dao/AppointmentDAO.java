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

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

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
                    list.add(new AppointmentDTO("", user_doctor, "", user_customer, null, time, status, 0, "", "", service, date));
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

    public List<AppointmentDTO> getAppointment() throws SQLException {
        AppointmentDAO dao = new AppointmentDAO();
        List<AppointmentDTO> list = dao.getAppointmentNotReady();
        for (AppointmentDTO a : list) {
            a.setStatus(dao.getBookingStatus(a.getBookingID()));
        }
        return list;
    }

    private List<AppointmentDTO> getAppointmentNotReady() throws SQLException {
        List<AppointmentDTO> list = new ArrayList<>();
        try {
            conn = Utils.getConnection();
            ps = conn.prepareStatement("SELECT a.name_doc, a.bio, a.name_cus, a.date, a.time_slot, b.fee, a.booking_id, a.img_doc, a.img_cus\n"
                    + "FROM\n"
                    + "(\n"
                    + "    SELECT a.booking_id, a.name_doc, a.bio, a.name_cus, a.date, b.time_slot, a.img_doc, a.img_cus\n"
                    + "    FROM\n"
                    + "    (\n"
                    + "        SELECT d.booking_id, d.fullname AS name_doc, d.bio, a.fullname AS name_cus, d.date, a.image AS img_cus, d.image AS img_doc\n"
                    + "        FROM tbl_Account a\n"
                    + "        INNER JOIN\n"
                    + "        (\n"
                    + "            SELECT a.fullname, a.bio, b.booking_id, b.username_customer, b.date, a.image\n"
                    + "            FROM tbl_Booking b\n"
                    + "            INNER JOIN tbl_Account a ON b.username_doctor = a.user_name\n"
                    + "        ) AS d ON a.user_name = d.username_customer\n"
                    + "    ) AS a\n"
                    + "    INNER JOIN\n"
                    + "    (\n"
                    + "        SELECT b.booking_id, s.time_slot\n"
                    + "        FROM tbl_Booking b\n"
                    + "        INNER JOIN tbl_Slot s ON b.slot_number = s.slot_number\n"
                    + "    ) AS b ON a.booking_id = b.booking_id\n"
                    + ") AS a\n"
                    + "INNER JOIN\n"
                    + "(\n"
                    + "    SELECT b.booking_id, s.fee\n"
                    + "    FROM tbl_Booking b\n"
                    + "    INNER JOIN tbl_Service s ON b.service_id = s.service_id\n"
                    + ") AS b ON a.booking_id = b.booking_id");
            rs = ps.executeQuery();
            while (rs.next()) {
                AppointmentDTO a = new AppointmentDTO(rs.getString(7), rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), "", rs.getDouble(6), rs.getString(8), rs.getString(9), "", "");
                //a.setStatus(getBookingStatus(a.getBookingID()));
                list.add(a);
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return null;
    }

    private String getBookingStatus(String id) throws SQLException {
        String stt = null;
        List<String> list = new ArrayList<>();
        try {
            conn = Utils.getConnection();
            ps = conn.prepareStatement("select bsd.booking_id,bs.booking_name\n"
                    + "from tbl_Booking_Status_Details bsd inner join tbl_Booking_Status bs on bsd.booking_status=bs.booking_status\n"
                    + "where booking_id = ?");
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getString(2));
            }
            switch (list.size()) {
                case 3:
                    stt = "Complete";
                    break;
                case 2:
                    stt = "Assign";
                    break;
                case 1:
                    stt = "Pending";
                    break;
                default:
                    break;
            }
            return stt;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return null;
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
                ptm.setString(1, doctor);
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
                ptm.setString(1, doctor);
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
