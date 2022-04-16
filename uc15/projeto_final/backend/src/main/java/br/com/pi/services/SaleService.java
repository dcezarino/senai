package br.com.pi.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.pi.dto.SaleDTO;
import br.com.pi.dto.SaleSuccessDTO;
import br.com.pi.dto.SaleSumDTO;
import br.com.pi.entities.Sale;
import br.com.pi.repositories.SaleRepository;
import br.com.pi.repositories.SellerRepository;

@Service
public class SaleService {
	
	// Injetar a dependencia de forma transparente pelo framework
	@Autowired
	private SaleRepository saleRepository;
	
	@Autowired	
	private SellerRepository sellerRepository;
	
	// Nao efetua lock no banco
	@Transactional(readOnly = true)
	public Page<SaleDTO> findAll(Pageable pageable ){
		sellerRepository.findAll();
		Page<Sale> result = saleRepository.findAll(pageable);
		return result.map(x -> new SaleDTO(x));
	}	
	
	@Transactional(readOnly = true)
	public List<SaleSumDTO> amountGroupedBySeller(){
		return saleRepository.amountGroupedBySeller();
		
	}
	
	@Transactional(readOnly = true)
	public List<SaleSuccessDTO> successGroupedBySeller(){
		return saleRepository.successGroupedBySeller();
		
	}


}
