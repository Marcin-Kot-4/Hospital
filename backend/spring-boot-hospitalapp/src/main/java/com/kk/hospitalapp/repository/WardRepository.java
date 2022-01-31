package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Ward;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WardRepository extends JpaRepository<Ward, Long> {
}
