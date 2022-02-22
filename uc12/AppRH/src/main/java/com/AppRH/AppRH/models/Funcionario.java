package com.AppRH.AppRH.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;


@Entity
@EqualsAndHashCode(of = { "id", "email" })
@Getter
@Setter
public class Funcionario implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(nullable = false)
	private String nome;
		
	private String data;
	
	@Column(nullable = false, unique = true)
	private String email;
	
	@OneToMany(mappedBy = "funcionario", cascade = CascadeType.REMOVE)
	private List<Dependente>dependentes;
	
}
