package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Hospital;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HospitalRepository extends JpaRepository<Hospital, Long> {
}
