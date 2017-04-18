<?php
	session_start();
	session_destroy();
	/*setcookie("login");
	setcookie("password");
	setcookie("group");*/
	setcookie("login", $data['Login'],  time()-28800);
	setcookie("password", $data['Password'],  time()-28800);
	setcookie("group", $data['Group'],  time()-28800);
	header("location:index.php");
	?>