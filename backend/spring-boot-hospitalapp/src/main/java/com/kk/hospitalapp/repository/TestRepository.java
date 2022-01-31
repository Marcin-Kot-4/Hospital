package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Test;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TestRepository extends JpaRepository<Test, Long> {
}
