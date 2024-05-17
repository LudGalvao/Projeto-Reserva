package com.Sistema.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Sistema.demo.Service.ReservaService;
import com.Sistema.demo.entity.Reserva;



@RestController
@RequestMapping("api/reserva")
public class ReservaController {
	
	private final ReservaService reservaService;
	
	@Autowired
	public ReservaController(ReservaService reservaService) {
		this.reservaService = reservaService;
	}
	
	
	
	 @GetMapping
	    public ResponseEntity<List<Reserva>> getAllReserva(){
	        List<Reserva> reservas = reservaService.getAllReserva();
	        if(reservas.isEmpty())
	            return ResponseEntity.notFound().build();
	        return ResponseEntity.ok(reservas);
	    }

}
