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

import br.com.pi.models.Curso;
import br.com.pi.models.Professor;
import br.com.pi.repositories.CursoRepository;
import br.com.pi.repositories.ProfessorRepository;

@Controller
public class CursoController {
		
	@Autowired
	private CursoRepository cursoRepository;
	
	@Autowired
	private ProfessorRepository professorRepository;

	
	@RequestMapping("/cadastrarCurso")
	public String form() {
		return "curso/form-curso";
	}
		
	@RequestMapping(value = "/cadastrarCurso", method = RequestMethod.POST)
	public String form(@Valid Curso curso, BindingResult result, RedirectAttributes attributes) {

		if (result.hasErrors()) {
			attributes.addFlashAttribute("mensagem", "Verifique os campos");
			return "redirect:/cadastrarCurso";
		}
	
		cursoRepository.save(curso);
		
		attributes.addFlashAttribute("mensagem", "Curso cadastrado com sucesso");
		return "redirect:/cadastrarCurso";
	}

	@RequestMapping("cursos")
	public ModelAndView listaCursoes() {
		
		ModelAndView modelAndView = new ModelAndView("curso/lista-curso");
		Iterable<Curso> cursos = cursoRepository.findAll();
		modelAndView.addObject("cursos", cursos);
		
		return modelAndView;
		
	}

	@RequestMapping("/deletarCurso")
	public String deletarCurso(Long id) {
		
		Optional<Curso> curso = cursoRepository.findById(id);
		cursoRepository.deleteById(curso.get().getId());

		return "redirect:/cursos";

	}

	@RequestMapping("/update-curso")
	public ModelAndView editarCurso(Long id) {
		
		Optional<Curso> curso = cursoRepository.findById(id);		
		ModelAndView modelAndView = new ModelAndView("curso/update-curso");
		modelAndView.addObject("curso", curso.get());
		
		return modelAndView;
		
	}
		
	@RequestMapping(value = "/update-curso", method = RequestMethod.POST)
	public String updateCurso(@Valid Curso curso, BindingResult result, RedirectAttributes attributes) {	
		
		Optional<Professor> newProfessor = professorRepository.findById(curso.getProfessor().getId());
		
		curso.getProfessor().setNome(newProfessor.get().getNome());
		
		cursoRepository.save(curso);
		attributes.addFlashAttribute("success", "curso alterado com sucesso!");		

		return "redirect:cursos";

	}
	
}
