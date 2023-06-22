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
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Date;

import sample.dto.FeedbackDTO;
import sample.utils.Utils;

public class FeedbackDAO {

    public boolean InsertFeedback(FeedbackDTO fb) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                Date myDate = Date.from(Instant.now());
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                String formattedDate = formatter.format(myDate);

                ptm = conn.prepareStatement("INSERT INTO tbl_Feedback(service_id, user_name, rating_star, feedback_content,date,record_id)\n"
                        + "VALUES (?, ?, ?, ?,?,?);");

                ptm.setString(1, fb.getService_id());
                ptm.setString(2, fb.getUser_name());
                ptm.setInt(3, fb.getRating_star());
                ptm.setString(4, fb.getFeedback_content());
                ptm.setString(5, formattedDate);
                ptm.setString(6, fb.getRecord_id());
                ptm.executeUpdate();
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
        return check;
    }

    public FeedbackDTO getFeedback(String medical_record) throws SQLException {
        FeedbackDTO fb = new FeedbackDTO();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("select *\n"
                        + "from tbl_Feedback\n"
                        + "where record_id = ?");
                ptm.setString(1, medical_record.trim());
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String ser_id = rs.getString("service_id");
                    String us_name = rs.getString("user_name");
                    int star = rs.getInt("rating_star");
                    String fb_content = rs.getString("feedback_content");
                    String record_id = rs.getString("record_id");
                    fb = new FeedbackDTO(ser_id, us_name, star, fb_content, null, record_id);
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
        return fb;
    }

    public boolean UpdateFeedback(FeedbackDTO fb) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            Date myDate = Date.from(Instant.now());
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String formattedDate = formatter.format(myDate);
            if (conn != null) {
                ptm = conn.prepareStatement("UPDATE tbl_Feedback\n"
                        + "SET rating_star = ?, feedback_content = ?, date =?\n"
                        + "WHERE record_id = ?;");
                ptm.setInt(1, fb.getRating_star());
                ptm.setString(2, fb.getFeedback_content());
                ptm.setString(3, formattedDate);
                ptm.setString(4, fb.getRecord_id());
                ptm.executeUpdate();
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
        return check;
    }

}
