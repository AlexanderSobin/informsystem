<?php 
session_start();
include("../includes/connection.php");
if(isset($_GET['show_menu'])) 
{
	include("main_cl.php");
	exit();
}

if(isset($_POST['find'])) 
{
	$c_name = $_POST['find'];
	$query = mysql_query("SELECT * FROM clients WHERE Name = '$c_name'") or die ("MySQL Error:".mysql_error());
	while ($q = mysql_fetch_assoc($query))
	{
	$counter++;
	$data[] = $q;
	}
	if ($counter > 3)
	{
		echo "Заглушка";
		//exit(); /*TODO*/ //Еще добавить меню вверху
	}
}
?>