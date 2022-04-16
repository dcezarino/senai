package com.AppRH.AppRH;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import java.math.BigDecimal;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import com.AppRH.AppRH.models.Vaga;
import com.AppRH.AppRH.controllers.EmpresaController;
import com.AppRH.AppRH.controllers.FuncionarioController;
import com.AppRH.AppRH.controllers.VagaController;
import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;

@DisplayName("Testes do Sistema AppRH")
@TestInstance(Lifecycle.PER_CLASS)
public class ########## extends AppRhApplicationTests {
	
	@Autowired
	private VagaController vc;
	
	@Autowired
	private FuncionarioController fc;
	
	@Autowired
	private EmpresaController ec;

	@DisplayName("Testa se classe não é nula.")
	@Test
	public void contextLoads() throws Exception {
		assertThat(vc).isNotNull();
		assertThat(fc).###########;
		##############.isNotNull();
	}


	// Os dois métodos abaixo instanciam
	// e finalizam o MockMvc. 
	
	@Autowired
	private WebApplicationContext webApplicationContext;
	private MockMvc mockMvc;

	@BeforeAll
	public void setup() {
		mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
		System.out.println("Executa antes da classe all");
	}

	@AfterAll
	public void tearDown() {
		System.out.println("Executa depois da classe all");
		mockMvc = null;
	}

	// Início dos testes de Rotas e de Métodos.
	
	@DisplayName("Teste das Rotas GET: ")
	@Test
	final void testRotas() throws Exception {
		System.out.println("Executando teste de Rotas: ");

		// rota para a raíz do sistema
		mockMvc.perform(get("/")).###Expect(status().isOk());

		// rota que cadastra vaga
		mockMvc.perform(###("/cadastrarVaga")).andExpect(status().isOk());

		// rota que lista vagas
		mockMvc.#######(get("/vagas")).andExpect(status().######);

		// rota detalhes vaga
		#######.perform(get("/####/1")).########(status().isOk());

		// rota que lista funcionários
		mockMvc.perform(get("/############")).andExpect(status().######);

		// rota detalhes funcionario
		###################("/detalhes-funcionario/1")).andExpect(status().isOk());

		// rota que lista empresas
		mockMvc.perform(get("/empresas")).##########################;

		// rota que cadastra vaga
		####Mvc.perform(get("#################")).andExpect(status().isO####;

	}

	@DisplayName("Testa validaSalario(Salário maior que 30000.00)")
	@####
	public void testaSalarioMaiorQue30000() {
		Vaga vaga = new Vaga();
		// Aceita somente o valor zero no primeiro argumento 
		// e valor acima de 30000.00 no segundo.
		// O valor zero é o esperado da função validaSalario() nesses casos.
		assertEquals(new BigDecimal("0"), vaga.validaSalario(new BigDecimal("#######.##")));
	}

	@DisplayName("Testa validaSalario(Salário menor ou igual a 30000.00)")
	@Test
	public void testaSalarioMenorOuIgual30000() {
		Vaga vaga = new Vaga();
		// Só aceita valores iguais nos dois argumentos, 
		// mas precisa ser igual ou menor que 30000.00.
		############(new BigDecimal("30000.00"), ####.validaSalario(new BigDecimal("#####.##")));
	}
	
	
}
