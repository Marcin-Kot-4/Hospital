package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DoctorRepository extends JpaRepository<Doctor, Long> {
}
