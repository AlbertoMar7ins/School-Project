<?php

    //boas vindas ao usuario com nome

    if(isset($_GET['n']) and isset($_GET['a']) ){
        $nome = $_GET['n'];
        $apelido = $_GET['a'];

        $frase = "Seja bem-vindo, $nome $apelido!";

        echo $frase;
    }