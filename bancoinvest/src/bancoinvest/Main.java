package bancoinvest;

public class Main {

	public static void main(String[] args) {
		
		Cliente cliente = new Cliente(100, 34567, "123.456.788-90", "José da Silva", "15/06/1995", 
									 "Av. dos Autonomistas, 234", "(11)9123-456", 100, "abc#1234");
		cliente.MostrarCliente();
				
		ContaCorrente contaCorrente = new ContaCorrente();
		contaCorrente.titular = cliente;
		
		contaCorrente.setNumero_doc_cc(23456789);
		contaCorrente.setValor_cc(50);
		contaCorrente.setTipo_cc(1);
		contaCorrente.setData_ocorrencia_cc("20/10/2021");
		contaCorrente.AtualizarSaldo(contaCorrente.titular.getSaldo());
		
		System.out.println("================Dados Conta Corrente===============");
		
		System.out.println("Número Documento: " + contaCorrente.getNumero_doc_cc());
		System.out.println("Agência: " + contaCorrente.titular.getAgencia());
		System.out.println("Conta: " + contaCorrente.titular.getConta());
		System.out.println("Valor: " + contaCorrente.getValor_cc());
		System.out.println("Tipo: " + contaCorrente.getTipo_cc());
		System.out.println("Data Ocorrência: " + contaCorrente.getData_ocorrencia_cc());
		System.out.println("Saldo Anterior: " + contaCorrente.getSaldo_cc());
		contaCorrente.AtualizarSaldo(contaCorrente.getValor_cc());
		System.out.println("Saldo Atualizado: " + contaCorrente.getSaldo_cc());
		System.out.println("Mensagem: " + contaCorrente.RegistrarOcorrencia());		

	}

}
