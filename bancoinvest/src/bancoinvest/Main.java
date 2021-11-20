package bancoinvest;

public class Main {

	public static void main(String[] args) {
		
		
		// Criando um novo cliente e uma nova conta para o mesmo
		Cliente cliente = new Cliente(100, 34567, "123.456.788-90", "José da Silva", "15/06/1995", "Av. dos Autonomistas, 234", "(11)9123-456", 100, "abc#1234", new ContaCorrente(2345678, 100, 34567, 50, 1, "20/11/2021"));
		
		// Setando o atributo saldo_cc através do valor informado na criação do cliente no atributo saldo (100) 
		cliente.getContaCorrente().AtualizarSaldo(cliente.getSaldo());			
		
		// Imprimindo os dados do cliente junto da sua conta
		cliente.MostrarCliente();	
		
	}
}