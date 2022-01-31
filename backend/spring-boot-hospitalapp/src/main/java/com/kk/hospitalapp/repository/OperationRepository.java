package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Operation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OperationRepository extends JpaRepository<Operation, Long> {
}
