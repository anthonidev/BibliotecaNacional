<<<<<<< HEAD
function Numeros(input){//Solo numeros
    var valor = '';
    var filtro = '1234567890';//Caracteres validos
	
    //Recorrer el texto y verificar si el caracter se encuentra en la lista de validos 
    for (var i=0; i<input.length; i++)
       if (filtro.indexOf(input.charAt(i)) != -1) 
             //Se añaden a la salida los caracteres validos
	     valor += input.charAt(i);
	
    //Retornar valor filtrado
    return valor;
=======
function Numeros(input){//Solo numeros
    var valor = '';
    var filtro = '1234567890';//Caracteres validos
	
    //Recorrer el texto y verificar si el caracter se encuentra en la lista de validos 
    for (var i=0; i<input.length; i++)
       if (filtro.indexOf(input.charAt(i)) != -1) 
             //Se añaden a la salida los caracteres validos
	     valor += input.charAt(i);
	
    //Retornar valor filtrado
    return valor;
}

function Precios(input){//Solo numeros
    var valor = '';
    var filtro = '1234567890.';//Caracteres validos
	
    //Recorrer el texto y verificar si el caracter se encuentra en la lista de validos 
    for (var i=0; i<input.length; i++)
       if (filtro.indexOf(input.charAt(i)) != -1) 
             //Se añaden a la salida los caracteres validos
	     valor += input.charAt(i);
	
    //Retornar valor filtrado
    return valor;
>>>>>>> main
} 