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
  
  
   
  $consulta = $pdo->prepare("SELECT * FROM alunos order by nome");
  $consulta->execute();
   
  ?>
     <ul>
  <li><a href="/school/index.html">Home</a></li>
  <li><a href="studentSearch.php" class="active">Alunos</a></li>
  <li><a href="cursosSearch.php" >Cursos</a></li>
  <li><a href="disciplinaSearch.php" >Disciplinas</a></li>
</ul>
  <p align="center"> <table id="customers" >
  <tr>
  <td  bgcolor="#F23455" align="center"> <font color="#ffffff "><b>Lista Geral de Alunos<font></b></p></td>
  </tr>
   
  <table width=740 id="customers" >
   
    <tr>
      <th>Matrícula</th>
      <th>Nome</th>
      <th>Endereço</th>
      <th>Cidade</th>
      <th>Cod.curso</th>
    </tr>
    
  <?php
  //Exibe as linhas encontradas na consulta
  while($row = $consulta->fetch(PDO::FETCH_ASSOC)) {
  ?>
   
  <tr>
  <td><?php echo $row['matricula'];?></td>
  <td><?php echo $row['nome'];?></td>
  <td><?php echo $row['endereco'];?></td>
  <td><?php echo $row['cidade'];?></td>
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