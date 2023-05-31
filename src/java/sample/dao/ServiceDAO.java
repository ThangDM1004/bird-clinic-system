package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.dto.ServiceDTO;
import sample.utils.Utils;

public class ServiceDAO {

    private static final String querryService = "select * from tbl_Service ";
    private static final String querryStar = "select AVG(rating_star) as avgStar  from tbl_Feedback where service_id= ?";

    public List<ServiceDTO> serviceWithOutStar() throws SQLException, ClassNotFoundException {
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
                    int fee = rs.getInt("fee");
                    String icon_link = rs.getString("icon_link");
                    boolean status = rs.getBoolean("status");
                    ser = new ServiceDTO(ser_id, ser_name, fee, icon_link, status);
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

    public List<ServiceDTO> serviceWithStar(List<ServiceDTO> ls) throws SQLException, ClassNotFoundException {
        List<ServiceDTO> listService = new ArrayList<>();
        ServiceDTO ser;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                for (ServiceDTO service : ls) {
                    ptm = conn.prepareStatement(querryStar);
                    ptm.setString(1, service.getService_id());
                    rs = ptm.executeQuery();
                    ser = new ServiceDTO(service.getService_id(), service.getService_name(), service.getFee(), service.getIcon_link(), service.isStatus(), rs.getFloat("avgStar"));
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

}
