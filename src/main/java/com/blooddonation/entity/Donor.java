package com.blooddonation.entity;


import jakarta.persistence.*;

@Entity
@Table(name = "donors")
public class Donor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String donorName;
    private String bloodGroup;
    private String location;
    private String state = "Odisha";
    private String city = "Bhubaneswar";
    private String district = "Khordha";

    // Getters and Setters
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getDonorName() {
        return donorName;
    }
    public void setDonorName(String donorName) {
        this.donorName = donorName;
    }
    public String getBloodGroup() {
        return bloodGroup;
    }
    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }
    public String getLocation() {
        return location;
    }
    public void setLocation(String location) {
        this.location = location;
    }
    public String getState() {
        return state;
    }
    public String getCity() {
        return city;
    }
    public String getDistrict() {
        return district;
    }
}
