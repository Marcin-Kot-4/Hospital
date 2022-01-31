package com.kk.hospitalapp.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "patient")
@Getter
@Setter
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @OneToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

//    @OneToOne(mappedBy = "patient")
//    private MedicalHistory medicalHistory;
//
//    @OneToMany(mappedBy = "patient")
//    private Set<Referral> referrals;
//
//    @OneToMany(mappedBy = "patient")
//    private Set<Xray> xrays;
//
//    @OneToMany(mappedBy = "patient")
//    private Set<Visit> visits;
//
//    @OneToMany(mappedBy = "patient")
//    private Set<AverageVisitTime> averageVisitTimes;
}
