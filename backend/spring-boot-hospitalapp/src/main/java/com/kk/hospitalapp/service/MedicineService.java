package com.kk.hospitalapp.service;

import com.kk.hospitalapp.model.Medicine;
import com.kk.hospitalapp.repository.MedicineRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MedicineService {

    @Autowired
    MedicineRepository medicineRepository;

    public Medicine getByMedicineName(String medicineName) {
        return medicineRepository.findByMedicineName(medicineName);
    }
}
