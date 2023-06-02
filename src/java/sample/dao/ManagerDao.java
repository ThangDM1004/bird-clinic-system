/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import sample.utils.Utils;

/**
 *
 * @author TranPhu
 */
public class ManagerDao {
//    public static void main(String[] args) {
//        int doctorCount = countDoctors();
//        int patientCount = countPatient();
//        int customerCount = countCustomer();
//        int staffCount= countStaff();
//        System.out.println("Số lượng bác sĩ: " + doctorCount);
//        System.out.println("Số lượng bệnh nhân: " + patientCount);
//        System.out.println("Số lượng  khách hàng: " + customerCount);
//        System.out.println("Số lượng nhân viên: " + staffCount);
//    }
    public static int countDoctors() {
        int doctorCount = 0 ;
        Connection cn= null;
        try {
            cn = Utils.getConnection();
            String sql = "SELECT COUNT(*) AS doctor_count FROM tbl_Account where role_id =3 ";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
           
                
            if (rs.next()) {
                doctorCount = doctorCount + rs.getInt("doctor_count");
                
            }
        } catch (Exception e) {

        }

        return doctorCount;
        
    }
    public static int countCustomer() {
        int customerCount = 0 ;
        Connection cn= null;
        try {
            cn = Utils.getConnection();
            String sql = "SELECT COUNT(*) AS customer_count FROM tbl_Account where role_id =4 ";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
           
                
            if (rs.next()) {
                customerCount = customerCount + rs.getInt("customer_count");
                
            }
        } catch (Exception e) {

        }

        return customerCount;
    }
    public static int countStaff() {
        int staffCount = 0 ;
        Connection cn= null;
        try {
            cn = Utils.getConnection();
            String sql = "SELECT COUNT(*) AS staff_count FROM tbl_Account where role_id =2 ";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
           
                
            if (rs.next()) {
                staffCount = staffCount + rs.getInt("staff_count");
                
            }
        } catch (Exception e) {

        }

        return staffCount;
    }
    
    
    public static int countPatient() {
        int Patient_count = 0 ;
        Connection cn= null;
        try {
            cn = Utils.getConnection();
            String sql = "SELECT COUNT(*) AS patient_count from tbl_Patient_Bird ";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
           
                
            if (rs.next()) {
                Patient_count = Patient_count + rs.getInt("patient_count");
                
            }
        } catch (Exception e) {

        }

        return Patient_count;
    }
        public static int countAppointment() {
        int Appointment_count = 0 ;
        Connection cn= null;
        try {
            cn = Utils.getConnection();
            String sql = "SELECT COUNT(*) AS booking_count from tbl_Booking ";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
           
                
            if (rs.next()) {
                Appointment_count = Appointment_count + rs.getInt("booking_count");
                
            }
        } catch (Exception e) {

        }

        return Appointment_count;
    }
}
