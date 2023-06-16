package sample.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.dto.MedicalRecordDTO;
import sample.utils.Utils;

public class MedicalRecordDAO {

    public String get_image_doctor(String doctor) throws SQLException {
        String url = "";
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("select  a.image\n"
                        + "from tbl_Account a join tbl_Booking b on a.user_name = b.username_doctor and b.username_doctor = ?");
                ptm.setString(1, doctor);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    url = rs.getString("image");
                }
            }
        } catch (ClassNotFoundException | SQLException e) {

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

    public String get_image_patient(String doctor) throws SQLException {
        String url = "";
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("select  a.image\n"
                        + "from tbl_Account a join tbl_Booking b on a.user_name = b.username_customer and b.username_customer = ?");
                ptm.setString(1, doctor);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    url = rs.getString("image");
                }
            }
        } catch (ClassNotFoundException | SQLException e) {

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

    public String getSpec(String username_doc) throws SQLException {
        String spec = "";
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("select *\n"
                        + "from tbl_Account\n"
                        + "where role_id = '3' and user_name = ?");
                ptm.setString(1, username_doc);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    spec = rs.getString("bio");
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

        return spec;
    }

    public double getFeeSer(String ser_id) throws SQLException {
        double fee = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("select *\n"
                        + "from tbl_Service\n"
                        + "where service_id = ?");
                ptm.setString(1, ser_id);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    fee = rs.getDouble("fee");
                }
            }
        } catch (ClassNotFoundException | SQLException e) {

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

        return fee;
    }

    public List select_Service(String record_id) throws SQLException {
        List ls = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("select service_id\n"
                        + "from tbl_Select_Service\n"
                        + "where tbl_Select_Service.record_id = ?");
                ptm.setString(1, record_id);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    ls.add(rs.getString(1));
                }
            }
        } catch (ClassNotFoundException | SQLException e) {

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

        return ls;
    }

    public List<MedicalRecordDTO> getMR(String username) throws SQLException {
        List<MedicalRecordDTO> ls = new ArrayList();
        MedicalRecordDTO a = new MedicalRecordDTO();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            ptm = conn.prepareStatement("select  tbl_Medical_Record.patient_id,date_again , note, tbl_Booking.username_doctor\n"
                    + "from tbl_Medical_Record join tbl_Booking on tbl_Medical_Record.booking_id = tbl_Booking.booking_id\n"
                    + "where tbl_Booking.username_customer = ?");
            ptm.setString(1, username);
            rs = ptm.executeQuery();
            while (rs.next()) {
                String patient_id = rs.getString("patient_id").trim();
                Date date_again = rs.getDate("date_again");
                String note = rs.getString("note");
                String username_doc = rs.getString("username_doctor");

            }
            return ls;
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
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
        return null;
    }

}
