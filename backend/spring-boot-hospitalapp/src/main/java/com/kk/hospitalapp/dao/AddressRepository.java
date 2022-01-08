package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Address;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AddressRepository extends JpaRepository<Address, Long> {
}
