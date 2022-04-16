package br.com.pi.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.pi.entities.Seller;

@Repository
public interface SellerRepository extends JpaRepository<Seller, Long>{

}
