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
import sample.dto.UserDTO;
import sample.utils.Utils;

/**
 *
 * @author MSI AD
 */
public class UserDAO {

    private static final String querryDoctor = "select *\n"
            + "from tbl_Account\n"
            + "where role_id = 3;";

    public List<UserDTO> doctorList() throws SQLException {
        List<UserDTO> ls = new ArrayList<>();
        UserDTO doctor;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(querryDoctor);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String user_name = rs.getString("user_name");
                    String email = rs.getString("email");
                    String speciality = rs.getString("bio");
                    String phone = rs.getString("phone");
                    String fullname = rs.getString("fullname");
                    String image = rs.getString("image");
                    if (image == null) {
                        image = "assets/img/doctors/blank-profile-picture.png";
                    }
                    boolean status = rs.getBoolean("status");
                    doctor = new UserDTO(user_name, email, phone, fullname, speciality, image, status);
                    ls.add(doctor);
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
        return ls;
    }
}
