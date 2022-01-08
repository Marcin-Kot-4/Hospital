package com.kk.hospitalapp.dao;

import com.kk.hospitalapp.entity.Room;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomRepository extends JpaRepository<Room, Long> {
}
