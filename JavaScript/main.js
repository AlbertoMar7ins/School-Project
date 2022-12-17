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


function executar(){

    let pedido = new XMLHttpRequest();

    pedido.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){

            let dados = pedido.responseXML;
            let clientes = dados.getElementsByTagName("cliente");

            let conteudo ='<h2>CLIENTES</h2>';
            console.log('Erro!')
            for(let i = 0; i< clientes.length; i++){
                conteudo += '<p>Nome: ' + clientes[i].getElementsByTagName("nome")[0].childNodes[0].nodeValue + '<p>';
                conteudo += '<hr>';
            }

            document.getElementById('lista').innerHTML = conteudo;
        }
    }

}

$('#btnUpdate2').load('/listaGeral/generalStudent.php');
$('#form1').submit(function(e){
    e.preventDefault();

    var u_txtCod = $('#txtCod').val();
    var u_txtName = $('#txtName').val();
    var u_txtAdress = $('#txtAdress').val();
    var u_txtCidade = $('#txtCidade').val();

    //AJAX
    $.ajax({
        url: 'cadAluno2.php',
        method: 'POST',
        data: {cod: u_txtCod, name: u_txtName, end: u_txtAdress, city: u_txtCidade},
        dataType: 'json'
    }).done(function(result){
        $('#txtCod').val('');
        $('#txtName').val('');
        $('#txtAdress').val('');
        $('#txtCidade').val('');
        $('#btnUpdate').load('/listaGeral/generalSearch.php');
    });
});

$(document).ready(function(){
    $('#btnUpdate').click(function(){
        $('#caixa').load('/school/Pesquisas/generalStudent.php');
    })
});