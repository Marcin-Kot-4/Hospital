package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Visit;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VisitRepository extends JpaRepository<Visit, Long> {
    Visit getById(Long visitId);
    void deleteVisitById(Long visitId);
}
