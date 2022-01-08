package com.kk.hospitalapp.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "doctor")
@Getter
@Setter
public class Doctor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @OneToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name = "ward_id", nullable = false)
    private Ward ward;

    @Column(name = "pwz_number")
    private int pwzNumber;

    @Column(name = "specialisation")
    private String specialisation;

    @OneToOne(mappedBy = "doctor")
    private MedicalHistory medicalHistory;

    @OneToMany(mappedBy = "doctor")
    private Set<Referral> referrals;

    @OneToMany(mappedBy = "doctor")
    private Set<Xray> xrays;

    @OneToMany(mappedBy = "doctor")
    private Set<Visit> visits;

    @OneToMany(mappedBy = "doctor")
    private Set<AverageVisitTime> averageVisitTimes;
}
