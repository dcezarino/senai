package bancoinvest;

public class ContaCorrente {

	private Integer numero_doc_cc;
	private Integer agencia_cc;
	private Integer conta_cc;
	private float valor_cc;
	private Integer tipo_cc;
	private String data_ocorrencia_cc;
	private float saldo_cc;
	Cliente titular;


	public Integer getNumero_doc_cc() {
		return numero_doc_cc;
	}

	public void setNumero_doc_cc(Integer numero_doc_cc) {
		this.numero_doc_cc = numero_doc_cc;
	}

	public Integer getAgencia_cc() {
		return agencia_cc;
	}

	public void setAgencia_cc(Integer agencia_cc) {
		this.agencia_cc = agencia_cc;
	}

	public Integer getConta_cc() {
		return conta_cc;
	}

	public void setConta_cc(Integer conta_cc) {
		this.conta_cc = conta_cc;
	}

	public float getValor_cc() {
		return valor_cc;
	}

	public void setValor_cc(float valor_cc) {
		this.valor_cc = valor_cc;
	}

	public Integer getTipo_cc() {
		return tipo_cc;
	}

	public void setTipo_cc(Integer tipo_cc) {
		this.tipo_cc = tipo_cc;
	}

	public String getData_ocorrencia_cc() {
		return data_ocorrencia_cc;
	}

	public void setData_ocorrencia_cc(String data_ocorrencia_cc) {
		this.data_ocorrencia_cc = data_ocorrencia_cc;
	}

	public float getSaldo_cc() {
		return saldo_cc;
	}

	public float AtualizarSaldo(float valor) {
		if (valor < 1) {
			System.err.println("A operação não pode ser processada, valor para depósito deve ser maior que 0");
		} else {
			saldo_cc += valor;
		}

		return saldo_cc;
	}
	
	public String RegistrarOcorrencia() {
		return "Ocorrência Registrada";
	}

}
