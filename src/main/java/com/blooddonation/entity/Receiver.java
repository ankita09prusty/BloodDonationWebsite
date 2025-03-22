package com.blooddonation.entity;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Entity
@Data
@Table(name = "receivers")
public class Receiver {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "blood_group", nullable = false)
    private String bloodGroup;

    @Column(name = "hospital_name", nullable = false)
    private String hospitalName;

    @Column(name = "patient_name", nullable = false)
    private String patientName;

    @Column(name = "age", nullable = false)
    private int age;

    @NotBlank(message = "Address is required")  // Ensure address is not blank
    private String address;
}
