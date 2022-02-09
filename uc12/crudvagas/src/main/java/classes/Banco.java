package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Banco {

	// 1 passo abrir conexao
	public Connection getConexao() {

		Connection conexao = null;

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

		} catch (ClassNotFoundException e) {
			System.out.println("Driver não encontrado!" + e);
		}

		try {
			String url = "jdbc:mysql://localhost:3306/dbcrudvagas";
			String user = "root";
			String password = "mysql";

			conexao = DriverManager.getConnection(url, user, password);

		} catch (Exception e) {
			System.out.println("Driver não encontrado!" + e);
		}

		return conexao;

	}

	public String listar(int aberta) {

		String linha = "";

		try {

			Connection conn = getConexao();

			String sql = "SELECT * FROM vagas";

			if (aberta == 1)
				sql = sql + " where aberta=1";
			else if (aberta == 0)
				sql = sql + " where aberta=0";

			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				long idaux = rs.getInt(1);
				String descricaoaux = rs.getString(2);
				String requisitosObrigatoriosaux = rs.getString(3);
				String requisitosDesejaveisaux = rs.getString(4);
				String remuneracaoaux = rs.getString(5);
				String beneficiosaux = rs.getString(6);
				String localDeTrabalhoaux = rs.getString(7);
				String abertaaux = rs.getString(8);

				linha = linha + "<br>" + "Codigo:" + idaux + "- Descricao: " + descricaoaux
						+ "- Requisitos Obrigatorios:" + requisitosObrigatoriosaux + "- Requisitos Desejaveis:"
						+ requisitosDesejaveisaux + "- Remuneracao: " + remuneracaoaux + "- Beneficios: "
						+ beneficiosaux + "- Local de Trabalho:" + localDeTrabalhoaux + "- Aberta:" + abertaaux
						+ " - <a href='./excluir.jsp?id=" + idaux + "'>Excluir</a>" + " - <a href='./editar.jsp?id="
						+ idaux + "'>Editar</a>";
			}

		} catch (Exception e) {
			System.out.println("Erro em Listar:" + e);
		}

		return linha;
	}

	public void inserir(Vagas vg) {
		try {
			Connection conn = getConexao();

			String sql = "Insert into vagas (" + "descricao, requisitosObrigatorios,"
					+ "requisitosDesejaveis, remuneracao, beneficios ," + "localDeTrabalho ,aberta"
					+ ") values(?,?,?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, vg.getDescricao());
			ps.setString(2, vg.getRequisitosObrigatorios());
			ps.setString(3, vg.getRequisitosDesejaveis());
			ps.setString(4, vg.getRemuneracao());
			ps.setString(5, vg.getBeneficios());
			ps.setString(6, vg.getLocalDeTrabalho());
			ps.setInt(7, vg.getAberta());

			ps.execute();

		} catch (Exception e) {
			System.out.println("Erro ao Inserir :" + e);
		}

	}

	public void excluir(int idaux) {
		try {
			Connection conn = getConexao();

			String query = "delete from vagas where id =" + idaux;
			PreparedStatement ps = conn.prepareStatement(query);

			ps.execute();

		} catch (Exception e) {
			System.out.println("Erro ao Excluir:" + e);
		}
	}

	public Vagas buscar(int idaux) {

		Vagas vg = new Vagas();

		try {
			Connection conn = getConexao();

			String sql = "SELECT * FROM vagas where id=" + idaux;
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				vg.setDescricao(rs.getString(2));
				vg.setRequisitosObrigatorios(rs.getString(3));
				vg.setRequisitosDesejaveis(rs.getString(4));
				vg.setRemuneracao(rs.getString(5));
				vg.setBeneficios(rs.getString(6));
				vg.setLocalDeTrabalho(rs.getString(7));
				vg.setAberta(rs.getInt(8));
				vg.setId(rs.getInt(1));
			}

		} catch (Exception e) {
			System.out.println("Erro em Listar:" + e);
		}

		return vg;
	}

	public void editar(Vagas vg) {
		try {
			Connection conn = getConexao();

			String sql = "Update vagas set " + "descricao=?," + "requisitosObrigatorios=?," + "requisitosDesejaveis=?,"
					+ "remuneracao=?," + "beneficios=?," + "localDeTrabalho=?," + "aberta=?" + " where id=? ;";

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, vg.getDescricao());
			ps.setString(2, vg.getRequisitosObrigatorios());
			ps.setString(3, vg.getRequisitosDesejaveis());
			ps.setString(4, vg.getRemuneracao());
			ps.setString(5, vg.getBeneficios());
			ps.setString(6, vg.getLocalDeTrabalho());
			ps.setInt(7, vg.getAberta());
			ps.setInt(8, vg.getId());

			ps.execute();

		} catch (Exception e) {
			System.out.println("Erro ao Editar:" + e);
		}

	}
}
