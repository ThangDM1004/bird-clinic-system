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
import sample.dto.PatientDTO;
import sample.utils.Utils;

/**
 *
 * @author MSI AD
 */
public class PatientDAO {

   private static final String INFORMATION_BIRD = "SELECT pb.patient_id,pb.bird_name,pb.species_id , pb.age, pb.gender, pb.image\n"
            + "FROM tbl_Account a, tbl_Patient_Bird pb, tbl_Species sp\n"
            + "WHERE a.user_name = pb.user_name and pb.species_id = sp.species_id and pb.user_name = ? ";

    public List<PatientDTO> getBird(String user_name) {
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
                    String patient_id = rs.getString("patient_id").trim();
                    String bird_name = rs.getString("bird_name").trim();
                    String species_id = rs.getString("species_id").trim();
                    String age = rs.getString("age").trim();
                    String gender = rs.getString("gender").trim();
                    String image = rs.getString("image");
                    PatientDTO bird = new PatientDTO(patient_id, bird_name, species_id, age, gender, image, user_name);
                    list.add(bird);
                }
            }
        } catch (Exception e) {

        }
        return list;
    }

    private static final String SPECIES = "select sp.species_name\n"
            + "from tbl_Patient_Bird pb, tbl_Species sp\n"
            + "where pb.species_id = sp.species_id and pb.species_id =?";

    public String getSpecies(String species_id) {
        String species_name = "";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ps = conn.prepareStatement(SPECIES);
                ps.setString(1, species_id);
                rs = ps.executeQuery();
                if (rs.next()) {
                    species_name = rs.getString(1);
                }
            }
        } catch (Exception e) {

        }
        return species_name;
    }

    public List<PatientDTO> viewPatientListByDoctorID(String id) throws SQLException {
        List<PatientDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            ps = conn.prepareStatement("select pb.*\n"
                    + "from tbl_Booking b inner join tbl_Patient_Bird pb on b.patient_id = pb.patient_id\n"
                    + "where username_doctor = ?");
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new PatientDTO(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return null;
    }
    private static final String SPECIES_LIST = "SELECT species_name FROM tbl_Species";

    public ArrayList<String> getListSpecies() throws ClassNotFoundException {
        ArrayList<String> list = new ArrayList();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ps = conn.prepareStatement(SPECIES_LIST);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String species_name = rs.getString("species_name");
                    list.add(species_name);
                }
            }
        } catch (Exception e) {
        }
        return list;
    }
    private static final String ADD_BIRD = "INSERT INTO tbl_Patient_Bird(patient_id,bird_name,species_id,age,gender,image,user_name) " + " VALUES(?,?,?,?,?,?,?)";

    public boolean addBird(PatientDTO bird) {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ps = conn.prepareStatement(ADD_BIRD);
                ps.setString(1, bird.getPatient_id());
                ps.setString(2, bird.getName());
                ps.setString(3, bird.getSpecies_id());
                ps.setString(4, bird.getAge());
                ps.setString(5, bird.getGender());
                ps.setString(6, bird.getImage());
                ps.setString(7, bird.getUser_name());
                check = ps.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {

        }
        return check;
    }
    private static final String SPECIES_LIST_ID = "SELECT species_id FROM tbl_Species WHERE species_name = ?";

    public String getIDSpecies(String species_name) throws ClassNotFoundException {
        String id = "";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ps = conn.prepareStatement(SPECIES_LIST_ID);
                ps.setString(1, species_name);
                rs = ps.executeQuery();
                while (rs.next()) {
                    id = rs.getString("species_id");
                }
            }
        } catch (Exception e) {
        }
        return id;
    }
    private static final String MAX_ID_BIRD = "SELECT TOP 1 patient_id FROM tbl_Patient_Bird ORDER BY ID DESC";

    public int MaxId() {
        int maxID = 0;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = Utils.getConnection();
            if (conn != null) {
                ps = conn.prepareStatement(MAX_ID_BIRD);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String max = rs.getString("patient_id").trim();
                     maxID = Integer.parseInt(max);
                }
            }
        } catch (Exception e) {
        }
        return maxID;
    }
}
