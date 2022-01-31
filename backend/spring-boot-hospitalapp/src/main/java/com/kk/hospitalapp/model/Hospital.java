package com.kk.hospitalapp.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "hospital")
@Getter
@Setter
public class Hospital {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "hospital_name")
    private String hospitalName;

    @OneToOne
    // address_id - nazwa kolumny w tabeli hospital
    @JoinColumn(name = "address_id", nullable = false)
    private Address address;

//    @OneToMany(mappedBy = "hospital")
//    private Set<Ward> wards;
//
//    @OneToMany(mappedBy = "hospital")
//    private Set<Visit> visits;
//
//    @OneToMany(mappedBy = "hospital")
//    private Set<AverageVisitTime> averageVisitTimes;
}
