package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Medicine;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MedicineRepository extends JpaRepository<Medicine, Long> {
}
