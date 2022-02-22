package com.AppRH.AppRH.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@EqualsAndHashCode(of = { "id", "email" })
@Getter
@Setter
public class Candidato {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(unique = true)
	private String rg;
	
	@Column(nullable = false)
	private String nomeCandidato;
	
	@Column(nullable = false, unique = true)
	private String email;
	
	@ManyToOne
	private Vaga vaga;
	
}
