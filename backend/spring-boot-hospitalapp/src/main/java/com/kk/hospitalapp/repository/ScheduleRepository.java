package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Schedule;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ScheduleRepository extends JpaRepository<Schedule, Long> {
    List<Schedule> findAllByWardId(Long wardId);

    void deleteScheduleById(Long scheduleId);
}
