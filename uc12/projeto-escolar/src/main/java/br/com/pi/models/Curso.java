package br.com.pi.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@EqualsAndHashCode(of = { "id" })
public class Curso {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String descricao;
	
	@Column(nullable = false)
	private Integer quantidadeAlunos;
	
	@OneToOne
    @JoinColumn(name = "idProfessor",nullable=false, referencedColumnName = "id")
	private Professor professor;
	
	@OneToMany(mappedBy = "curso", cascade = CascadeType.REMOVE)
	private List<Aluno> alunos;

}
