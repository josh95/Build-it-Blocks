<html>
<head></head>
<body>
		<?php
		$delete = $_GET["delete"];
		include("../db-connect.php");
		//temp2 used to extract module id that is being deleted
		$temp = mysqli_query($con, "SELECT * FROM `builditblocks`.`module_index` WHERE `module_index`.`name` = \"$delete\"");
		
		$tobedeletedmodule = mysqli_fetch_array($temp);
		$idnumber = $tobedeletedmodule["ID"];
		mysqli_query($con, "DELETE FROM `builditblocks`.`steps` WHERE `steps`.`ID` = 61");
		mysqli_query($con, "DELETE * FROM `builditblocks`.`module_index` WHERE `module_index`.`name` = \"$delete\"");
		echo "The module " . $delete . " has been removed from the database.";
		?>
</body>
</html>