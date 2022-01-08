package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.MedicalHistory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MedicalHistoryRepository extends JpaRepository<MedicalHistory, Long> {
}
