package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Referral;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReferralRepository extends JpaRepository<Referral, Long> {
    List<Referral> findAllByPatientUserLogin(String login);
    Referral getById(Long prescriptionId);
}
