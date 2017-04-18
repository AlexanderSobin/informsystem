<?php 
session_start();
include("../includes/connection.php");
	if(!isset($_SESSION[service_count]))
		$_SESSION[service_count] = 0;
if(isset($_GET['neworder'])) 
{
	$query = mysql_query("SELECT * FROM servce_num") or die ("MySQL Error:".mysql_error());
	while ($q = mysql_fetch_assoc($query))
	{
	$counter++;
	$data[] = $q;
	}
	$_SESSION[serviceList] = $counter;
	if ($counter > 4)
	{
		echo "Заглушка";
		//exit(); /*TODO*/ //Еще добавить меню вверху
	}	
	//session_destroy();
include("order_list.php");
}
if (isset($_POST[add]))
{
	include("iterator.php");
	exit();
}
if (isset($_POST[bin]))
{
	include("bin.php");
	exit();
}
if (isset($_POST[finish]))
{
	include("finish_order.php");
	exit();
}
if (isset($_POST[backMenu]))
{
	include("../clients/main_cl.php");
	exit();
}
?>