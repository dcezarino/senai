// Representação em Código do Diagrama de Classes 
//- Classe Conta Bancária
/** * @author Rolfi Luz - Senai  *  */

public class ContaBancaria {
	long numero;
	double saldo;
	java.util.Date dataAbertura;

	public ContaBancaria(long numeroaux, double saldoaux){
		numero=numeroaux;
		saldo=saldoaux;
		//Pegar a data de hoje
		dataAbertura = new java.util.Date(); 

	}

	public void imprimirContaBancaria()
	{
		System.out.println("Numero:" + this.numero);
		System.out.println("Saldo:" + this.saldo);
		System.out.println("Data de Abertura:" + this.dataAbertura.toString() );
	}

	public boolean criar(){ return false; }
	public boolean bloquear(){ return false; }
	public boolean desbloquear(){ return false; }
	public boolean creditar(){ return false; }
	public boolean debitar(){ return false; }


}
