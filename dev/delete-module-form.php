<?php
	//this script checks if the user got to the page correctly, ie by logging in and clicking on a link from another page.
	//otherwise the page dies and the user will not be able to access the database. Security stuff.
	if(!isset($_POST['loggedin'])){
		die("You got to this page directly without logging in. Or you refreshed the page... Please go log in (again).");
	}
?>
<html>
<head>
	<link rel="stylesheeet" type="text/CSS" href="dev-style.css"/>
</head>
<body>		
		<?php
		//makes variable containing input user gave on previous page
		$delete = $_POST["delete"];
		include("../db-connect.php");
		//checks if module name user typed in is valid and if not returns error message
		$temp = mysqli_query($con, "SELECT * FROM `builditblocks`.`module_index` WHERE `name` = \"". $delete. "\"");
		$module = mysqli_fetch_array($temp);
		if($module["name"] == null){
		die("Sorry we could not find the module ".$delete.". Please try again");
		}
		else {
		//asks user to confirm
		echo "<p>Are you sure you want to delete the module " . $delete . "?</p>";
		}
		?>
		<!--passes the variable with the user input on to delete-action page-->
		<form action="delete-module-action.php" method="post">
			<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
			<input type="hidden" name="delete" value="<?php echo $delete;?>"/>
			<input type="submit" value="Yes"/>
		</form>
			
		<!--if you are not sure you want to delete, go back to home page-->
		<form action="dev-welcome.php" method="post">
			<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
			<input type="submit" value="No"/>
		</form>
</body>
</html>