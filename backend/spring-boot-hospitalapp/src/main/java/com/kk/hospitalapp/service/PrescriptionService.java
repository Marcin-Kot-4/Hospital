package com.kk.hospitalapp.service;

import com.kk.hospitalapp.model.Prescription;
import com.kk.hospitalapp.repository.PrescriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PrescriptionService {

    @Autowired
    private PrescriptionRepository prescriptionRepository;

    public List<Prescription> findAllByPatientUserLogin(String login){
        return prescriptionRepository.findAllByPatientUserLogin(login);
    }

    public Prescription getById(Long prescriptionId){
        return prescriptionRepository.getById(prescriptionId);
    }

    public Prescription save(Prescription prescription) {
        return prescriptionRepository.save(prescription);
    }
}
