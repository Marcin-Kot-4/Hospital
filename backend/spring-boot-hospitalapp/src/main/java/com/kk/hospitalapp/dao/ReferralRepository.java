package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Referral;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReferralRepository extends JpaRepository<Referral, Long> {
}
