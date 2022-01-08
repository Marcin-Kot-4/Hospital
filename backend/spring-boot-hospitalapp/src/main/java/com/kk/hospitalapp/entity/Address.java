package com.kk.hospitalapp.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "address")
@Getter
@Setter
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "street")
    private String street;

    @Column(name = "house_number")
    private String houseNumber;

    @Column(name = "postcode")
    private String postcode;

    @Column(name = "city")
    private String city;

    // address - nazwa atrybutu będącego obiektem klasy Address znajdującego się w klasie User
    // parametr mappedBy mówi które pole w drugiej klasie odpowiada tej samej relacji
    @OneToMany(mappedBy = "address")
    private Set<User> users;
}
