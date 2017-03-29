	<meta charset="utf-8">
	<link rel="stylesheet" href="css/lib.css">
	<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
	<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<?php 
	mysql_connect('localhost', 'root', '') or die("não foi possível conectar: " + mysql_error());
	mysql_select_db('lib');
	$books = mysql_query("SELECT TITULO FROM livro where aluno('LIVRO_ID') = ID");
	$alunos = mysql_query("SELECT * FROM aluno");
 ?>
 	<a class="btn btn-default" href="index.php">Home</a>
 		<table class="table table-striped table-inverse">
 			<tr>
 				<th>Matricula</th>
 				<th>Aluno</th>
 				<th>curso</th>
 				<th>livro</th>
 				<th>author</th>
 				<th>data de devolução</th>
 				<!-- <th>Título</th>
 				<th>Entrega</th> -->
 			</tr>
 		
 <?php

 	while ($amostraAlunos = mysql_fetch_array($alunos, MYSQL_ASSOC)){
 		$matricula = $amostraAlunos['MATRICULA'];
 		$curso = $amostraAlunos['CURSO'];
 		$nome = $amostraAlunos['NOME'];
 		$id = $amostraAlunos['LIVRO_ID'];
 		//$bookTitle = $amostraLivros['TITULO'];
 		echo "<tr>"; 

 			echo "<td> " . $matricula . "</td>";
 			echo "<td> " . $nome . "</td>";
 			echo "<td> " . $curso . "</td>" ;
 			//echo "<td> " . $bookTitle . "</td>" ;
 			//echo "<td>" . " " . "</td>";
 			echo "<td>" .  "</td>";
 			echo "<td>" .  "</td>";
 			echo "<td>" .  "</td>";
 		echo ("</tr>");
 	}
 		

 ?>
 </table>