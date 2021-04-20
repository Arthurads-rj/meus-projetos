/**
 * Script JS - Tabuada
 * @author Arthur Pacheco
 */

var numero

function calcular() {
    numero = parseInt(frmTabuada.txtTabuada.value);
    

    for (var multi = 1; multi <11; multi++){
        document.write(numero + " x " + multi + " = " + (numero * multi) + "<br>");
    }
}

