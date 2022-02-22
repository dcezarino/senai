package com.AppRH.AppRH.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.AppRH.AppRH.models.Empresa;

public interface EmpresaRepository extends JpaRepository<Empresa, Long> {
	
	// Query para a busca
	@Query(value = "select e from Empresa e where e.nomeEmpresa like %?1%")
	List<Empresa> findByNomesEmpresa(String nome);


}
