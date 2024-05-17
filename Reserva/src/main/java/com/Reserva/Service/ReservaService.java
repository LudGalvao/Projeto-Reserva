package com.Reserva.Service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Reserva.Entity.Reserva;
import com.Reserva.Repository.ReservaRepository;

@Service
public class ReservaService {

    private final ReservaRepository reservaRepository;

    @Autowired
    public ReservaService(ReservaRepository reservaRepository) {
        this.reservaRepository = reservaRepository;
    }

    // Métodos para manipular as reservas

    public Reserva fazerReserva(Reserva reserva) {
        // Lógica para verificar disponibilidade e fazer a reserva
        return reservaRepository.save(reserva);
    }
    
    public List<Reserva> listarTodasAsReservas() {
        return reservaRepository.findAll();
    }

    public Reserva alterarReserva(Reserva reserva) {
        // Lógica para alterar a reserva (apenas se ainda não começou)
        // Exemplo de verificação:
        if (reserva.getDataComeco().getHorario().isAfter(LocalDateTime.now())) {
            return reservaRepository.save(reserva);
        } else {
            // Reserva já começou, não pode ser alterada
            throw new IllegalStateException("Não é possível alterar uma reserva após o início.");
        }
    }

    public void registrarInicioReserva(Reserva reserva) {
        // Lógica para registrar o início da utilização da reserva
        // Por exemplo, atualizar o status da reserva para "em uso"
        reserva.setStatus(1); // Exemplo: 1 significa "em uso"
        reservaRepository.save(reserva);
    }

    public void registrarFimReserva(Reserva reserva) {
        // Lógica para registrar o fim da utilização da reserva
        // Por exemplo, atualizar o status da reserva para "concluída"
        reserva.setStatus(2); // Exemplo: 2 significa "concluída"
        reservaRepository.save(reserva);
    }
}

