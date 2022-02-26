package br.com.pi.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.pi.repositories.AlunoRepository;
import br.com.pi.repositories.CursoRepository;
import br.com.pi.repositories.ProfessorRepository;

@Controller
public class BuscaController {
	
	@Autowired
	private AlunoRepository alunoRepository;
	
	@Autowired
	private CursoRepository cursoRepository;
	
	@Autowired
	private ProfessorRepository professorRepository;
	
	//GET
	@RequestMapping("/")
	public ModelAndView abrirIndex() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	
	//POST
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ModelAndView buscarIndex(@RequestParam("buscar") String buscar, @RequestParam("nome") String nome) {
		
		ModelAndView mv = new ModelAndView("index");
		String mensagem = "Resultados da busca por " + buscar;
		
		if(nome.equals("nomealuno")) {
			mv.addObject("alunos", alunoRepository.findByNome(buscar));
		} else if(nome.equals("nomecurso")) {
			mv.addObject("cursos", cursoRepository.findByDescricao(buscar));
		} else if(nome.equals("nomeprofessor")) {
			mv.addObject("professores", professorRepository.findByNome(buscar));
		} else {
			mv.addObject("alunos", alunoRepository.findByNome(buscar));
			mv.addObject("cursos", cursoRepository.findByDescricao(buscar));
			mv.addObject("professores", professorRepository.findByNome(buscar));
		}
		
		mv.addObject("mensagem", mensagem);
		
		return mv;
	}

}
