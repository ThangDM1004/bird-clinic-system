package sample.dto;

public class ServiceDTO {
<<<<<<< HEAD
    private int id;
    private int service_id;
    private String service_name;
    private String service_detail;
    private String description;
    private float fee;
    private String icon_link;
    private String image;
    private int status;
=======
        private String service_id;
        private String service_name;
        private String service_detail;
        private String description;
        private int fee;
        private String icon_link;
        private String image;
        private boolean status;
        private float rating;
>>>>>>> main

    public ServiceDTO() {
    }

<<<<<<< HEAD
    public ServiceDTO(int id,int service_id, String service_name, String service_detail, String description, float fee, String icon_link, String image, int status) {
        this.id = id;
=======
    public ServiceDTO(String service_id, String service_name, String service_detail, String description, int fee, String icon_link, String image, boolean status, float rating) {
>>>>>>> main
        this.service_id = service_id;
        this.service_name = service_name;
        this.service_detail = service_detail;
        this.description = description;
        this.fee = fee;
        this.icon_link = icon_link;
        this.image = image;
        this.status = status;
<<<<<<< HEAD
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getService_id() {
        return service_id;
    }

    public void setService_id(int service_id) {
=======
        this.rating = rating;
    }

    public ServiceDTO(String service_id, String service_name, int fee, String icon_link, boolean status) {
        this.service_id = service_id;
        this.service_name = service_name;
        this.fee = fee;
        this.icon_link = icon_link;
        this.status = status;
    }

    public ServiceDTO(String service_id, String service_name, int fee, String icon_link, boolean status, float rating) {
        this.service_id = service_id;
        this.service_name = service_name;
        this.fee = fee;
        this.icon_link = icon_link;
        this.status = status;
        this.rating = rating;
    }
    
    

    public String getService_id() {
        return service_id;
    }

    public void setService_id(String service_id) {
>>>>>>> main
        this.service_id = service_id;
    }

    public String getService_name() {
        return service_name;
    }

    public void setService_name(String service_name) {
        this.service_name = service_name;
    }

    public String getService_detail() {
        return service_detail;
    }

    public void setService_detail(String service_detail) {
        this.service_detail = service_detail;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

<<<<<<< HEAD
    public double getFee() {
        return fee;
    }

    public void setFee(float fee) {
=======
    public int getFee() {
        return fee;
    }

    public void setFee(int fee) {
>>>>>>> main
        this.fee = fee;
    }

    public String getIcon_link() {
        return icon_link;
    }

    public void setIcon_link(String icon_link) {
        this.icon_link = icon_link;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

<<<<<<< HEAD
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "ServiceDTO{" + "id=" + id + ", service_id=" + service_id + ", service_name=" + service_name + ", service_detail=" + service_detail + ", description=" + description + ", fee=" + fee + ", icon_link=" + icon_link + ", image=" + image + ", status=" + status + '}';
    }

  
=======
    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public float getRating() {
        return rating;
    }
>>>>>>> main
}
