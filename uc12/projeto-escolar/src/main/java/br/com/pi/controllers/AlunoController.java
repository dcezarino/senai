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

import br.com.pi.models.Aluno;
import br.com.pi.models.Curso;
import br.com.pi.models.Professor;
import br.com.pi.repositories.AlunoRepository;
import br.com.pi.repositories.CursoRepository;
import br.com.pi.repositories.ProfessorRepository;

@Controller
public class AlunoController {
	
	
	@Autowired
	private AlunoRepository alunoRepository;
	
	@Autowired
	private CursoRepository cursoRepository;
	
	@Autowired
	private ProfessorRepository professorRepository;
	
	@RequestMapping("/cadastrarAluno")
	public String form() {
		return "aluno/form-aluno";
	}
		
	@RequestMapping(value = "/cadastrarAluno", method = RequestMethod.POST)
	public String form(@Valid Aluno aluno, BindingResult result, RedirectAttributes attributes) {

		if (result.hasErrors()) {
			attributes.addFlashAttribute("mensagem", "Verifique os campos");
			return "redirect:/cadastrarAluno";
		}
	
		alunoRepository.save(aluno);
		
		attributes.addFlashAttribute("mensagem", "Aluno cadastrado com sucesso");
		return "redirect:/cadastrarAluno";
	}

	@RequestMapping("/alunos")
	public ModelAndView listaAlunos() {
		
		ModelAndView modelAndView = new ModelAndView("aluno/lista-aluno");
		Iterable<Aluno> alunos = alunoRepository.findAll();
		modelAndView.addObject("alunos", alunos);
		
		return modelAndView;
		
	}

	@RequestMapping("/deletarAluno")
	public String deletarAluno(Long id) {
		
		Optional<Aluno> aluno = alunoRepository.findById(id);
		alunoRepository.deleteById(aluno.get().getId());

		return "redirect:/alunos";

	}

	@RequestMapping("/update-aluno")
	public ModelAndView editarAluno(Long id) {
		
		Optional<Aluno> aluno = alunoRepository.findById(id);		
		ModelAndView modelAndView = new ModelAndView("aluno/update-aluno");
		modelAndView.addObject("aluno", aluno.get());
		
		return modelAndView;
		
	}
		
	@RequestMapping(value = "/update-aluno", method = RequestMethod.POST)
	public String updateAluno(@Valid Aluno aluno, @Valid Professor professor, @Valid Curso curso, BindingResult result, RedirectAttributes attributes) {
		
		Optional<Professor> newProfessor = professorRepository.findById(aluno.getProfessor().getId().longValue());
		
		Optional<Curso> newCurso = cursoRepository.findById(aluno.getCurso().getId().longValue());
		
		aluno.getProfessor().setNome(newProfessor.get().getNome());		
				
		aluno.getCurso().setDescricao(newCurso.get().getDescricao());
		aluno.getCurso().setQuantidadeAlunos(newCurso.get().getQuantidadeAlunos());		
				
		alunoRepository.save(aluno);
		attributes.addFlashAttribute("success", "Aluno alterado com sucesso!");

		return "redirect:/alunos";

	}
	
		

}
