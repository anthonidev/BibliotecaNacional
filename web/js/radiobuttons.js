document.addEventListener('DOMContentLoaded',()=>{
    verificarZise(desktop);
}

);
function quitarChecked(){
    document.querySelectorAll("[name=crud]").forEach(item=>item.checked=false);
}

function agregarChecked(){
    document.getElementById("btnradio1").checked = true;
}

function verificarZise(item){
    if(item.matches){
        quitarChecked();
    }else{
        agregarChecked();
    }
}

let desktop = window.matchMedia("(max-width: 992px)");
/* verificarZise(desktop); */
desktop.addListener(verificarZise);