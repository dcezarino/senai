<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>::. Pagina de Inclusao .::</title>
</head>
<body>

<%@ page import="classes.Banco" %>
<%@ page import="classes.Vagas" %>

<a href="./index.jsp"> Home </a>
<a href="./gravar.jsp"> Gravar</a>

<a href="./listar.jsp?lista=0"> Listar Fechadas</a>
<a href="./listar.jsp?lista=1"> Listar Abertas</a>
<a href="./listar.jsp"> Listar Todas</a>

<%
	try{
	
	String gravar= request.getParameter("descricao");
	
	if(gravar!=null || gravar.equals("")==false){
		
		Vagas vg = new Vagas();
		vg.setDescricao(request.getParameter("descricao"));
		vg.setRequisitosObrigatorios(request.getParameter("requisitosObrigatorios"));
		vg.setRequisitosDesejaveis(request.getParameter("requisitosDesejaveis"));
		vg.setRemuneracao(request.getParameter("remuneracao"));
		vg.setBeneficios(request.getParameter("beneficios"));
		vg.setLocalDeTrabalho(request.getParameter("localDeTrabalho"));
		vg.setAberta(Integer.parseInt(request.getParameter("aberta")));

		Banco bd=new Banco();
		
		bd.inserir(vg);
		
		response.sendRedirect("./listar.jsp");
		
	}
	
	} catch(Exception e){		
		
	} finally{ 
		
	}

%>

<form action="./gravar.jsp" method="post">
	ID: <input type="number" name="id" value="" disabled > <br>
	Descricao: <input type="text" name="descricao" required ><br>	
	Requisitos Obrigatorios: <input type="text" name="requisitosObrigatorios" required><br>
	Requisitos Desejaveis:<input type="text" name="requisitosDesejaveis" required><br>
	Remuneracao:<input type="number" name="remuneracao" required><br>
	Beneficios:<input type="text" name="beneficios" required><br>
	Local de Trabalho:<input type="text" name="localDeTrabalho" required><br>
	Aberta:<input type="number" name="aberta" required><br>	
	<input type="submit" value="Enviar">
</form>

</body>
</html>