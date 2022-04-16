package br.com.pi.services;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.pi.dto.SellerDTO;
import br.com.pi.entities.Seller;
import br.com.pi.repositories.SellerRepository;

@Service
public class SellerService {
	
	// Injetar a dependencia de forma transparente pelo framework
	@Autowired
	private SellerRepository sellerRepository;
		
	public List<SellerDTO> findAll(){
		List<Seller> result = sellerRepository.findAll();
		return result.stream()
				.map(x -> new SellerDTO(x))
				.collect(Collectors.toList());
	}	

}
