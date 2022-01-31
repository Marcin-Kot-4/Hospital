package com.kk.hospitalapp.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "medical_history")
@Getter
@Setter
public class MedicalHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "disease_name")
    private String diseaseName;

    @Column(name = "interview")
    private String interview;

    @Column(name = "start_date_of_treatment")
    private Date startDateOfTreatment;

    @Column(name = "end_date_of_treatment")
    private Date endDateOfTreatment;

    @OneToOne
    @JoinColumn(name = "patient_id", nullable = false)
    private com.kk.hospitalapp.model.Patient patient;

    @OneToOne
    @JoinColumn(name = "doctor_id", nullable = false)
    private Doctor doctor;

//    @OneToMany(mappedBy = "medicalHistory")
//    private Set<Referral> referrals;
//
//    @OneToMany(mappedBy = "medicalHistory")
//    private Set<Xray> xrays;
//
//    @OneToMany(mappedBy = "medicalHistory")
//    private Set<Visit> visits;
}
