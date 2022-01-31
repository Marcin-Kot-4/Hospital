package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.MedicalHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MedicalHistoryRepository extends JpaRepository<MedicalHistory, Long> {
    List<MedicalHistory> getAllByPatientUserPesel(Long pesel);
    MedicalHistory getAllByPatientUserId(Long patientId);
}
