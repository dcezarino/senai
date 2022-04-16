<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.text.DecimalFormat"%>
<%
DecimalFormat df = new DecimalFormat("#,##0.00");
String visbn1 = request.getParameter("isbn1");
int vqtd1 = Integer.parseInt(request.getParameter("qtd1"));
float vprc1 = Float.parseFloat(request.getParameter("prc1"));

String visbn2 = "";
if(request.getParameter("isbn2") != "")
	visbn2 = request.getParameter("isbn2");

int vqtd2 = 0;
if(request.getParameter("qtd2") != "")
	vqtd2 = Integer.parseInt(request.getParameter("qtd2"));

float vprc2 = 0;
if(request.getParameter("prc2") != "")
	vprc2 = Float.parseFloat(request.getParameter("prc2"));

String visbn3 = "";
if(request.getParameter("isbn3") != "")
	visbn3 = request.getParameter("isbn3");

int vqtd3 = 0;
if(request.getParameter("qtd3") != "")
	vqtd3 = Integer.parseInt(request.getParameter("qtd3"));

float vprc3 = 0;
if(request.getParameter("prc3") != "")
	vprc3 = Float.parseFloat(request.getParameter("prc3"));

float vtot1 = vqtd1 * vprc1;
float vtot2 = vqtd2 * vprc2;
float vtot3 = vqtd3 * vprc3;

float totped = vtot1 + vtot2 + vtot3;

%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema de Controle de Pedidos de Livros - Confirmação</title>
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
<div>Sistema de Controle de Pedidos de Livros - Confirmação</div> <br>  
<table name="tabela_confirmacao_pedido">
<tr><th colspan=4>Pedido No. 50025</th></tr>
<tr><th>ISBN</th><th>Qtde</th><th>Preço</th><th>Total</th></tr>
<tr><td><%=visbn1%></td>
<td style="text-align:right;"><%=vqtd1%></td>
<td style="text-align:right;"><%=df.format(vprc1)%></td>
<td style="text-align:right;color:blue;"><%=df.format(vtot1)%></td></tr>

<%if(visbn2 != "") {%>
<tr>
<td><%=visbn2%></td>
<td style="text-align:right;"><%=vqtd2%></td>
<td style="text-align:right;"><%=df.format(vprc2)%></td>
<td style="text-align:right;color:blue;"><%=df.format(vtot2)%></td></tr>
<%}%>


<%if(visbn3 != "") {%>
<tr>
<td><%=visbn3%></td>
<td style="text-align:right;"><%=vqtd3%></td>
<td style="text-align:right;"><%=df.format(vprc3)%></td>
<td style="text-align:right;color:blue;"><%=df.format(vtot3)%></td></tr>
<%}%>

<tr><th colspan=3>Total do Pedido</th>
<th style="text-align:right;color:orange;"><%=df.format(totped)%></th></tr>

<tr><th colspan=3>
<form name="frm_confirma" action="livr_012.jsp" method="post">
<input type="submit" name="sub_confirma" value="Confirmar Pedido">
</form></th>
<th colspan=3>
<form name="frm_volta_menu" action="index.jsp" method="get">
	<input type="submit" name="sub_volta_menu" value="Cancelar">
</form></th>
</tr></table>
</body>
</html>