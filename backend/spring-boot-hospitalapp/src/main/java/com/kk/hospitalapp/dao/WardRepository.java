package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Ward;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WardRepository extends JpaRepository<Ward, Long> {
}
