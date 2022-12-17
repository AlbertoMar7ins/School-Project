<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
    crossorigin="anonymous">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/school/style/style.css">
    <title>Lista Geral Alunos</title>
</head>
<body>
<title>Lista dos Alunos por Nome</title>
  
 </head>
 <body>
 <div class="container">
 <?php
  
  //importa o arquivo de configuração de conexão do MySQL
  require "config.php";
  
//recebe o nome do aluno
$nome=$_POST["txtName"];
 
$consulta = $pdo->prepare("SELECT * FROM cursos WHERE nomeCurso like '$nome%' order by nomeCurso");
$consulta->execute();
   
  ?>
    <ul>
  <li><a href="/school/listaGeral/index.html">Home</a></li>
  <li><a href="/school/listaGeral/studentSearch.php" >Alunos</a></li>
  <li><a href="/school/listaGeral/cursosSearch.php"class="active" >Cursos</a></li>
  <li><a href="/school/listaGeral/disciplinaSearch.php" >Disciplinas</a></li>
</ul>
  <p align="center"> <table id="customers" >
  <tr>
  <td  bgcolor="#F23455" align="center"> <font color="#ffffff "><b>Lista Geral de Cursos<font></b></p></td>
  </tr>
   
  <table width=740 id="customers" >
   
    <tr>
      <th>Nome</th>
      <th>Cod.curso</th>
    </tr>
    
  <?php
  //Exibe as linhas encontradas na consulta
  while($row = $consulta->fetch(PDO::FETCH_ASSOC)) {
  ?>
   
  <tr>
  <td><?php echo $row['nomeCurso'];?></td>
  <td><?php echo $row['codCurso'];?></td>
  </tr>
   
  <?php
  }
  ?>
   
  </table>
   
  <p> <p>
  <a href='/school/index.html'><p align="center"> Voltar ao Menu Principal</p></a>
   
 </div>
 </body>
 </html>
</body>
</html>