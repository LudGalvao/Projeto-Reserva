package com.Reserva.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "evento")
public class Evento {

    @Id
    @Column(name = "evento_id", nullable = false)
    private Integer eventoId;

    @Column(name = "evento_descricao", length = 100)
    private String eventoDescricao;

    // Getters and Setters

    public Integer getEventoId() {
        return eventoId;
    }

    public void setEventoId(Integer eventoId) {
        this.eventoId = eventoId;
    }

    public String getEventoDescricao() {
        return eventoDescricao;
    }

    public void setEventoDescricao(String eventoDescricao) {
        this.eventoDescricao = eventoDescricao;
    }
}

