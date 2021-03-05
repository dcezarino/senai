package recursaofibonacci;

public class Fibonacci {
	
	public int calcularFibonacci(int numero) {
		if (numero < 2) {
			return numero;
		} else {
			return calcularFibonacci(numero-1) + calcularFibonacci(numero-2);
		}
		
	}

}
