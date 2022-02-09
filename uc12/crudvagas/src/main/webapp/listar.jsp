<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>::. Pagina de Listagem .::</title>
	</head>
	<body>
	
		<a href="./index.jsp"> Home </a>
		<a href="./gravar.jsp"> Gravar</a>
				
		<a href="./listar.jsp?lista=0"> Listar Fechadas</a>
		<a href="./listar.jsp?lista=1"> Listar Abertas</a>
		<a href="./listar.jsp"> Listar Todas</a>
		
		<%@ page import="classes.Banco" %>
		<%@ page import="classes.Vagas" %>
				
		<%
			Banco bd = new Banco();
		
			try {
				
			int lista = Integer.parseInt(request.getParameter("lista"));
		     
			if(lista==0)
				
				out.println(bd.listar(0));
		    
		    else if(lista==1)
		    	
				out.println(bd.listar(1));
			
		    else
		    	
		    	out.println(bd.listar(2));
			
			} catch(Exception e){
				
				out.println(bd.listar(2));
				
			}
		
		%>
	
	</body>
	
</html>