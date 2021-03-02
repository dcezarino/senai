public class Aluno {

	private String nome;
	private double n1, n2, n3;

	public Aluno(String nome, double n1, double n2, double n3) {
		this.nome = nome;
		this.n1 = n1;
		this.n2 = n2;
		this.n3 = n3;
	}

	public double calcularMedia() {
		return (this.n1 + this.n2 + this.n3) / 3;
	}

	public String getNome() {
		return nome;
	}	

}
