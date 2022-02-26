package br.com.pi.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@EqualsAndHashCode(of = { "id" })
public class Aluno {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(nullable = false)
	private String matricula;

	@Column(nullable = false)
	private String nome;

	@Column(nullable = false)
	private String nascimento;
		
	@ManyToOne
    @JoinColumn(name = "idProfessor", nullable=false, referencedColumnName = "id" )
	private Professor professor;
	
	@ManyToOne
	@JoinColumn(name="idCurso", nullable=false, referencedColumnName = "id")
	private Curso curso;

}
