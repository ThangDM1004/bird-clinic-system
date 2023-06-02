package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import static sample.dao.ServiceDAO.serviceWithOutStart;
import sample.utils.Utils;
import sample.dto.ServiceDTO;


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
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4), 
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9));
                list.add(s);
            }
            
        } catch (Exception e) {
        }
        return list;
    }
   

    private static final String querryService = "select * from tbl_Service ";
    
    public static List<ServiceDTO> serviceWithOutStart() throws SQLException, ClassNotFoundException{
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
    
    
    
    
     
    }

