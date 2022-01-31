package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Hospital;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HospitalRepository extends JpaRepository<Hospital, Long> {
    Hospital getById(Long id);
}
