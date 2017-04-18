<!DOCTYPE html>
<?php
session_start();
include("../includes/connection.php");
 /* $insert=mysql_query("insert into service values(NULL,'Новый',".$_SESSION[data][i][ID].",".$_SESSION[data][i][Name].",".$_SESSION[data][i][Cost].",'6','3');") 
  or die ("MySQL Error:".mysql_error()); todo*/
 session_destroy();
 ?>
	<html lang="en">
<head>
<title> Информационная система SEO компании </title>
<link href="../css/order_list.css" media="screen" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'rel='stylesheet' type='text/css'>
	</head>
  	<style>
		body {
			background: url(../images/background.jpeg) no-repeat;
			background-size: 100%
		}
	</style>
<body>
	<h1 class = "header_finish"> Оформление заказа завершено </h1>
      <form action ="index.php" method = "post">
      <input type='submit' value = 'Вернуться в меню' name = 'backMenu' class = "back">
      </form>	
</body>
</html>