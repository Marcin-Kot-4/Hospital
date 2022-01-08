package com.kk.hospitalapp.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "referral")
@Getter
@Setter
public class Referral {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "patient_id", nullable = false)
    private Patient patient;

    @ManyToOne
    @JoinColumn(name = "doctor_id", nullable = false)
    private Patient doctor;

    @ManyToOne
    @JoinColumn(name = "medical_history_id", nullable = false)
    private MedicalHistory medicalHistory;

    @Column(name = "access_code")
    private Long accessCode;

    @Column(name = "issued")
    private Date issued;

    @Column(name = "exhibitor")
    private String exhibitor;

    @Column(name = "diagnosis")
    private String diagnosis;

    @Column(name = "other_informations")
    private String other_informations;
}
