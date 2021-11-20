package bancoinvest;

public class Main {

	public static void main(String[] args) {
		
		ContaCorrente contaCliente = new ContaCorrente(23456789, 100, 34567, 50, 1, "20/11/2021");
		// Criando um novo cliente e uma nova conta para o mesmo
		Cliente cliente = new Cliente(100, 34567, "123.456.788-90", "José da Silva", "15/06/1995", "Av. dos Autonomistas, 234", "(11)9123-456", 100, "abc#1234", contaCliente);
				
		// Imprimindo os dados do cliente 
		cliente.MostrarCliente();
		
		// Setando o atributo saldo_cc através do valor informado na criação do cliente no atributo saldo (100) 
		contaCliente.AtualizarSaldo(cliente.getSaldo());			
				
		// Imprimindo os dados da conta do cliente
		contaCliente.MostrarConta();
		
		
	}
}