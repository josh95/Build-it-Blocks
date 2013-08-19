<!DOCTYPE html>
<html>
<head></head>
<body>
    <?php
            $username = $_POST['user'];
            $password = $_POST['pass'];
            $con=mysqli_connect("localhost",$username,$password,"test");
			if (mysqli_connect_errno($con))
			{
				die("incorrect username or password");
			}
			echo "Welcome, what would you like to do?";
			
    ?>
	
		<form name="input" action="new-module-form.php" method="get">
		Module: <input type="text" name="module"><br>
		<input type="submit" value="Okay!">
		</form>
</body>
</html>
