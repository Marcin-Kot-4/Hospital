package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Prescription;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {
    List<Prescription> findAllByPatientUserLogin(String login);
    Prescription getById(Long prescriptionId);
}
