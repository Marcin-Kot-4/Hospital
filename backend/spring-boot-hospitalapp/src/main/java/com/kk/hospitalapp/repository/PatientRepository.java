package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Patient;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PatientRepository extends JpaRepository<Patient, Long> {

    Patient findPatientByUserId(Long userId);
}
