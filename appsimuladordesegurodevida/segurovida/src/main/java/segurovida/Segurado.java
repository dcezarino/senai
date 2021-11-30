package segurovida;

public class Segurado {
	private String nome;
	private String nascimento;
	private boolean fumante;
	private String sexo;
	private int profissao;
	private float salario;
	private int idade;
	private float mensalidade;
	private double cobertura;

	public Segurado(String nome, String nascimento, boolean fumante, String sexo, int profissao, float salario,
			int idade) {
		this.nome = nome;
		this.nascimento = nascimento;
		this.fumante = fumante;
		this.sexo = sexo;
		this.profissao = profissao;
		this.salario = salario;
		this.idade = idade;
	}

	public void CalcularSeguro() {

		// cálculo base do valor mensal
		if (idade >= 18 && idade <= 65 && profissao != 6 && profissao != 7) {

			mensalidade += (salario * 5) / 100;

			// cálculo de acréscimo dependendo do sexo e idade
			if (sexo.equals("F")) {
				if (idade >= 26 && idade <= 45) {
					mensalidade += (salario * 1) / 100;
				}

				if (idade >= 46 && idade <= 65) {
					mensalidade += (salario * 2) / 100;
				}
			}

			if (sexo.equals("M")) {
				if (idade >= 26 && idade <= 45) {
					mensalidade += (salario * 2) / 100;
				}

				if (idade >= 46 && idade <= 65) {
					mensalidade += (salario * 3) / 100;
				}
			}

			// cálculo de acréscimo em caso de fumante
			if (fumante) {
				mensalidade += (salario * 2) / 100;
			}

			// Definição do valor de cobertura
			if (salario > 1500 && salario <= 3000) {
				cobertura = 250000.00;
			}

			if (salario > 3000 && salario <= 6000) {
				cobertura = 350000.00;
			}

			if (salario > 5000) {
				cobertura = 500000.00;
			}

			System.out.println("Valor da Mensalidade: " + this.mensalidade);
			System.out.println("Valor da Cobertura: " + this.cobertura);

		} else {

			if (idade < 18 || idade > 65) {
				System.out.println("Idade invalida para segurado.");
			}

			if (profissao == 6 || profissao == 7) {
				System.out.println("Profissao invalida para segurado.");
			}
		}

	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNascimento() {
		return nascimento;
	}

	public void setNascimento(String nascimento) {
		this.nascimento = nascimento;
	}

	public boolean isFumante() {
		return fumante;
	}

	public void setFumante(boolean fumante) {
		this.fumante = fumante;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public int getProfissao() {
		return profissao;
	}

	public void setProfissao(int profissao) {
		this.profissao = profissao;
	}

	public float getSalario() {
		return salario;
	}

	public void setSalario(float salario) {
		this.salario = salario;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public float getMensalidade() {
		return mensalidade;
	}

	public void setMensalidade(float mensalidade) {
		this.mensalidade = mensalidade;
	}

	public double getCobertura() {
		return cobertura;
	}

	public void setCobertura(double cobertura) {
		this.cobertura = cobertura;
	}

}
