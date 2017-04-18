<?php include("finder.php"); ?>	
<html lang="en">

<head>
    <title> Информационная система SEO компании </title>
    <link href="../css/finder.css" media="screen" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
    rel='stylesheet' type='text/css'>
</head>
<style>
    body {
        background: url(../images/background.jpeg) no-repeat;
        background-size: 100%
    }
</style>

<body>
    <form action ="" method = "post" class="form-wrapper cf">
        <input type="text" name="find"  placeholder="Введите ФИО клиента" required>
        <button type="submit">Искать</button>
     </form>
    <?php
    if ($data)
    include("result_of_find.php");
    ?>	
</body>

</html>