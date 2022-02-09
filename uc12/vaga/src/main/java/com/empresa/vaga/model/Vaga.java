package com.empresa.vaga.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Vaga {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String nomeVaga;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNomeVaga() {
		return nomeVaga;
	}
	public void setNomeVaga(String nomeVaga) {
		this.nomeVaga = nomeVaga;
	}
	
}
