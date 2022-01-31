package com.kk.hospitalapp.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "ward")
@Getter
@Setter
public class Ward {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "ward_name")
    private String wardName;

    @Column(name = "building")
    private String building;

    @ManyToOne
    // hospital_id - nazwa kolumny w tabeli ward
    @JoinColumn(name = "hospital_id", nullable = false)
    private Hospital hospital;

//    @OneToMany(mappedBy = "ward")
//    private Set<Room> rooms;
//
//    @OneToMany(mappedBy = "ward")
//    private Set<Schedule> schedules;
//
//    @OneToMany(mappedBy = "ward")
//    private Set<Doctor> doctors;
//
//    @OneToMany(mappedBy = "ward")
//    private Set<Visit> visits;
//
//    @OneToMany(mappedBy = "ward")
//    private Set<AverageVisitTime> averageVisitTimes;
}
