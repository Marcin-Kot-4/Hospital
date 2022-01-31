package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Vaccination;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VaccinationRepository extends JpaRepository<Vaccination, Long>{
}
