<?php include("login.php");
	  include("../includes/header.php");
 ?>	 
	<style>
		body {
			background: url(../images/background.jpeg) no-repeat;
			background-size: 100%
		}
	</style>
	<img src="../images/logo.png" alt = "Логотип" class = "logo">
	<body>
		<div class="container">
				<form action="" method="post">
					<p>
						<label for="user_login">Имя пользователя
							<br>
							<input class="input" id="username" name="username" size="20" type="text" value="">
						</label>
					</p>
					<p>
						<label for="user_pass">Пароль
							<br>
							<input class="input" id="password" name="password" size="20" type="password" value="">
						</label>
					</p>
					<p class="submit">
						<input class="button" name="login" type="submit" value="Войти">
					</p>
				</form>
		</div>
<footer class = "footer">
© 2015 <a href="http://vk.com/alexander_sobin">Собин Александр</a>. Группа РК6-53.
</footer>
	</body>
		</html>