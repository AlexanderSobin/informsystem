<link href="../css/tables.css" media="screen" rel="stylesheet">
<table align = "center">
  <caption>
     <?php 
     echo "Список результатов по запросу: ".$data[0][Name];
     ?>	
  </caption>
  <tr>
    <th>ID клиента</th>
    <th>ФИО</th>
  </tr>
  <?php
  // Динамическая таблица 
  for($i=0; $i < $counter; $i++) {
    $user = $data[$i];
    echo "
    <tr>
      <td> <a href='index.php?show_menu=1' >".$user[ID]."</a></td>
      <td> <a href='index.php?show_menu=1' >".$user[Name]."</a></td>
    </tr>";
  }
  ?>	
</table>