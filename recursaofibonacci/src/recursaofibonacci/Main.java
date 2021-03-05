package recursaofibonacci;

public class Main {

	public static void main(String[] args) {

		Fibonacci fibonacci = new Fibonacci();
		for (int i = 0; i <= 10; i++) {
			System.out.println("Fibonacci de " + i + " valor = " + fibonacci.calcularFibonacci(i));
		}

	}

}
