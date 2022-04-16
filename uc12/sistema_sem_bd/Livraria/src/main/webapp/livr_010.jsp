<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema de Controle de Pedidos de Livros - Cadastro</title>
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
<div>Sistema de Controle de Pedidos de Livros - Cadastro</div>
<br>
<div>
<form name="frm_inclusao_pedido" action="livr_011.jsp" method="post">
<table name="tabela_inclusao_pedido">
<tr><td colspan=3><label name="numero_pedido">Pedido No. 50025</label></td></tr>
<tr><th>ISBN Livro</th><th>Quantidade</th><th>Preço</th></tr>
<tr><td>*<input type="text" name="isbn1" size=12 maxlength=10 required></td>
<td>*<input type="text" name="qtd1" size=1 maxlength=2 required></td>
<td>*<input type="text" name="prc1" size=1 maxlength=6 required></td></tr>

<tr><td>&nbsp;<input type="text" name="isbn2" size=12 maxlength=10></td>
<td>&nbsp;<input type="text" name="qtd2" size=1 maxlength=2></td>
<td>&nbsp;<input type="text" name="prc2" size=1 maxlength=6></td></tr>

<tr><td>&nbsp;<input type="text" name="isbn3" size=12 maxlength=10></td>
<td>&nbsp;<input type="text" name="qtd3" size=1 maxlength=2></td>
<td>&nbsp;<input type="text" name="prc3" size=1 maxlength=6></td></tr>

<tr>
<th colspan=2><input type="submit" name="sub_totped" value="Total Pedido"></th>
</form>
<th>
<form action="index.jsp" name="frm_volta_menu"cmethod="get">
<input type="submit" name="but_volta_menu" value="Cancelar">
</th></tr>
</form>
</table>
</div>
</body>
</html>
