<html>
<head>
	<link rel="stylesheeet" type="text/CSS" href="dev-style.css"/>
</head>
<body>
		<!-- taking the $delete variable and passing it on to the delete module action page-->
		
		<?php
		$delete = $_POST["delete"];
		include("../db-connect.php");
		$temp = mysqli_query($con, "SELECT * FROM `builditblocks`.`module_index` WHERE `name` = \"". $delete. "\"");
		$module = mysqli_fetch_array($temp);
		if($module["name"] == null){
		die("Sorry we could not find the module ".$delete.". Please try again");
		}
		else {
		echo "<p>Are you sure you want to delete the module " . $delete . "?</p>";
		}
		?>
		
		<form action="delete-module-action.php" method="post">
		<input type="hidden" name="delete" value="<?php echo $delete;?>"/>
		<input type="submit" value="Yes"/>
		</form>
		<a href="dev-welcome.php">No</a>
</body>
</html>