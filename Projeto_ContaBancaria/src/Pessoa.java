// Representação em Código do Diagrama de Classes 
//- Classe Pessoa
/** * @author Rolfi Luz - Senai  *  */

public class Pessoa {


	private String nome;
	private long cpf;
	private ContaBancaria Numconta;

	public Pessoa(String nomeaux, long cpfaux, ContaBancaria contaaux)
	{   
		nome=nomeaux;
		cpf=cpfaux;
		Numconta = contaaux;

	}

	public void imprimirPessoa()
	{
		System.out.println("Nome:" + this.nome);
		System.out.println("CPF:" + this.cpf);
		System.out.println("Número da Conta.");		
		
		Numconta.imprimirContaBancaria();
	}

}
