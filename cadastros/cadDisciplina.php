<?php
 
//importa o arquivo de configuração de conexão do MySQL
require "config.php";
 
//Recebe as informações do formulário de cadastro de aluno
$codCurso=$_POST["txtCod"];
$disciplina=$_POST["txtDisciplina"];
$cargaHoraria=$_POST["txtCH"];

//$codcurso=$_POST["txtCod"];
 
//Comando SQL para inserir as informações na tabela Alunos
$insert = $pdo->prepare("INSERT INTO disciplina (CodCurso, Disciplina, CargaHoraria)
values ('$codCurso', '$disciplina', '$cargaHoraria')");
 
//Executa o Comando SQL
if($insert->execute())
    echo "Inclusão efetuada com sucesso!!!";
    echo "<p align='center'><a href='/school/index.html'>Menu Principal</a>";
  ?>

