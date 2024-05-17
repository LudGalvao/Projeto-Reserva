package com.Reserva.Entity;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "reserva")
public class Reserva {

    @Id
    @Column(name = "reserva_id", nullable = false)
    private Integer reservaId;

    @Column(name = "status", nullable = false)
    private Integer status;

    @ManyToOne
    @JoinColumn(name = "data_comeco_id", nullable = false)
    private Horario dataComeco;

    @ManyToOne
    @JoinColumn(name = "data_fim_id", nullable = false)
    private Horario dataFim;

    @Column(name = "sala_id", nullable = false)
    private Integer salaId;

    @ManyToOne
    @JoinColumn(name = "evento_id", nullable = false)
    private Evento evento;

    // Getters and Setters

    public Integer getReservaId() {
        return reservaId;
    }

    public void setReservaId(Integer reservaId) {
        this.reservaId = reservaId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Horario getDataComeco() {
        return dataComeco;
    }

    public void setDataComeco(Horario dataComeco) {
        this.dataComeco = dataComeco;
    }

    public Horario getDataFim() {
        return dataFim;
    }

    public void setDataFim(Horario dataFim) {
        this.dataFim = dataFim;
    }

    public Integer getSalaId() {
        return salaId;
    }

    public void setSalaId(Integer salaId) {
        this.salaId = salaId;
    }

    public Evento getEvento() {
        return evento;
    }

    public void setEvento(Evento evento) {
        this.evento = evento;
    }
}
