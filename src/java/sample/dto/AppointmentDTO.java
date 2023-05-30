/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.dto;

/**
 *
 * @author MSI AD
 */
public class AppointmentDTO {
        private String doctor_name;
     private String service;
     private String user_name;
     private String apointment_date;
     private String apointment_time;
     private String status;

    public AppointmentDTO() {
    }

    public AppointmentDTO(String doctor_name, String service, String user_name, String apointment_date, String apointment_time, String status) {
        this.doctor_name = doctor_name;
        this.service = service;
        this.user_name = user_name;
        this.apointment_date = apointment_date;
        this.apointment_time = apointment_time;
        this.status = status;
    }

    public String getDoctor_name() {
        return doctor_name;
    }

    public void setDoctor_name(String doctor_name) {
        this.doctor_name = doctor_name;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getApointment_date() {
        return apointment_date;
    }

    public void setApointment_date(String apointment_date) {
        this.apointment_date = apointment_date;
    }

    public String getApointment_time() {
        return apointment_time;
    }

    public void setApointment_time(String apointment_time) {
        this.apointment_time = apointment_time;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
     
}
