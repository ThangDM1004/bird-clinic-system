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
public class UserDTO {
    private String user_name;
    private String password;
    private String email;
    private String phone;
    private String date_of_birth;
    private String fullname;
    private String gender;
    private String bio;
    private String image;
    private boolean status;
    private int role_id;

    public UserDTO() {
    }

    public UserDTO(String user_name, String password, String email, String phone, String date_of_birth, String fullname, String gender, String bio, String image, boolean status, int role_id) {
        this.user_name = user_name;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.date_of_birth = date_of_birth;
        this.fullname = fullname;
        this.gender = gender;
        this.bio = bio;
        this.image = image;
        this.status = status;
        this.role_id = role_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }
    
    
}
