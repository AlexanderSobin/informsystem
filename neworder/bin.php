<!DOCTYPE html>
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
<table align = "center">
  <caption>
     <?php 
     echo "Вы выбрали ".$_SESSION[service_count]." следующих услуг:";
     ?>	
  </caption>
  <tr>
    <th>ID услуги</th>
    <th>Название</th>
    <th>Стоимость</th>
    <th>Количество</th>
  </tr>
  <?php
  include("../includes/connection.php");
  // Динамическая таблица 
  $i = 0;
foreach ($_SESSION[id] as $id) 
  {
		$query=mysql_query("SELECT * FROM `servce_num` where ID='$id[id]'") or die ("MySQL Error:".mysql_error());
    $_SESSION[data][i] = mysql_fetch_assoc($query);
    echo "<tr>";
    echo "<td>".$_SESSION[data][i][ID]."</td>" ;
    echo "<td>".$_SESSION[data][i][Name]."</td>" ;
    echo "<td>".$_SESSION[data][i][Cost]."</td>" ;
    echo "<td> ".$id['quantity']."</td>" ;
    echo "</tr>";
    $i++;
  }
 // print_r ($data);
 //print_r ($_SESSION[data]);
  ?>
</table>
      <form action ="index.php" method = "post">
      <button type="submit" name = "finish" value = "confirm" >Оформить</button>
      </form>	
</body>
</html>