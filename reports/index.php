<?php 
session_start();
include("../includes/connection.php");
if(isset($_GET['id'])) 
{
	switch ($_GET['id'])
        {
            case '1':
            include("managers.php");
            exit();
            break;
        }
}	
if (isset($_POST[backMenu]))
{
	include("../main_menus/managers_main.php");
	exit();
}
?>