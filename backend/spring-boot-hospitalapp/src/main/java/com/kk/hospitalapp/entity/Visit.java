package com.kk.hospitalapp.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Time;

@Entity
@Table(name = "referral")
@Getter
@Setter
public class Visit {

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
    @JoinColumn(name = "ward_id", nullable = false)
    private Patient ward;

    @ManyToOne
    @JoinColumn(name = "hospital_id", nullable = false)
    private Patient hospital;

    @ManyToOne
    @JoinColumn(name = "medical_history_id", nullable = false)
    private MedicalHistory medicalHistory;

    @Column(name = "date")
    private Date date;

    @Column(name = "time")
    private Time time;

    @Column(name = "numer_in_line")
    private int numerInLine;

    @Column(name = "appraisal")
    private Long appraisal;

    @Column(name = "completion")
    private boolean completion;
}
