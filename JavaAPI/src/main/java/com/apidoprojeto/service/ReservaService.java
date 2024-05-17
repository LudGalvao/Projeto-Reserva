package com.Sistema.demo.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.Sistema.demo.Repository.ReservaRepository;
import com.Sistema.demo.entity.Reserva;

import jakarta.transaction.Transactional;

@Service
public class ReservaService {
	private final ReservaRepository reservaRepository;
	
	public ReservaService(ReservaRepository _reservaRepository) {
		this.reservaRepository = _reservaRepository;
	}
	
	@Transactional
	public Reserva fazerReserva(Reserva reserva) {
	     return reservaRepository.save(reserva);
	 }
	
	@Transactional
    public List<Reserva> getAllReserva(){
        return reservaRepository.findAll();
    }
}
