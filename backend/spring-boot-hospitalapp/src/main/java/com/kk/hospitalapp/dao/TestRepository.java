package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Test;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TestRepository extends JpaRepository<Test, Long> {
}
