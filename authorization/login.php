<?php 
session_start();
require_once("../includes/connection.php");
if (isset($_COOKIE['login']) && isset($_COOKIE['password']) && isset($_COOKIE['group'])) 
{
     switch ($_COOKIE['group'])
    {
        case 'M':
        include("../main_menus/managers_main.php");
        exit();
        break;
        
        case 'U':
        include("../main_menus/users_main.php");
        exit();
        break;
    }
}
if(isset($_POST['login']))
{
    $username = $_POST['username'];
    $query = mysql_query("SELECT * FROM users WHERE Login = '$username'");
    $data = mysql_fetch_assoc($query);
    if($data['Password'] === $_POST['password'])
    {
        setcookie("login", $data['Login'],  time()+28800);
        setcookie("password", $data['Password'],  time()+28800);
        setcookie("group", $data['Group'],  time()+28800);
        $group = $data['Group'];
        switch ($group)
        {
            case 'M':
            include("../main_menus/managers_main.php");
            exit();
            break;
            
            case 'U':
            include("../main_menus/users_main.php");
            exit();
            break;
        }
    }
    else 
    {
	 echo 'Заглушка';
    }
}
?>