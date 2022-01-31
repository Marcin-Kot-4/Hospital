package com.kk.hospitalapp.service;

import com.kk.hospitalapp.model.Address;
import com.kk.hospitalapp.model.Role;
import com.kk.hospitalapp.model.User;
import com.kk.hospitalapp.repository.AddressRepository;
import com.kk.hospitalapp.repository.UserRepository;
import com.kk.hospitalapp.web.dto.UserRegistrationDto;
import lombok.AllArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Collection;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final AddressRepository addressRepository;
    private final BCryptPasswordEncoder passwordEncoder;

    /**
     * Metoda save() dodaje użytkownika do bazy danych.
     * @param registrationDto
     * @return
     */
    @Override
    public User save(UserRegistrationDto registrationDto) {
        Address address = new Address(registrationDto.getStreet(),
                registrationDto.getHouseNumber(), registrationDto.getPostcode(), registrationDto.getCity());
        addressRepository.save(address);

        User user = new User(registrationDto.getLogin(), passwordEncoder.encode(registrationDto.getPassword()),
                registrationDto.getName(), registrationDto.getSurname(), registrationDto.getPhoneNumber(),
                registrationDto.getPesel(), registrationDto.getAge(), registrationDto.getSex(), address,
                Arrays.asList(new Role("USER"))); // domyślna rola

        return userRepository.save(user);
    }

    /**
     * Metoda loadUserByUsername() logowanie użytkownika.
     * @param username
     * @return
     * @throws UsernameNotFoundException
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = userRepository.findByLogin(username);
        if (user == null) {
            throw new UsernameNotFoundException("Invalid username or password.");
        }
        return new org.springframework.security.core.userdetails.User(user.getLogin(), user.getPassword(),
                mapRolesToAuthorities(user.getRoles()));
    }

    /**
     * Metoda mapRolesToAuthorities() konwertuje role na obiekt klasy SimpleGrantedAuthority (klasa należąca do Spring Security)
     * @param roles
     * @return
     */
    private Collection<? extends GrantedAuthority> mapRolesToAuthorities(Collection<Role> roles) {
        return roles.stream().map(role -> new SimpleGrantedAuthority(role.getName())).collect(Collectors.toList());
    }
}
