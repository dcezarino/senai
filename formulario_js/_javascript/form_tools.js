var append_br = (el, n) => {
  if (n == undefined)
    n = 1;
  for (var i=0; i<n; i++) {
    var br = document.createElement("br");
    el.appendChild(br);
  }
}                            

/*
append_span
*/
var append_span = (el, text) => {
  var span = document.createElement("span");
  span.innerHTML = text;
  el.appendChild(span);
  return span;
}

/*
append_text_input
*/
var append_text_input = (el, id, size, maxlen) => {
  var text_input = document.createElement("input");
  text_input.setAttribute("type", "text");
  text_input.setAttribute("id", id);
  text_input.setAttribute("name", id);
  text_input.setAttribute("size", size);
  text_input.setAttribute("maxlength", maxlen);
  el.appendChild(text_input);
  return text_input;
}

/*
append_select
*/
var append_select = (el, id, options, default_id) => {
  var select = document.createElement("select");
  select.setAttribute("id", id);
  select.setAttribute("name", id);
  el.appendChild(select);
  options.forEach ( item => {
     var option = document.createElement("option");
     option.setAttribute("value", item.value);
     if (default_id == item.value) {
       option.setAttribute("selected","selected");
     }
     option.innerHTML = item.text;
     select.appendChild(option);
  });
}

/*
append_fieldset
*/
var append_fieldset = (el, title) => {
  var fieldset = document.createElement("fieldset");
  var legend = document.createElement("legend");
  legend.innerHTML = title;
  fieldset.appendChild(legend);
  el.appendChild(fieldset);
  return fieldset;
}


/*
append_checkbox
*/
var append_checkbox = (el, id, text) => {
  var check = document.createElement("input");
  check.setAttribute("type", "checkbox");
  check.setAttribute("id", id);
  check.setAttribute("name", id);
  el.appendChild(check);
  append_span(el, text);
  return check;
}

/*
append_radio
*/
var append_radio = (el, name, id, text) => {
  var radio = document.createElement("input");
  radio.setAttribute("type", "radio");
  radio.setAttribute("name", name);
  radio.setAttribute("value", id);
  el.appendChild(radio);
  append_span(el, text);
  return radio;
}

/*
append_textarea
*/
var append_textarea = (el, id, cols, rows) => {
  var textarea = document.createElement("textarea");
  textarea.setAttribute("id", id);
  textarea.setAttribute("name", id);
  textarea.setAttribute("cols", cols);
  textarea.setAttribute("rows", rows);
  el.appendChild(textarea);
  return textarea;
}

/*
append_submit
*/
var append_submit = (el, text, onsubmit_handler) => {
  var submit = document.createElement("input");
  submit.setAttribute("type", "submit");
  submit.setAttribute("value", text);
  el.appendChild(submit);
  el.onsubmit = onsubmit_handler;
  return submit;
}