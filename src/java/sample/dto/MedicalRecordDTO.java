/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.dto;

import java.sql.Date;

/**
 *
 * @author MSI AD
 */
public class MedicalRecordDTO {

    private String record_id;
    private Date date_again;
    private double total_fee;
    private String phone;
    private String note;
    private String patent_id;
    private String booking_id;

    public MedicalRecordDTO() {
    }

    public MedicalRecordDTO(String record_id, Date date_again, double total_fee, String phone, String note, String patent_id, String booking_id) {
        this.record_id = record_id;
        this.date_again = date_again;
        this.total_fee = total_fee;
        this.phone = phone;
        this.note = note;
        this.patent_id = patent_id;
        this.booking_id = booking_id;
    }

    public String getRecord_id() {
        return record_id;
    }

    public void setRecord_id(String record_id) {
        this.record_id = record_id;
    }

    public Date getDate_again() {
        return date_again;
    }

    public void setDate_again(Date date_again) {
        this.date_again = date_again;
    }

    public double getTotal_fee() {
        return total_fee;
    }

    public void setTotal_fee(double total_fee) {
        this.total_fee = total_fee;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getPatent_id() {
        return patent_id;
    }

    public void setPatent_id(String patent_id) {
        this.patent_id = patent_id;
    }

    public String getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(String booking_id) {
        this.booking_id = booking_id;
    }

}
