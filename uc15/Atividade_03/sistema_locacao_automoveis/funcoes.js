function validaret()
{
    // data saída da caixa de texto vem em formato AAAA/MM/DD
    dtsai = new Date(document.getElementById("saida_h").value);
    // data retorno do calendário do formulário vem em formato AAAA-MM-DD
    vret = document.getElementById("ret").value;
    // muda formato data do retonro do calendário AAAA-MM-DD para AAAA/MM/DD usando REGEX
    // motivo da mudança: comparação de mesma data formato AAAA-MM-DD com AAAA/MM/DD resulta diferente
    vret = vret.replace(/-/g,"/");
    dtret = new Date(vret);
    if(dtret >= dtsai)
    {
        document.getElementById("butvalida").disabled = true;
        document.getElementById("subgrava").disabled = false;
    }
    else
    {
        alert("Data de Retorno não pode ser inferior a data de Saída");
    }
}

function verpgto()
{
    if(document.getElementById("pg").checked)
    {
        document.getElementById("subpg").disabled = false;
    }
    else
    {
        document.getElementById("subpg").disabled = true;
    }
}