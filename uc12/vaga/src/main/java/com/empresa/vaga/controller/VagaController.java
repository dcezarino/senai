package com.empresa.vaga.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.empresa.vaga.model.Vaga;
import com.empresa.vaga.repository.VagaRepository;

@Controller
public class VagaController {
	
	@Autowired
	VagaRepository vagaRepository;
	
	
	@RequestMapping(value = "/vaga", method=RequestMethod.GET)
	public ModelAndView getVaga() {
		
		ModelAndView modelAndView = new ModelAndView("vaga");
		modelAndView.addObject("vagas", vagaRepository.findAll());
		return modelAndView;		
		
	}
	
	@RequestMapping(value = "/vaga", method=RequestMethod.POST)
	public ModelAndView postVaga(Vaga vaga) {
				
		vagaRepository.save(vaga);
		ModelAndView modelAndView = new ModelAndView("vaga");
		modelAndView.addObject("mensagem", "Gravado com sucesso");
		
		return modelAndView;		
		
	}

}
