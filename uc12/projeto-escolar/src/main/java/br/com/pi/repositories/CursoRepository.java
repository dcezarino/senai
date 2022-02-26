package br.com.pi.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.com.pi.models.Curso;

@Repository
public interface CursoRepository extends JpaRepository<Curso, Long>{
	
	// Query para a busca
	@Query(value = "select u from Curso u where u.descricao like %?1%")
	List<Curso>findByDescricao(String nome);	
	
}
