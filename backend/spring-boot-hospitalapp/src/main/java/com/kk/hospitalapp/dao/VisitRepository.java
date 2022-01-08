package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Visit;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VisitRepository extends JpaRepository<Visit, Long> {
}
