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
  Оценка эффективности работы менеджеров за текущий квартал
  </caption>
  <tr>
    <th>ID менеджера</th>
    <th>Имя менеджера</th>
    <th>Начальная дата</th>
    <th>Конечная дата</th>
    <th>Общая сумма продаж за период</th>
  </tr>
  <?php
  $begin = "2015-10-01";
  $end = "2015-10-02";
  $procedure=mysql_query("call Managers('$begin','$end');") or die ("MySQL Error:".mysql_error());
  $query =  mysql_query("select * from report_managers;") or die ("MySQL Error:".mysql_error());
    while ($q = mysql_fetch_assoc($query))
    {
      $counter++;
      $data[] = $q;
    }
    //print_r($data);
  // Динамическая таблица 
  for($i=0; $i < $counter; $i++) {
    echo "
    <tr>
      <td>".$data[$i][ID]."</td>
      <td>".$data[$i][Name_manager]."</td>
      <td>".$data[$i][Begin_date]."</td>
      <td>".$data[$i][End_date]."</td>
      <td>".$data[$i][Cost_of_sales]."</td>
    </tr>";
    /*todo посмотреть верстку кнопки и number*/
  }
  mysql_query("TRUNCATE report_managers;") or die ("MySQL Error:".mysql_error());  /*Для тестов*/
  ?>
</table>
      <form action ="index.php" method = "post">
      <input type='submit' value = 'Вернуться в меню' name = 'backMenu' class = 'back'>
      </form>	
</body>
</html>