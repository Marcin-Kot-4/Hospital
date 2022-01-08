package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Patient;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PatientRepository extends JpaRepository<Patient, Long> {
}
