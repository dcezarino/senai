package com.empresa.vaga.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class IndexController {
	
	@RequestMapping(value = "/busca", method=RequestMethod.GET)
	public ModelAndView getIndex() {
		
		ModelAndView modelAndView = new ModelAndView("busca");
		return modelAndView;		
		
	}
	
	@RequestMapping(value = "/busca", method=RequestMethod.POST)
	public ModelAndView postBusca(@RequestParam("buscar") String bsc) {
		
		ModelAndView modelAndView = new ModelAndView("busca");
		modelAndView.addObject("valor", bsc);
		modelAndView.addObject("nome", "MARIANA");
		modelAndView.addObject("idade", "25");
		return modelAndView;		
		
	}

}
