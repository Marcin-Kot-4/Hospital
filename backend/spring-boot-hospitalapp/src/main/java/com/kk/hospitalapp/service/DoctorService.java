package com.kk.hospitalapp.service;

import com.kk.hospitalapp.model.Doctor;
import com.kk.hospitalapp.model.User;
import com.kk.hospitalapp.repository.DoctorRepository;
import com.kk.hospitalapp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DoctorService {

    @Autowired
    DoctorRepository doctorRepository;

    @Autowired
    UserRepository userRepository;

    public Doctor getDoctorByUserName(String userName) {
        User user = userRepository.findByLogin(userName);
        Long userId = user.getId();
        Doctor doctor = doctorRepository.findDoctorByUserId(userId);
        return doctor;
    }
}
