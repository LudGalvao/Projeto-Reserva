package com.Reserva.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Reserva.Entity.Reserva;
import com.Reserva.Service.ReservaService;

@RestController
@RequestMapping("/reservas")
public class ReservaController {

    private final ReservaService reservaService;

    @Autowired
    public ReservaController(ReservaService reservaService) {
        this.reservaService = reservaService;
    }
    
    @GetMapping
    public ResponseEntity<List<Reserva>> listarTodasAsReservas() {
        List<Reserva> reservas = reservaService.listarTodasAsReservas();
        return new ResponseEntity<>(reservas, HttpStatus.OK);
    }

    @PostMapping("/fazer")
    public Reserva fazerReserva(@RequestBody Reserva reserva) {
        return reservaService.fazerReserva(reserva);
    }

    @PutMapping("/alterar")
    public Reserva alterarReserva(@RequestBody Reserva reserva) {
        return reservaService.alterarReserva(reserva);
    }

    @PostMapping("/inicio")
    public void registrarInicioReserva(@RequestBody Reserva reserva) {
        reservaService.registrarInicioReserva(reserva);
    }

    @PostMapping("/fim")
    public void registrarFimReserva(@RequestBody Reserva reserva) {
        reservaService.registrarFimReserva(reserva);
    }
}
