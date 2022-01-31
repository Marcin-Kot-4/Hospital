package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;


public interface DoctorRepository extends JpaRepository<Doctor, Long> {

    Doctor findDoctorByUserId(Long userId);
}
