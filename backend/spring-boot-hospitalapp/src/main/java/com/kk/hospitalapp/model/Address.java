package com.kk.hospitalapp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "address")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Address {

    public Address(String street, String houseNumber, String postcode, String city) {
        this.street = street;
        this.houseNumber = houseNumber;
        this.postcode = postcode;
        this.city = city;
    }

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
//    @OneToMany(mappedBy = "address")
//    private Set<User> users;
}
