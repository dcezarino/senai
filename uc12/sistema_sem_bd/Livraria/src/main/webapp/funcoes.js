/**
 * 
 */

var contador=1;

function LiberaSelecao()
{
	if(contador == 1)
	var selindex = document.getElementById("isbn1").selectedIndex;
	if(contador == 2)
	var selindex = document.getElementById("isbn2").selectedIndex;
	if(contador == 3)
	var selindex = document.getElementById("isbn3").selectedIndex;
	if(selindex > 0)
	{
		switch(contador)
		{
			case 1:
				document.getElementById("isbn2").style.display = 'inherit';
				document.getElementById("qtd2").style.display = 'inherit';
				contador = contador + 1;
				break;
			case 2:
				document.getElementById("isbn3").style.display = 'inherit';
				document.getElementById("qtd3").style.display = 'inherit';
				contador = contador + 1;
				break;
			default:
				alert("Já escolhidos 3 livros.");
		}
	}
	else
	{
		alert("Escolha um livro na caixa de seleção.");
	}

}

function EncerraLivros()
{
	var selindex1 = document.getElementById("isbn1").selectedIndex;
	var selindex2 = document.getElementById("isbn2").selectedIndex;
	var selindex3 = document.getElementById("isbn3").selectedIndex;
	if(contador == 1 && selindex1 > 0 || 
	   contador == 2 && selindex2 > 0 || 
	   contador == 3 && selindex3 > 0)
	{
		document.getElementById("butmaislivros").disabled = true;
		document.getElementById("butencerra").disabled = true;
		document.getElementById("subtotped").disabled = false;
	}
	else
	{
		alert("Livro não escolhido.");
	}
	
}



