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

  let telefone = document.getElementById("telefone");
  if (validar(telefone, "", "Telefone") == false) return false;

  let celular = document.getElementById("celular");
  if (validar(celular, "", "Celular") == false) return false;

  let cep = document.getElementById("cep");
  if (validar(cep, "", "Cep") == false) return false;

  let rua = document.getElementById("rua");
  if (validar(rua, "", "Rua") == false) return false;

  let numero = document.getElementById("numero");
  if (validar(numero, "", "Numero") == false) return false;

  let complemento = document.getElementById("complemento");
  if (validar(complemento, "", "Complemento") == false) return false;

  let bairro = document.getElementById("bairro");
  if (validar(bairro, "", "Bairro") == false) return false;

  let cidade = document.getElementById("cidade");
  if (validar(cidade, "", "Cidade") == false) return false;

  let uf = document.getElementById("uf");
  if (validar(uf, "", "Uf") == false) return false;

  let ibge = document.getElementById("ibge");
  if (validar(ibge, "", "Ibge") == false) return false;

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
  if (verificar_campos() && validar_nome()) {
    document.getElementById("butassin").disabled = false;
    return true;
  }
  return false;
}

// Funções para validar os campos de acordo com o CEP informado
function limpa_formulário_cep() {
  //Limpa valores do formulário de cep.
  document.getElementById('rua').value = ("");
  document.getElementById('bairro').value = ("");
  document.getElementById('numero').value = ("");
  document.getElementById('complemento').value = ("");
  document.getElementById('cidade').value = ("");
  document.getElementById('uf').value = ("");
  document.getElementById('ibge').value = ("");
}

function meu_callback(conteudo) {
  if (!("erro" in conteudo)) {
    //Atualiza os campos com os valores.
    document.getElementById('rua').value = (conteudo.logradouro);
    document.getElementById("bairro").value = (conteudo.bairro);
    document.getElementById('cidade').value = (conteudo.localidade);
    document.getElementById('uf').value = (conteudo.uf);
    document.getElementById('ibge').value = (conteudo.ibge);
  } //end if.
  else {
    //CEP não Encontrado.
    limpa_formulário_cep();
    alert("CEP não encontrado.");
  }
}

function pesquisacep(valor) {

  //Nova variável "cep" somente com dígitos.
  var cep = valor.replace(/\D/g, '');

  //Verifica se campo cep possui valor informado.
  if (cep != "") {

    //Expressão regular para validar o CEP.
    var validacep = /^[0-9]{8}$/;

    //Valida o formato do CEP.
    if (validacep.test(cep)) {

      //Preenche os campos com "..." enquanto consulta webservice.
      document.getElementById('rua').value = "...";
      document.getElementById('bairro').value = "...";
      document.getElementById('cidade').value = "...";
      document.getElementById('uf').value = "...";
      document.getElementById('ibge').value = "...";

      //Cria um elemento javascript.
      var script = document.createElement('script');

      //Sincroniza com o callback.
      script.src = 'https://viacep.com.br/ws/' + cep + '/json/?callback=meu_callback';

      //Insere script no documento e carrega o conteúdo.
      document.body.appendChild(script);

    } //end if.
    else {
      //cep é inválido.
      limpa_formulário_cep();
      alert("Formato de CEP inválido.");
    }
  } //end if.
  else {
    //cep sem valor, limpa formulário.
    limpa_formulário_cep();
  }
}


// Gera o JSON de acordo com os dados informados no formulário
function gerarJson() {

  if (verificar_campos() == false) {
    alert("Dados incompletos");
    return;
  }

  var obj_form = {
    nome: "",
    cpf: "",
    telefone: "",
    celular: "",
    cep: "",
    rua: "",
    numero: "",
    complemento: "",
    bairro: "",
    cidade: "",
    uf: "",
    ibge: ""
  }

  var vname = document.getElementById("nome");
  if (vname.value == "")
    return null;
  // obj_form é o JSON, que vai armazenar o valor de nome
  obj_form.nome = vname.value;

  var vcpf = document.getElementById("cpf");
  obj_form.cpf = vcpf.value;

  var vtelefone = document.getElementById("telefone");
  obj_form.telefone = vtelefone.value;

  var vcelular = document.getElementById("celular");
  obj_form.celular = vcelular.value;

  var vcep = document.getElementById("cep");
  obj_form.cep = vcep.value;

  var vrua = document.getElementById("rua");
  obj_form.rua = vrua.value;

  var vnumero = document.getElementById("numero");
  obj_form.numero = vnumero.value;

  var vcomplemento = document.getElementById("complemento");
  obj_form.complemento = vcomplemento.value;

  var vbairro = document.getElementById("bairro");
  obj_form.bairro = vbairro.value;

  var vcidade = document.getElementById("cidade");
  obj_form.cidade = vcidade.value;

  var vuf = document.getElementById("uf");
  obj_form.uf = vuf.value;

  var vibge = document.getElementById("ibge");
  obj_form.ibge = vibge.value;

  console.log(obj_form);

  var json = JSON.stringify(obj_form);
  console.log(json);

  document.write("<h1>Dados em Json</h1>");
  document.write(json);

  return json;
}