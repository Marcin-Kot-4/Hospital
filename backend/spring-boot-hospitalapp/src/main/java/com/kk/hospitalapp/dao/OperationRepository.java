package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Operation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OperationRepository extends JpaRepository<Operation, Long> {
}