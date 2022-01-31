package com.kk.hospitalapp.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "average_visit_time")
@Getter
@Setter
public class AverageVisitTime {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "average_visit_time")
    private Float averageVisitTime;

    @Column(name = "visits_number")
    private int visitsNumber;

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
}
