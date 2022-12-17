//FUnção que será executada no momento em que a pagina for carregada
window.onload = function(){
    //executa a function btn_click quando o btn for executado
    document.getElementById('btn').addEventListener('click', btn_click);
}

function btn_click(){
    //altera a informação da pagina

    //ajax

    //criando obj request
    
    let pedido = new XMLHttpRequest();
    //definindo a função que atuará mediante a resposta

    pedido.onreadystatechange = function(){
       
            
            document.getElementById('caixa').innerHTML = this.responseText;
     
    }

    //Prepara o pedido para o  servidor, informando o método de retorno (GET), o conteúdo 
    //o método da comunicação assíncrona
    pedido.open("GET", "/school/Server/process.php?n=Antonio&a-Guto", true);
    //Envia o pedido
    pedido.send();

};


function fnajax(url, funcao){
    let pedido = new XMLHttpRequest();

    pedido.onreadystatechange = function(){
        if(pedido.readyState == 4 && pedido.status ==200){
            funcao(pedido);
            
            console.log('ok!');
        }
    }

    pedido.open('GET', url, true);
    pedido.send();
}

function btn1(p){
    document.getElementById('caixa1').innerHTML = p.responseText
}

function btn2(p){
    document.getElementById('caixa2').innerHTML = p.responseText
}