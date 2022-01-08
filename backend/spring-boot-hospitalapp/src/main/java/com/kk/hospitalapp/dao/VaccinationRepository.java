package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Vaccination;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VaccinationRepository extends JpaRepository<Vaccination, Long>{
}
