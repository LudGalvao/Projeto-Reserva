package com.Reserva.Entity;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "horario_disponibilidade")
public class Horario {

    @Id
    @Column(name = "horario_id", nullable = false)
    private Integer horarioId;

    @Column(name = "horario")
    private LocalDateTime horario;

    @Column(name = "status")
    private Integer status;

    // Getters and Setters

    public Integer getHorarioId() {
        return horarioId;
    }

    public void setHorarioId(Integer horarioId) {
        this.horarioId = horarioId;
    }

    public LocalDateTime getHorario() {
        return horario;
    }

    public void setHorario(LocalDateTime horario) {
        this.horario = horario;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
