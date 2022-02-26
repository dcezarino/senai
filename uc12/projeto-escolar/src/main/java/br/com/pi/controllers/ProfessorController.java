package br.com.pi.controllers;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.pi.models.Professor;
import br.com.pi.repositories.ProfessorRepository;

@Controller
public class ProfessorController {
		
	@Autowired
	private ProfessorRepository professorRepository;
	
	@RequestMapping("/cadastrarProfessor")
	public String form() {
		return "professor/form-professor";
	}
		
	@RequestMapping(value = "/cadastrarProfessor", method = RequestMethod.POST)
	public String form(@Valid Professor professor, BindingResult result, RedirectAttributes attributes) {

		if (result.hasErrors()) {
			attributes.addFlashAttribute("mensagem", "Verifique os campos");
			return "redirect:/cadastrarProfessor";
		}
	
		professorRepository.save(professor);
		
		attributes.addFlashAttribute("mensagem", "Professor cadastrado com sucesso");
		return "redirect:/cadastrarProfessor";
	}

	@RequestMapping("professores")
	public ModelAndView listaProfessores() {
		
		ModelAndView modelAndView = new ModelAndView("professor/lista-professor");
		Iterable<Professor> professores = professorRepository.findAll();
		modelAndView.addObject("professores", professores);
		
		return modelAndView;
		
	}

	@RequestMapping("/deletarProfessor")
	public String deletarProfessor(Long id) {
		
		Optional<Professor> professor = professorRepository.findById(id);
		professorRepository.deleteById(professor.get().getId());

		return "redirect:/professores";

	}

	@RequestMapping("/update-professor")
	public ModelAndView editarProfessor(Long id) {
		
		Optional<Professor> professor = professorRepository.findById(id);		
		ModelAndView modelAndView = new ModelAndView("professor/update-professor");
		modelAndView.addObject("professor", professor.get());
		
		return modelAndView;
		
	}
		
	@RequestMapping(value = "/update-professor", method = RequestMethod.POST)
	public String updateProfessor(@Valid Professor professor, BindingResult result, RedirectAttributes attributes) {
		
		professorRepository.save(professor);
		attributes.addFlashAttribute("success", "professor alterado com sucesso!");		

		return "redirect:professores";

	}
	
}
