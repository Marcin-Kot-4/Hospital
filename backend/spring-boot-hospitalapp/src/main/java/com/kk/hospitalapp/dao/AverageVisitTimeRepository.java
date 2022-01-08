package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.AverageVisitTime;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AverageVisitTimeRepository extends JpaRepository<AverageVisitTime, Long> {
}
