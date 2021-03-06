package com.kk.hospitalapp.service;

import com.kk.hospitalapp.model.Hospital;
import com.kk.hospitalapp.repository.HospitalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HospitalService {

    @Autowired
    HospitalRepository hospitalRepository;

    /**
     * Metoda getByHospitalId zwraca id szpitala.
     * @param id
     * @return
     */
    public Hospital getByHospitalId(Long id){
        return hospitalRepository.getById(id);
    }
}
