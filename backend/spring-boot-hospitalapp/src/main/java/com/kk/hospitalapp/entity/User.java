package com.kk.hospitalapp.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "user")
// adnotacje Lombok'a - automatycznie generują gettery i settery. (Redukcja 'boilerplate' kodu)
@Getter
@Setter
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    //    Wykorzystanie mechanizmu identyczności (IDENTITY) kolumny do generowania
    //    wartości klucza głównego oznacza odpowiedzialność za generowanie
    //    wartości kluczy głównych przez bazę danych
    @Column(name = "id")
    private Long id;

    @ManyToOne
    // address_id - nazwa kolumny w tabeli user
    @JoinColumn(name = "address_id", nullable = false)
    private Address address;

    @Column(name = "login")
    private String login;

    @Column(name = "password")
    private String password;

    @Column(name = "name")
    private String name;

    @Column(name = "surname")
    private String surname;

    @Column(name = "phone_number")
    private int phoneNumber;

    @Column(name = "pesel")
    private Long pesel;

    @Column(name = "age")
    private int age;

    @Column(name = "sex")
    private String sex;

    @OneToOne(mappedBy = "user")
    private Doctor doctor;

    @OneToOne(mappedBy = "user")
    private Patient patient;
}
