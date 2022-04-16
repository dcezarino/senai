<?php
include("Cobrancas.php");
$cob = new Cobrancas;
$cob->setNumero($_REQUEST["numres"]);
$cob->ConectaBD();
// inserir abaixo a chamada ao método para registrar pagamento
$cob->RegistrarPagto();
?>
<html>
<head>
<link rel="stylesheet" href="estilos.css">
</head>
<body>
<div>Cobrança - Registro de Pagamento</div>
<div>Número da Reserva <?php echo($cob->getNumero())?></div>
<div>Registro de pagamento realizado !!!</div><p>
<form name="manut" action="index.html" method=get>
<input name="volta" type=submit value="Voltar">
</form>
</body>
</html>
