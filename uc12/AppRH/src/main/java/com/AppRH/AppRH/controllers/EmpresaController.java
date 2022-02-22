package com.AppRH.AppRH.controllers;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.AppRH.AppRH.models.Empresa;
import com.AppRH.AppRH.repository.EmpresaRepository;

@Controller
public class EmpresaController {

	@Autowired
	private EmpresaRepository empresaRepository;

	@RequestMapping("/cadastrarEmpresa")
	public String form() {
		return "empresa/form-empresa";
	}
		
	@RequestMapping(value = "/cadastrarEmpresa", method = RequestMethod.POST)
	public String form(@Valid Empresa empresa, BindingResult result, RedirectAttributes attributes) {

		if (result.hasErrors()) {
			attributes.addFlashAttribute("mensagem", "Verifique os campos");
			return "redirect:/cadastrarEmpresa";
		}

		empresaRepository.save(empresa);
		attributes.addFlashAttribute("mensagem", "Empresa cadastrada com sucesso");
		return "redirect:/cadastrarEmpresa";
	}

	@RequestMapping("/empresas")
	public ModelAndView listaEmpresas() {
		
		ModelAndView modelAndView = new ModelAndView("empresa/lista-empresa");
		Iterable<Empresa> empresas = empresaRepository.findAll();
		modelAndView.addObject("empresas", empresas);
		
		return modelAndView;
		
	}

	@RequestMapping("/empresa/{id}")
	public ModelAndView detalhesEmpresa(@PathVariable("id") long id) {
		
		Optional<Empresa> empresa = empresaRepository.findById(id);
		ModelAndView mv = new ModelAndView("empresa/lista-empresa");
		mv.addObject("empresa", empresa.get());

		return mv;

	}

	@RequestMapping("/deletarEmpresa")
	public String deletarEmpresa(Long id) {
		
		Optional<Empresa> empresa = empresaRepository.findById(id);
		empresaRepository.deleteById(empresa.get().getId());

		return "redirect:/empresas";

	}

	@RequestMapping("/update-empresa")
	public ModelAndView editarEmpresa(long id) {
		
		Optional<Empresa> empresa = empresaRepository.findById(id);
		ModelAndView modelAndView = new ModelAndView("empresa/update-empresa");
		modelAndView.addObject("empresa", empresa.get());
		
		return modelAndView;
		
	}
		
	@RequestMapping(value = "/update-empresa", method = RequestMethod.POST)
	public String updateEmpresa(@Valid Empresa empresa, BindingResult result, RedirectAttributes attributes) {

		empresaRepository.save(empresa);
		attributes.addFlashAttribute("success", "Empresa alterada com sucesso!");

		return "redirect:/empresas";

	}

}
