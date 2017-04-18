<?php
	session_start();
	if(!isset($_SESSION[id]))
	{
		  $_SESSION[id] = array();
	}
	$flag = false;
	foreach ($_SESSION[id] as $id) 
	{
		if ($id[id] === $_POST[id]+1)
		{
			$_SESSION[id][$id[id]-1][quantity] += $_POST[quantity]; //  :)
			$flag = true;
		}
	}
	if ($flag != true) {
		$_SESSION[id][]=array('id'=>$_POST[id]+1,'quantity'=>$_POST[quantity]); // +1 потому что id в базе начинаются с единицы
	} 
	$_SESSION[service_count] +=$_POST[quantity];
	header("Location: index.php?neworder=1");
	//session_destroy();
?>
