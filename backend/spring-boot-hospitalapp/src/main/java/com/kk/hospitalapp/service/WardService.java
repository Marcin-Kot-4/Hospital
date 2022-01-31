package com.kk.hospitalapp.service;

import com.kk.hospitalapp.model.Ward;
import com.kk.hospitalapp.repository.WardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WardService {

    @Autowired
    private WardRepository wardRepository;

    public List<Ward> getAll(){
        return wardRepository.findAll();
    }
}
