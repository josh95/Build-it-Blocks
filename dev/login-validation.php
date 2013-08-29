    <?php
			
			//this will check if the user got to the page directly, without going throught the login page
			if(!isset($_POST['user'])){
				die("please go to login page");
			}
			if(!isset($_POST['pass'])){
				die("please go to login page");
			}
			
			//checks if user inputs correct username and password and returns error if not
            $username = $_POST['user'];
            $password = $_POST['pass'];
			if ($username!="intern" || $password != "RobotSushi1")
			{
				die("incorrect username or password");
			}	
    ?>
	<!--by this point, if the file did not die, the user must have entered in the correct login info-->
	<html>
	<body>
	
		Login Successful. Please proceed.
		<form action="dev-welcome.php" method="post">
			<input type="submit" value="Proceed">
			<input type="hidden" name="loggedin" value="1"> <!--all forms this point onwards will have this variable. 
			At the beginning of each dev page, the file will check if this variable has been initialized. if not, then
			the user got to the page directly rather than through the login.-->
		</form>
	</body>
	</html>