package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
