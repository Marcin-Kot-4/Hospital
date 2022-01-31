package com.kk.hospitalapp.service;

import com.kk.hospitalapp.model.MedicalHistory;
import com.kk.hospitalapp.repository.MedicalHistoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MedicalHistoryService {

    @Autowired
    MedicalHistoryRepository medicalHistoryRepository;

    public List<MedicalHistory> getAllByPatientUser_Pesel(Long pesel){
        return medicalHistoryRepository.getAllByPatientUserPesel(pesel);
    }

    public MedicalHistory getByPatientUserId(Long patientId){
        return medicalHistoryRepository.getAllByPatientUserId(patientId);
    }
}
