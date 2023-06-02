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

    private static final String querryService = "select tbl_Service.service_id, service_name, fee, icon_link, status, avg(rating_star) as avgStar "
            + "from tbl_Service left join tbl_Feedback on tbl_Service.service_id = tbl_Feedback.service_id "
            + "group by tbl_Service.service_id, tbl_Service.service_name, tbl_Service.fee, icon_link, status";

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
                    int fee = rs.getInt("fee");
                    String icon_link = rs.getString("icon_link");
                    boolean status = rs.getBoolean("status");
                    float avgStar = rs.getFloat("avgStar");
                    ser = new ServiceDTO(ser_id, ser_name, fee, icon_link, status, avgStar);
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
