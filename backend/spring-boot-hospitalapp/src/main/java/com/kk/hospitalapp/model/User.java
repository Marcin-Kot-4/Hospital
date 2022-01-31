package com.kk.hospitalapp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "user", uniqueConstraints = @UniqueConstraint(columnNames = "login"))
// adnotacje Lombok'a - automatycznie generują gettery i settery. (Redukcja 'boilerplate' kodu)
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class User {

    public User(String login, String password, String name, String surname, int phoneNumber, Long pesel,
                int age, String sex, Address address, Collection<Role> roles) {
        this.login = login;
        this.password = password;
        this.name = name;
        this.surname = surname;
        this.phoneNumber = phoneNumber;
        this.pesel = pesel;
        this.age = age;
        this.sex = sex;
        this.address = address;
        this.roles = roles;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    //    Wykorzystanie mechanizmu identyczności (IDENTITY) kolumny do generowania
    //    wartości klucza głównego oznacza odpowiedzialność za generowanie
    //    wartości kluczy głównych przez bazę danych
    @Column(name = "id")
    private Long id;

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

    @ManyToOne
    // address_id - nazwa kolumny w tabeli user
    @JoinColumn(name = "address_id")
    private Address address;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL) // dane wczytywane eagerly "z zapałem"
    @JoinTable(
            name = "users_roles",
            joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn( name = "role_id", referencedColumnName = "id"))
    private Collection<Role> roles;

//    @ManyToOne
//    @JoinColumn(name = "role_id", nullable = false)
//    private Role role;
}
