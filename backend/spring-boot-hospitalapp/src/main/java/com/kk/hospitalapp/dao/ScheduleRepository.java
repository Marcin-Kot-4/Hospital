package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Schedule;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ScheduleRepository extends JpaRepository<Schedule, Long> {
}
