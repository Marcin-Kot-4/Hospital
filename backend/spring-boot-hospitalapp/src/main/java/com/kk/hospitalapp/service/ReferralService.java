package com.kk.hospitalapp.service;

import com.kk.hospitalapp.model.Referral;
import com.kk.hospitalapp.repository.ReferralRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReferralService {

    @Autowired
    private ReferralRepository referralRepository;

    public List<Referral> findAllByPatientUserLogin(String login){
        return referralRepository.findAllByPatientUserLogin(login);
    }

    public Referral getById(Long referralId){
        return referralRepository.getById(referralId);
    }

    public Referral save(Referral referral) {
        return referralRepository.save(referral);
    }
}
