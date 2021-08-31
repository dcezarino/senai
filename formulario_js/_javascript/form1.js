
var bt;
var div;

// Função que cria o formulário na tela
// var NOME_DA_FUNCAO = () => {}
// var soma = (a,b) => {alert(a+b);}
// function soma(a,b) {alert(a+b);}
var form_init = () => {
  // Resgatando o elemento do HTML
  // O botão pelo id="create_form_bt"
  // O div pelo id="custom_form_div"
  bt = document.getElementById("create_form_bt");
  div = document.getElementById("custom_form_div");

  // Dando ação de click para o botão
  bt.onclick = create_form;
}

// Criação automática da tag FORM, que é  o formulário do HTML em JavaScript
var create_form = () => {
  var form = document.getElementById("custom_form");
  if (!form) {
    var form = document.createElement("form");
    // setAttribute - seta atributos dentro da TAG
    // set - id="custom_form"
    form.setAttribute("id", "custom_form");
    // Cria o formulário dentro da DIV em HTML
    div.appendChild(form);
  }
  else {
    while (form.firstChild) {
      form.removeChild(form.firstChild);
    }
  }

  append_br(form);

  append_span(form, "Nome:&nbsp;");
  append_text_input(form, "name", 10, 80);
  append_br(form, 2);

  append_span(form, "Apelido:&nbsp;");
  append_text_input(form, "nickname", 2, 20);
  append_br(form, 2);

  append_span(form, "Nascimento:&nbsp;");
  append_text_input(form, "day", 2, 2);
  append_br(form, 2);

  append_span(form, "Mês de nascimento:&nbsp;");
  append_text_input(form, "month", 2, 2);
  append_br(form, 2);

  append_span(form, "Ano:&nbsp;");
  append_text_input(form, "year", 4, 4);
  append_br(form, 2);

  append_span(form, "CPF:&nbsp;");
  append_text_input(form, "cpf", 14, 14);  
  append_br(form, 2);

  append_span(form, "&nbsp;&nbsp;Times:&nbsp;");
  append_select(form, "team_id", [
    { value: 1, text: "Itália" },
    { value: 2, text: "Espanha" },
    { value: 3, text: "Brasil" },
    { value: 4, text: "EUA" },
  ], 4);
  append_br(form, 2);

  var fs1 = append_fieldset(form, "Esportes de interesse:");
  append_checkbox(fs1, "sport_1", "Futebol");
  append_checkbox(fs1, "sport_2", "Vôlei");
  append_checkbox(fs1, "sport_3", "Basquete");
  append_checkbox(fs1, "sport_4", "Futsal");
  append_checkbox(fs1, "sport_5", "Automobilismo");
  append_checkbox(fs1, "sport_6", "Artes Marciais");
  append_checkbox(fs1, "sport_7", "Natação");
  append_br(fs1);

  append_br(form);

  append_submit(form, "Enviar", verify_form);
}

// Função que verifica se os campos estão preenchidos
var validos = () => {

  if (document.getElementById("name").value == "") return false;
  if (document.getElementById("nickname").value == "") return false;
  if (document.getElementById("day").value == "") return false;
  if (document.getElementById("month").value == "") return false;
  if (document.getElementById("year").value == "") return false;
  if (document.getElementById("cpf").value == "") return false;
  if (document.getElementById("team_id").value == "") return false;

}

var verify_form = () => {

  if (validos() == false) {
    alert("Dados incompletos");
    return;
  }

  var obj_form = {
    name: "",
    nickname: "",
    birth_date: "",
    team_id: "",
    sport: []

  }

  var el_name = document.getElementById("name");
  if (el_name.value == "")
    return null;
  // obj_form é o JSON, que vai armazenar o valor de nome
  obj_form.name = el_name.value;

  var el_nick = document.getElementById("nickname");
  obj_form.nickname = el_nick.value;

  var el_dia = document.getElementById("day");
  var el_mes = document.getElementById("month");
  var el_ano = document.getElementById("year");

  obj_form.birth_date = el_ano.value + "/" + el_mes.value + "/" + el_dia.value;

  var el_team_id = document.getElementById("team_id");
  obj_form.team_id = el_team_id.value;

  var el_disp_1 = document.getElementById("sport_1").checked;
  if (el_disp_1)
    obj_form.sport.push(1);

  var el_disp_2 = document.getElementById("sport_2").checked;
  if (el_disp_2)
    obj_form.sport.push(2);

  var el_disp_3 = document.getElementById("sport_3").checked;
  if (el_disp_3)
    obj_form.sport.push(3);

  var el_disp_4 = document.getElementById("sport_4").checked;
  if (el_disp_4)
    obj_form.sport.push(4);

  var el_disp_5 = document.getElementById("sport_5").checked;
  if (el_disp_5)
    obj_form.sport.push(5);

  var el_disp_6 = document.getElementById("sport_6").checked;
  if (el_disp_6)
    obj_form.sport.push(6);

  var el_disp_7 = document.getElementById("sport_7").checked;
  if (el_disp_7)
    obj_form.sport.push(7);

  console.log(obj_form);

  var json = JSON.stringify(obj_form);
  console.log(json);

  document.write("<h1>Dados em Json</h1>");
  document.write(json);

  return json;
}