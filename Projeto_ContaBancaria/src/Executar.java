//Representação em Código do Diagrama de Objetos
/** * @author Rolfi Luz - Senai  *  */

public class Executar {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ContaBancaria conta=new ContaBancaria(255418,1652.23f);

		Pessoa cliente=new Pessoa("Rafael Meyer",1599854722L,conta);		

		cliente.imprimirPessoa();

	}

}
