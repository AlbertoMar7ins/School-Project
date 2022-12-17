<?php
 
//importa o arquivo de configuração de conexão do MySQL
require "config.php";
 
//Recebe as informações do formulário de cadastro de aluno
$codCurso=$_POST["txtCod"];
$nome=$_POST["txtName"];
$endereco=$_POST["txtAdress"];
$cidade=$_POST["txtCidade"];
//$codcurso=$_POST["txtCod"];
 
//Comando SQL para inserir as informações na tabela Alunos
$insert = $pdo->prepare("INSERT INTO alunos (codCurso, nome, endereco, cidade)
values ('$codCurso', '$nome', '$endereco', '$cidade')");
 
//Executa o Comando SQL
if($insert->execute()){
    echo  json_encode( "Inclusão efetuada com sucesso!!!");
}
  ?>

