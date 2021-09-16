$(function () {

  //VALIDAÇÃO JQUERY IGUAL DO MATERIAL SOMENTE PARA O NOME
  $("#form").validate({
    debug: true,
    rules: {
      nome: { required: true, minlength: 10 }
    },
    messages: {
      nome: {
        required: "<li>Por favor entre com seu nome.</li>",
        minlength: "<li>Seu nome deve ser maior.</li>"
      }

    }
  }); // fechamento do validate

  $('#cpf').mask('999.999.999-99');

  $("#celular").mask("(99)9999-9999?9");

  $("#telefone").mask("(99)9999-999?9");

  $("#cep").mask("99.999-999");

});





