function abrirGoogle() {  
    
    if(document.getElementById("search").value == ""){
        alert("Please type a word");            
        return false;
    }               
    
    window.open('https://google.com/search?q=' + document.getElementById("search").value);
    
}
