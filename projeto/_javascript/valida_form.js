// Função para totalizar valor de assinatura mensal
function totaliza() {

  total = 0.00;
  //plano mensal
  if (document.form.planos[0].checked)
    total = total + 85.00;
  //plano quadrimestral
  if (document.form.planos[1].checked)
    total = total + 300.00 / 4;
  //plano anual
  if (document.form.planos[2].checked)
    total = total + 600.00 / 12;
  //Premiere econômico
  if (document.form.premiere[0].checked)
    total = total + 60.00;
  //Premiere controle
  if (document.form.premiere[1].checked)
    total = total + 80.00;
  document.form.total.value = total.toFixed(2);
}

// TEMPORIZADOR PARA CONTAR QUANTO TEMPO A PESSOA FICOU NO SITE
setInterval(contartempo, 1000);

var contador = 1;
function contartempo() {
  document.getElementById("tempo").innerHTML = contador;
  contador++;
}

//VALIDAR COM JSON
function confere_login() {
  let login_json = '{"login": "Usuario"}';
  let v_login = JSON.parse(login_json);
  if (v_login.login == document.form.login.value)
    return true;
  else {
    alert("Login não confere com JSON!");
    document.form.login.focus();
    return false;
  }
}

function confere_senha() {
  let v_senha = JSON.parse('{"senha": "Abc$123"}');
  if (v_senha.senha == document.form.senha.value)
    return true
  else {
    alert("Senha não confere com JSON!")
    document.form.senha.focus()
    return false
  }
}

//Validação com REGEX
function validar_nome() {
  let value = document.getElementById("nome").value;
  // aceita a-z A-Z caracteres especiais - espaço
  let expressao = /^[a-zA-ZéúíóáÉÚÍÓÁèùìòàçÇÈÙÌÒÀõãñÕÃÑêûîôâÊÛÎÔÂëÿüïöäËYÜÏÖÄ\-\ \s]+$/;
  if (!expressao.test(value)) {
    alert('Somente caracteres alfabéticos No nome');
    document.form.nome.focus();
    return false;
  }
  return true;
}

//Função que valida todos os campos
function verificar_campos() {
  let nome = document.getElementById("nome");
  if (validar(nome, "", "Nome") == false) return false;

  let cpf = document.getElementById("cpf");
  if (validar(cpf, "", "CPF") == false) return false;
  let email = document.getElementById("email");
  if (validar(email, "", "Email") == false) return false;
  let cel = document.getElementById("cel");
  if (validar(cel, "", "Celular") == false) return false;
  let nascimento = document.getElementById("nascimento");
  if (validar(nascimento, "", "Nascimento") == false) return false;
  let salario = document.getElementById("salario");
  if (validar(salario, "0,00", "Salário") == false) return false;

  //let sexo = document.getElementById("sexo").value;
  let times = document.getElementById("times").selectedIndex;
  if (times == "0") {
    alert('Conteúdo Times não informado');
    document.getElementById("times").focus();
    return false;
  }

  //Não precisa já está carregado com valores
  //let planos = document.getElementById("planos").value;
  //let premiere = document.getElementById("premiere").value;
  //let total = document.getElementById("total").value;
  let login = document.getElementById("login");
  if (validar(login, "", "Login") == false) return false;

  let senha = document.getElementById("senha");
  if (validar(senha, "", "Senha") == false) return false;


  return true;

}

//Função auxiliar para validar campos sem precisar criar um IF para todos
function validar(campo, valor_inicial, nome_campo) {
  if (campo.value == "" || campo.value == null || valor_inicial == campo.value) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('Conteúdo ' + nome_campo + ' não informado');
    campo.focus();
    return false;
  }
  return true;
}

function validar_tudo() {
  alert("Validando !");
  if (verificar_campos() && validar_nome() && confere_login() && confere_senha()) {
    document.getElementById("butassin").disabled = false;
    return true;
  }

  return false;
}