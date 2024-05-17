package com.Reserva.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Reserva.Entity.Reserva;

@Repository
public interface ReservaRepository extends JpaRepository<Reserva, Integer> {
	
}