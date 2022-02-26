package br.com.pi.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.com.pi.models.Aluno;

@Repository
public interface AlunoRepository extends JpaRepository<Aluno, Long>{
		
	// Query para a busca
	@Query(value = "select u from Aluno u where u.nome like %?1%")
	List<Aluno>findByNome(String nome);
	
}
