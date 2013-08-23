<html>
<head></head>
<body>
		<?php
		//creates variable that has the module name the user typed in
		$delete = $_POST["delete"];
		include("../db-connect.php");
		//temp used to extract module id that is being deleted
		$temp = mysqli_query($con, "SELECT * FROM `builditblocks`.`module_index` WHERE `module_index`.`name` = \"$delete\"");
		
		$tobedeletedmodule = mysqli_fetch_array($temp);
		$idnumber = $tobedeletedmodule["ID"];
		//goes to database and deletes module from module_index, applications and steps
		mysqli_query($con, "DELETE FROM `builditblocks`.`applications` WHERE `applications`.`moduleID` = $idnumber");
		mysqli_query($con, "DELETE FROM `builditblocks`.`steps` WHERE `steps`.`moduleID` = \"$idnumber\"");
		mysqli_query($con, "DELETE FROM `builditblocks`.`module_index` WHERE `module_index`.`name` = \"$delete\"");
		echo "The module " . $delete . " has been removed from the database";
		
		?>
	<a href="dev-welcome.php">Return to Developers Page</a>
</body>
</html>