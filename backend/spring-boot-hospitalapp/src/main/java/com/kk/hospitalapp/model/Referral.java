package com.kk.hospitalapp.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "referral")
@Getter
@Setter
public class Referral {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "place")
    private String place;

    @Column(name = "access_code")
    private Long accessCode;

    @Column(name = "issued")
    private LocalDate issued;

    @Column(name = "exhibitor")
    private String exhibitor;

    @Column(name = "diagnosis")
    private String diagnosis;

    @Column(name = "other_informations")
    private String other_informations;

    @ManyToOne
    @JoinColumn(name = "patient_id", nullable = false)
    private com.kk.hospitalapp.model.Patient patient;

    @ManyToOne
    @JoinColumn(name = "doctor_id", nullable = false)
    private com.kk.hospitalapp.model.Doctor doctor;

    @ManyToOne
    @JoinColumn(name = "medical_history_id", nullable = false)
    private MedicalHistory medicalHistory;
}
