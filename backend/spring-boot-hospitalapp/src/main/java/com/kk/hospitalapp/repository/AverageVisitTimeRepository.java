package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.AverageVisitTime;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AverageVisitTimeRepository extends JpaRepository<AverageVisitTime, Long> {
}
