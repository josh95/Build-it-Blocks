<html>
<head></head>
<body>
		<?php
		$delete = $_GET["delete"];
		include("../db-connect.php");
		$temp = mysqli_query($con, "DELETE FROM `builditblocks`.`module_index` WHERE `module_index`.`name` = \"$delete\"");
		echo "The module " . $delete . " has been removed from the database.";
		?>
</body>
</html>