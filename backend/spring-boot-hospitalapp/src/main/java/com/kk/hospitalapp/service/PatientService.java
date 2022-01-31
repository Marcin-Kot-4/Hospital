package com.kk.hospitalapp.service;

import com.kk.hospitalapp.model.Patient;
import com.kk.hospitalapp.model.User;
import com.kk.hospitalapp.repository.PatientRepository;
import com.kk.hospitalapp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PatientService {

    @Autowired
    PatientRepository patientRepository;

    @Autowired
    UserRepository userRepository;

    public Patient getPatientByUserName(String userName){
        User user = userRepository.findByLogin(userName);
        Long userId = user.getId();
//        System.out.println("userId --------------------------------------------------" + userId);
        Patient patient = patientRepository.findPatientByUserId(userId);
//        System.out.println("patient.getID---------------------------------------------------" + patient.getId());
        return patient;
    }

    public Patient getPatientByUserPesel(Long pesel){
        User user = userRepository.findByPesel(pesel);
        Long userId = user.getId();
//        System.out.println("userId --------------------------------------------------" + userId);
        Patient patient = patientRepository.findPatientByUserId(userId);
//        System.out.println("patient.getID---------------------------------------------------" + patient.getId());
        return patient;
    }
}
