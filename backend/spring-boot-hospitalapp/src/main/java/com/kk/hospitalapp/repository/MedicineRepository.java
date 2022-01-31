package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Medicine;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MedicineRepository extends JpaRepository<Medicine, Long> {
    Medicine findByMedicineName(String medicineName);
}
