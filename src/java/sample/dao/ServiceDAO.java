/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import sample.dto.ServiceDTO;
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
    public static void main(String[] args) {
        ServiceDAO dao = new ServiceDAO();
        List<ServiceDTO> list = dao.getListService();
        for (ServiceDTO s : list) {
            System.out.println(s);
        }
    }
}
