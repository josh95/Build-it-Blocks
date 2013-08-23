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
		<input type="hidden" name="delete" value="<?php echo $delete;?>"/>
		<input type="submit" value="Yes"/>
		</form>
		<a href="dev-welcome.php">No</a>
</body>
</html>