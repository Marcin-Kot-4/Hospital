package com.kk.hospitalapp.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "doctor")
@Getter
@Setter
public class Doctor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "pwz_number")
    private int pwzNumber;

    @Column(name = "specialisation")
    private String specialisation;

    @OneToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name = "ward_id", nullable = false)
    private Ward ward;

//    @OneToOne(mappedBy = "doctor")
//    private MedicalHistory medicalHistory;
//
//    @OneToMany(mappedBy = "doctor")
//    private Set<Referral> referrals;
//
//    @OneToMany(mappedBy = "doctor")
//    private Set<Xray> xrays;
//
//    @OneToMany(mappedBy = "doctor")
//    private Set<Visit> visits;
//
//    @OneToMany(mappedBy = "doctor")
//    private Set<AverageVisitTime> averageVisitTimes;
}
