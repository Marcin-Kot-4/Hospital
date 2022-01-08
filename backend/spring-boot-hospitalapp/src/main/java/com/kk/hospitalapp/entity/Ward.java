package com.kk.hospitalapp.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "ward")
@Getter
@Setter
public class Ward {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    // hospital_id - nazwa kolumny w tabeli ward
    @JoinColumn(name = "hospital_id", nullable = false)
    private Hospital hospital;

    @Column(name = "ward_name")
    private String wardName;

    @Column(name = "building")
    private String building;

    @OneToMany(mappedBy = "ward")
    private Set<Room> rooms;

    @OneToMany(mappedBy = "ward")
    private Set<Schedule> schedules;

    @OneToMany(mappedBy = "ward")
    private Set<Doctor> doctors;

    @OneToMany(mappedBy = "ward")
    private Set<Visit> visits;

    @OneToMany(mappedBy = "ward")
    private Set<AverageVisitTime> averageVisitTimes;
}
