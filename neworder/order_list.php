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
     echo "Выберите услуги из списка &nbsp";
     echo "(Выбрано ".$_SESSION[service_count].")";
     ?>	
  </caption>
  <tr>
    <th>ID услуги</th>
    <th>Название</th>
    <th>Стоимость</th>
    <th>Количество</th>
  </tr>
  <?php
  // Динамическая таблица 
  for($i=0; $i < $counter; $i++) {
    $service = $data[$i];
    echo "
    <tr>
      <td> <a href='index.php?s[$i]=1'>        ".$service[ID]."</a></td>
      <td> <a href='index.php?s[$i]=1'>".$service[Name]."</a></td>
      <td> <a href='index.php?s[$i]=1'>".$service[Cost]." Руб.</a></td>
      <td> 
        <form action = 'index.php' method = post>
          <input type='number' name = 'quantity' size='5' min='1' max='65536' value = '0' class = 'num'>
          <input type='hidden' name = 'id' value = $i >
          <input type='submit' value = 'Добавить' name = 'add' class = 'add_cart'>
        </form>
      </td>
    </tr>";
    /*todo посмотреть верстку кнопки и number*/
  }
  ?>
</table>
      <form action ="index.php" method = "post">
      <button type="submit" >Далее</button>
      </form>	
      <form action ="index.php" method = "post">
      <input type='submit' value = 'Посмотреть корзину' name = 'bin' class = 'add_cart'>
      </form>	
</body>
</html>