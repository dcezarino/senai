<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Sistema de Controle de Pedidos de Livros - Fechamento</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
<div>Sistema de Controle de Pedidos de Livros - Fechamento</div>
<br>
<form name="frm_fechamento" action="livr_021.jsp" method="post">
*<select name="selnped" required>
<option value="">--- Selecione Pedido ---</option>
<option value="50022">50022</option>
<option value="50023">50023</option>
<option value="50024">50024</option>
<option value="50025">50025</option>
</select> <br>
<table>
<tr><td><input type="submit" name="sub_fecha_pedido" value="Fechar Pedido"></td>
<td>
</form>
<form name="frm_volta_menu" action="index.jsp" method="get">
<input type="submit" name="sub_volta_menu" value="Voltar para Menu Principal">
</form>
</td></tr>
</table>
</body>
</html>