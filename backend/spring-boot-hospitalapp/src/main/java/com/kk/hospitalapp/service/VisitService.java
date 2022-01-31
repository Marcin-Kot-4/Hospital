package com.kk.hospitalapp.service;

import com.kk.hospitalapp.model.Visit;
import com.kk.hospitalapp.repository.VisitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VisitService {

    @Autowired
    private VisitRepository visitRepository;

    public List<Visit> getAll(){
        return visitRepository.findAll();
    }

    public List<Visit> getAllPatientVisits(){
        return visitRepository.findAll();
    }

    public Visit save(Visit visit){
        return visitRepository.save(visit);
    }

    public void deleteVisitById(Long visitId) {
        visitRepository.deleteVisitById(visitId);
    }

    public Visit getById(Long visitId){
        return visitRepository.getById(visitId);
    }

//    public Visit save(){
//
//    }

//    public List<Visit> getAllById(){
//
//    }

}
