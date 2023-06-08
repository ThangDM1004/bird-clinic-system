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
import sample.dto.PatientDTO;
import sample.utils.Utils;

/**
 *
 * @author MSI AD
 */
public class PatientDAO {

    private static String INFORMATION_BIRD = "SELECT pb.patient_id,pb.bird_name,pb.patient_id , pb.age, pb.gender, pb.image\n"
            + "FROM tbl_Account a, tbl_Patient_Bird pb, tbl_Species sp\n"
            + "WHERE a.user_name = pb.user_name and pb.species_id = sp.species_id and pb.user_name = ? ";

    public  List<PatientDTO> getBird(String user_name) {
        List<PatientDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ps = conn.prepareStatement(INFORMATION_BIRD);
                ps.setString(1, user_name);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new PatientDTO(
                            rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            null));
                }
            }
        } catch (Exception e) {

        }
        return list;
    }

    private static String SPECIES = "select sp.species_name\n"
            + "from tbl_Patient_Bird pb, tbl_Species sp\n"
            + "where pb.patient_id = sp.species_id and pb.patient_id =?";
    public String getSpecies(String species_id){
        String species_name = "";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            conn = Utils.getConnection();
            if(conn!=null){
                ps = conn.prepareStatement(SPECIES);
                ps.setString(1, species_id);
                rs = ps.executeQuery();
                if(rs.next()){
                    species_name = rs.getString(1);
                }
            }
        }catch(Exception e){
            
        }
        return species_name;
    }
}
