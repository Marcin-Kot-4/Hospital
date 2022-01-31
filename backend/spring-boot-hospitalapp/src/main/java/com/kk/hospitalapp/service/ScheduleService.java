package com.kk.hospitalapp.service;

import com.kk.hospitalapp.model.Schedule;
import com.kk.hospitalapp.repository.ScheduleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class ScheduleService {

    @Autowired
    private ScheduleRepository scheduleRepository;

    public Optional<Schedule> getById(Long scheduleId){
        return scheduleRepository.findById(scheduleId);
    }

    public List<Schedule> getAll(){
        return scheduleRepository.findAll();
    }

    public List<Schedule> getByWardId(Long wardId){
        return scheduleRepository.findAllByWardId(wardId);
    }

    public void deleteSheduleById(Long scheduleId) {
        scheduleRepository.deleteScheduleById(scheduleId);
    }

    public Schedule save(Schedule schedule){
        return scheduleRepository.save(schedule);
    }
}
