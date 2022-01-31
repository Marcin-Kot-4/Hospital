package com.kk.hospitalapp.web.dto;

import com.kk.hospitalapp.model.Role;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Collection;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserRegistrationDto {
    private String login;
    private String password;
    private String name;
    private String surname;
    private int phoneNumber;
    private Long pesel;
    private int age;
    private String sex;
    private String street;
    private String houseNumber;
    private String postcode;
    private String city;
    private Collection<Role> roles;
}
