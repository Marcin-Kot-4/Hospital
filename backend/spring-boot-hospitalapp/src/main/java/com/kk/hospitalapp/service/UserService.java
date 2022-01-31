package com.kk.hospitalapp.service;

import com.kk.hospitalapp.model.User;
import com.kk.hospitalapp.web.dto.UserRegistrationDto;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {

    User save(UserRegistrationDto registrationDto);
}
