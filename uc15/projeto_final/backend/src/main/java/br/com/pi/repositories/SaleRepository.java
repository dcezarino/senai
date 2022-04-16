package br.com.pi.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.com.pi.dto.SaleSuccessDTO;
import br.com.pi.dto.SaleSumDTO;
import br.com.pi.entities.Sale;

@Repository
public interface SaleRepository extends JpaRepository<Sale, Long>{
	
	// JPQL (Linguagem adaptada para a realidade do Java)
	@Query("SELECT new br.com.pi.dto.SaleSumDTO(obj.seller, SUM(obj.amount)) "
			+ " FROM Sale AS obj GROUP BY obj.seller")
	List<SaleSumDTO> amountGroupedBySeller();
	
	
	@Query("SELECT new br.com.pi.dto.SaleSuccessDTO(obj.seller, SUM(obj.visited), SUM(obj.deals)) "
			+ " FROM Sale AS obj GROUP BY obj.seller")
	List<SaleSuccessDTO> successGroupedBySeller();

}
