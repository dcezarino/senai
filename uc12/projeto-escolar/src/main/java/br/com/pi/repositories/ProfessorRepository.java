package br.com.pi.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.com.pi.models.Professor;

@Repository
public interface ProfessorRepository extends JpaRepository<Professor, Long>{
		
	// Query para a busca
	@Query(value = "select u from Professor u where u.nome like %?1%")
	List<Professor>findByNome(String nome);	
	
}
