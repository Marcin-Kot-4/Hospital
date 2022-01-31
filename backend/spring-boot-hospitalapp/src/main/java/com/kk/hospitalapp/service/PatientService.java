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

    /**
     * Metoda getPatientByUserName() zwraca encje pacjenta po korespondującym id użytkownika.
     * @param userName
     * @return
     */
    public Patient getPatientByUserName(String userName){
        User user = userRepository.findByLogin(userName);
        Long userId = user.getId();
        Patient patient = patientRepository.findPatientByUserId(userId);
        return patient;
    }

    /**
     * Metoda getPatientByUserPesel() zwraca encje pacjenta po korespondującym id użytkownika.
     * @param pesel
     * @return
     */
    public Patient getPatientByUserPesel(Long pesel){
        User user = userRepository.findByPesel(pesel);
        Long userId = user.getId();
        Patient patient = patientRepository.findPatientByUserId(userId);
        return patient;
    }
}
