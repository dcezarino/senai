package classes;

public class Vagas {

	private Integer id;
	private String descricao;
	private String requisitosObrigatorios;
	private String requisitosDesejaveis;
	private String remuneracao;
	private String beneficios;
	private String localDeTrabalho;
	private Integer aberta;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getRequisitosObrigatorios() {
		return requisitosObrigatorios;
	}

	public void setRequisitosObrigatorios(String requisitosObrigatorios) {
		this.requisitosObrigatorios = requisitosObrigatorios;
	}

	public String getRequisitosDesejaveis() {
		return requisitosDesejaveis;
	}

	public void setRequisitosDesejaveis(String requisitosDesejaveis) {
		this.requisitosDesejaveis = requisitosDesejaveis;
	}

	public String getRemuneracao() {
		return remuneracao;
	}

	public void setRemuneracao(String remuneracao) {
		this.remuneracao = remuneracao;
	}

	public String getBeneficios() {
		return beneficios;
	}

	public void setBeneficios(String beneficios) {
		this.beneficios = beneficios;
	}

	public String getLocalDeTrabalho() {
		return localDeTrabalho;
	}

	public void setLocalDeTrabalho(String localDeTrabalho) {
		this.localDeTrabalho = localDeTrabalho;
	}

	public Integer getAberta() {
		return aberta;
	}

	public void setAberta(Integer aberta) {
		this.aberta = aberta;
	}

}
