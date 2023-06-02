/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import sample.dto.UserDTO;
import sample.utils.Utils;

/**
 *
 * @author MSI AD
 */
public class UserDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<UserDTO> getListCustomer() {
        List<UserDTO> list = new ArrayList<>();
        try {
            String query = "SELECT * FROM tbl_Account WHERE role_id = 4";
            conn = new Utils().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                UserDTO user = new UserDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getBoolean(10),
                        rs.getString(11));

                list.add(user);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void signUpAccount(String username, String fullName, String email, String gender, Date dob, String phone, String password) {
        String query = "INSERT INTO tbl_Account VALUES(?,?,?,?,?,?,?,NULL,NULL,1,4)";

        try {
            conn = new Utils().getConnection();
            ps = conn.prepareCall(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setDate(5, dob);
            ps.setString(6, new String(fullName.getBytes("UTF-8"), "UTF-8"));
            ps.setString(7, gender);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public UserDTO checkExistAccount(String username) {
        String query = "SELECT * FROM tbl_Account WHERE user_name = ?";
        try {
            conn = new Utils().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getBoolean(10),
                        rs.getString(11));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public UserDTO checkExistEmail(String email) {
        String query = "SELECT * FROM tbl_Account WHERE email = ?";
        try {
            conn = new Utils().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getBoolean(10),
                        rs.getString(11));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public UserDTO checkExistPhone(String phone) {
        String query = "SELECT * FROM tbl_Account WHERE phone = ?";
        try {
            conn = new Utils().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getBoolean(10),
                        rs.getString(11));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public UserDTO Login(String username, String password) {
        String query = "SELECT * FROM tbl_Account WHERE user_name = ? AND password = ?";
        try {
            conn = new Utils().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getBoolean(10),
                        rs.getString(11));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        System.out.println(dao.Login("doctor1", "1"));
    }
     private static final String LOGIN_GOOGLE = "SELECT email FROM tbl_Account WHERE email = ?";
    public UserDTO checkLogin(String email) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN_GOOGLE);
                ptm.setString(1, email);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String email_ = rs.getString("email");
                   user = new UserDTO("", "", email, "", null, "", "", "", "", true, "");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
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
        return user;
    }
}
