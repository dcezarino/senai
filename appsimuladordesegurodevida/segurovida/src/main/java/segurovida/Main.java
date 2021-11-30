package segurovida;

public class Main {

	public static void main(String[] args) {

	    String line = "\n";
		
		// Executando [Teste 01]
		Segurado maria = new Segurado("Maria da Silva", "20/10/2000", false, "F", 2, 2000, 21);

		System.out.println("=============== Simulador Cálculo de Seguro de Vida [Teste 01] ===============");
		System.out.println("Nome: " + maria.getNome());
		System.out.println("Nascimento: " + maria.getNascimento());
		System.out.println("Idade: " + maria.getIdade());
		System.out.println("Sexo: " + maria.getSexo());
		System.out.println("Fumante: " + maria.isFumante());
		System.out.println("Profissao: " + maria.getProfissao());
		System.out.println("Salario: " + maria.getSalario());
		
		System.out.println("============================ Resultado [Teste 01] ============================");
		maria.CalcularSeguro();

		System.out.println(line);
		
		// Executando [Teste 02]
		Segurado elisa = new Segurado("Elisa Marcondes", "10/05/1965", true, "F", 4, 6000, 56);

		System.out.println("=============== Simulador Cálculo de Seguro de Vida [Teste 02] ===============");
		System.out.println("Nome: " + elisa.getNome());
		System.out.println("Nascimento: " + elisa.getNascimento());
		System.out.println("Idade: " + elisa.getIdade());
		System.out.println("Sexo: " + elisa.getSexo());
		System.out.println("Fumante: " + elisa.isFumante());
		System.out.println("Profissao: " + elisa.getProfissao());
		System.out.println("Salario: " + elisa.getSalario());
		
		System.out.println("============================ Resultado [Teste 02] ============================");
		elisa.CalcularSeguro();
		
		System.out.println(line);
		
		// Executando [Teste 03]
		Segurado pedro = new Segurado("Pedro Marques", "20/10/1995", false, "M", 3, 4000, 26);

		System.out.println("=============== Simulador Cálculo de Seguro de Vida [Teste 03] ===============");
		System.out.println("Nome: " + pedro.getNome());
		System.out.println("Nascimento: " + pedro.getNascimento());
		System.out.println("Idade: " + pedro.getIdade());
		System.out.println("Sexo: " + pedro.getSexo());
		System.out.println("Fumante: " + pedro.isFumante());
		System.out.println("Profissao: " + pedro.getProfissao());
		System.out.println("Salario: " + pedro.getSalario());
		
		System.out.println("============================ Resultado [Teste 03] ============================");
		pedro.CalcularSeguro();
		
		System.out.println(line);
		
		// Executando [Teste 04]
		Segurado edson = new Segurado("Edson de Almeida", "30/11/1970", true, "M", 1, 6000, 50);

		System.out.println("=============== Simulador Cálculo de Seguro de Vida [Teste 04] ===============");
		System.out.println("Nome: " + edson.getNome());
		System.out.println("Nascimento: " + edson.getNascimento());
		System.out.println("Idade: " + edson.getIdade());
		System.out.println("Sexo: " + edson.getSexo());
		System.out.println("Fumante: " + edson.isFumante());
		System.out.println("Profissao: " + edson.getProfissao());
		System.out.println("Salario: " + edson.getSalario());
		
		System.out.println("============================ Resultado [Teste 04] ============================");
		edson.CalcularSeguro();	

	}

}
