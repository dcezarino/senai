
public class Main {

	public static void main(String[] args) {

		Aluno aluno1 = new Aluno("João Sampaio", 8.5, 7.5, 5.5);
		System.out.println("A nota do alunoa " + aluno1.getNome() + " é " + aluno1.calcularMedia());

	}

}
