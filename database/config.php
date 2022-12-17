<?php
 
//Arquivo para criar a conexão com o banco de dados
//uso da classe PDO
 
$pdo = new PDO('mysql:host=localhost;dbname=school','root','',array(PDO:: ATTR_PERSISTENT => true));
 
//Habilita exibição de erros
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);