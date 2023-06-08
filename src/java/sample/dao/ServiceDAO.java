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
import sample.dto.ServiceDTO;
import sample.dto.UserDTO;
import sample.utils.Utils;

/**
 *
 * @author MSI AD
 */
public class ServiceDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<ServiceDTO> getListService() {
        List<ServiceDTO> list = new ArrayList<>();
        try {
            String query = "SELECT * FROM tbl_Service WHERE status = 'true' ORDER BY service_id DESC";
            conn = new Utils().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                ServiceDTO s = new ServiceDTO(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        0);
                list.add(s);
            }

        } catch (Exception e) {
        }
        return list;
    }

    private static final String querryService = "select tbl_Service.service_id, service_name, fee, icon_link, status, avg(rating_star) as avgStar, service_detail, description,image\n"
            + "           from tbl_Service left join tbl_Feedback on tbl_Service.service_id = tbl_Feedback.service_id \n"
            + "           group by tbl_Service.service_id, tbl_Service.service_name, tbl_Service.fee, icon_link, status, service_detail, description, image ";

    public List<ServiceDTO> serviceWithStar() throws SQLException, ClassNotFoundException {
        List<ServiceDTO> listService = new ArrayList<>();
        ServiceDTO ser;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(querryService);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String ser_id = rs.getString("service_id");
                    String ser_name = rs.getString("service_name");
                    float fee = rs.getFloat("fee");
                    String icon_link = rs.getString("icon_link");
                    int status = rs.getInt("status");
                    float avgStar = rs.getFloat("avgStar");
                    String detail = rs.getString("service_detail");
                    String des = rs.getString("description");
                    String img = rs.getString("image");
                    ser = new ServiceDTO(status, ser_id, ser_name, detail, des, fee, icon_link, img, status, avgStar);
                    listService.add(ser);
                }
            }
        } catch (SQLException e) {

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
        return listService;
    }

    public boolean update(ServiceDTO ser) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        boolean check = false;

        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("update tbl_Service\n"
                        + "set service_name = ?, service_detail= ?, description =?, fee = ?, icon_link = ?, image = ?, status = ?\n"
                        + "where service_id = ?");
                ptm.setString(1, ser.getService_name());
                ptm.setString(2, ser.getService_detail());
                ptm.setString(3, ser.getDescription());
                ptm.setFloat(4, ser.getFee());
                ptm.setString(5, ser.getIcon_link());
                ptm.setString(6, ser.getImage());
                ptm.setInt(7, ser.getStatus());
                ptm.setString(8, ser.getService_id());
                check = ptm.execute();

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
            return check;
        }
    }

    public boolean updateWithOutIcon(ServiceDTO ser) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        boolean check = false;

        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("update tbl_Service\n"
                        + "set service_name = ?, service_detail= ?, description =?, fee = ?,  image = ?, status =?\n"
                        + "where service_id = ?");
                ptm.setString(1, ser.getService_name());
                ptm.setString(2, ser.getService_detail());
                ptm.setString(3, ser.getDescription());
                ptm.setFloat(4, ser.getFee());
                ptm.setString(5, ser.getImage());
                ptm.setInt(6, ser.getStatus());
                ptm.setString(7, ser.getService_id());
                check = ptm.execute();

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
            return check;
        }
    }

    public boolean updateWithOutImage(ServiceDTO ser) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        boolean check = false;

        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("update tbl_Service\n"
                        + "set service_name = ?, service_detail= ?, description =?, fee = ?, icon_link = ?, status = ?\n"
                        + "where service_id = ?");
                ptm.setString(1, ser.getService_name());
                ptm.setString(2, ser.getService_detail());
                ptm.setString(3, ser.getDescription());
                ptm.setFloat(4, ser.getFee());
                ptm.setString(5, ser.getIcon_link());
                ptm.setInt(6, ser.getStatus());
                ptm.setString(6, ser.getService_id());
                check = ptm.execute();

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
            return check;
        }
    }

}
