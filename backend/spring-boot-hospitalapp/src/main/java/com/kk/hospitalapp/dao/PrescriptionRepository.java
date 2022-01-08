package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Prescription;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {
}
