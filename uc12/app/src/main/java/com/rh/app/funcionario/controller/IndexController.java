package com.rh.app.funcionario.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView abrirIndex() {
		ModelAndView modelAndView = new ModelAndView("index");

		String mensagem = "Olá, seja bem-vinda(o)!";
		modelAndView.addObject("msg", mensagem);

		return modelAndView;
	}

	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public ModelAndView buscarIndex(@RequestParam("buscar") String buscar) {
		ModelAndView modelAndView = new ModelAndView("index");

		String mensagem = "Resultado da Busca !";
		modelAndView.addObject("msg", mensagem);
		modelAndView.addObject("buscar", buscar);

		return modelAndView;
	}

}