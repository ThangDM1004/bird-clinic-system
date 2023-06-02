/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.dto;

import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author MSI AD
 */
public class AppointmentDTO {
    
    private String bookingID;
    private String doctorName;
    private String speciality;
    private String customerName;
    private Date date;
    private String time;
    private String status;
    private double fee;
    private String imgDoc;
    private String imgCus;

    public AppointmentDTO(String bookingID, String doctorName, String speciality, String customerName, Date date, String time, String status, double fee, String imgDoc, String imgCus) {
        this.bookingID = bookingID;
        this.doctorName = doctorName;
        this.speciality = speciality;
        this.customerName = customerName;
        this.date = date;
        this.time = time;
        this.status = status;
        this.fee = fee;
        this.imgDoc = imgDoc;
        this.imgCus = imgCus;
    }

    public String getBookingID() {
        return bookingID;
    }

    public void setBookingID(String bookingID) {
        this.bookingID = bookingID;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getFee() {
        return fee;
    }

    public void setFee(double fee) {
        this.fee = fee;
    }

    public String getImgDoc() {
        return imgDoc;
    }

    public void setImgDoc(String imgDoc) {
        this.imgDoc = imgDoc;
    }

    public String getImgCus() {
        return imgCus;
    }

    public void setImgCus(String imgCus) {
        this.imgCus = imgCus;
    }

    
    
    
    
}
