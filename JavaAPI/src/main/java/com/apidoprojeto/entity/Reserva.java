package com.Sistema.demo.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "reserva")
public class Reserva {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "INT", name = "reserva_id", nullable = false)
	private int id;
	
	@Column(columnDefinition = "DATETIME", name = "data_comeco_id", nullable = false)
	private LocalDateTime comeco;
	
	@Column(columnDefinition = "DATETIME", name = "data_fim_id", nullable = false)
	private LocalDateTime fim;
	
	@ManyToOne
	@JoinColumn(name = "horario_id", nullable = false)
	private Horario horario;
	
	@ManyToOne
	@JoinColumn(name = "evento_id", nullable = false)
	private Evento evento;
	
	@ManyToOne
	@JoinColumn(name = "sala_id", nullable = false)
	private Sala sala;
	
	@ManyToOne
	@JoinColumn(name = "resposavel_id", nullable = false)
	private Responsavel resposavel;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDateTime getComeco() {
		return comeco;
	}

	public void setComeco(LocalDateTime comeco) {
		this.comeco = comeco;
	}

	public LocalDateTime getFim() {
		return fim;
	}

	public void setFim(LocalDateTime fim) {
		this.fim = fim;
	}

	public Horario getHorario() {
		return horario;
	}

	public void setHorario(Horario horario) {
		this.horario = horario;
	}

	public Evento getEvento() {
		return evento;
	}

	public void setEvento(Evento evento) {
		this.evento = evento;
	}

	public Sala getSala() {
		return sala;
	}

	public void setSala(Sala sala) {
		this.sala = sala;
	}

	public Responsavel getResposavel() {
		return resposavel;
	}

	public void setResposavel(Responsavel resposavel) {
		this.resposavel = resposavel;
	}
	
}
	
