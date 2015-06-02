// JavaScript Document
// add Mascara CEP
function mascaraCep(cep){
    if(mascaraInteiro(cep)===false){
        event.returnValue = false;
    }
    return formataCampo(cep, '00.000-000', event);
}

// add Mascara Data
function mascaraData(data){
    if(mascaraInteiro(data)===false){
        event.returnValue = false;
    }
    return formataCampo(data, '00/00/0000', event);
}

// add Mascara Tel
function mascaraTel(tel){
    if(mascaraInteiro(tel)===false){
        event.returnValue = false;
    }
    return formataCampo(tel, '(00) 0000-0000', event);
}

// add Mascara Cpf
function mascaraCPF(cpf){
    if(mascaraInteiro(cpf)===false){
        event.returnValue = false;
    }
    return formataCampo(cpf, '000.000.000-00', event);
}

// add Mascara RG
function mascaraRG(rg){
    if(mascaraInteiro(rg)===false){
        event.returnValue = false;
    }
    return formataCampo(rg, '00.000.000-00', event);
}

// valida cep
function validaCep(cep){
    exp = /\d{2}\.\d{3}\-\d{3}/;
    if(!exp.test(cep.value)){
        alert('Numero de Cep Invalido!');
    }
}

// valida data
function validaData(data){
    exp = /\d{2}\/\d{2}\/\d{4}/;
    if(!exp.test(data.value)){
        alert('Data Invalida!');
    }
}

// valida tel
function validaTelefone(tel){
    exp = /\(\d{2}\) \d{4}\-\d{4}/;
    if(!exp.test(tel.value)){
        alert('Número de Telefone Invalido!');
    }    
}

// valida cpf
function validaCpf(cpf){
    exp = /\d{3}\.\d{3}\.\d{3}\-\d{2}/;
    if(!exp.test(cpf.value)){
        alert('Número de CPF Invalido!');
    }
}

// valida rg

//valida numero inteiro com mascara
function mascaraInteiro(){
        if (event.keyCode < 48 || event.keyCode > 57){
                event.returnValue = false;
                return false;
        }
        return true;
}

//formata de forma generica os campos
function formataCampo(campo, Mascara, evento) { 
    var boleanoMascara; 

    var Digitato = evento.keyCode;
    exp = /\-|\.|\/|\(|\)| /g;
    campoSoNumeros = campo.value.toString().replace( exp, "" ); 

    var posicaoCampo = 0;    
    var NovoValorCampo="";
    var TamanhoMascara = campoSoNumeros.length;; 

    if (Digitato !== 8) { // backspace 
        for(i=0; i<= TamanhoMascara; i++) { 
            boleanoMascara  = ((Mascara.charAt(i) === "-") || (Mascara.charAt(i) === ".") || (Mascara.charAt(i) === "/")); 
            boleanoMascara  = boleanoMascara || ((Mascara.charAt(i) === "(") || (Mascara.charAt(i) === ")") || (Mascara.charAt(i) === " ")); 
            if (boleanoMascara) { 
                NovoValorCampo += Mascara.charAt(i); 
                TamanhoMascara++;
            }else { 
                NovoValorCampo += campoSoNumeros.charAt(posicaoCampo); 
                posicaoCampo++; 
            }              
        }      
        campo.value = NovoValorCampo;
        return true; 
    }else { 
        return true; 
    }
}

