<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String vnped = request.getParameter("selnped");
%>
<!DOCTYPE html>
<html>
<head>
<title>Sistema de Controle de Pedidos de Livros - Confirmação de Fechamento</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
<div>Sistema de Controle de Pedidos de Livros - Confirmação de Fechamento</div> <br>
<div>Pedido número <%=vnped%> fechado</div> <br><br>
<form name="frm_volta_menu" action="index.jsp" method="get">
<input type="submit" name="sub_volta_menu" value="Voltar Menu Principal">
</form>
</body>
</html>