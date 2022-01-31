package com.kk.hospitalapp.repository;

import com.kk.hospitalapp.model.Room;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomRepository extends JpaRepository<Room, Long> {
}
