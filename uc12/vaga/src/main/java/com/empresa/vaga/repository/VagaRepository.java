package com.empresa.vaga.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.empresa.vaga.model.Vaga;

@Repository
public interface VagaRepository extends JpaRepository<Vaga, Long> {

}
