<?php
	//this script checks if the user got to the page correctly, ie by logging in and clicking on a link from another page.
	//otherwise the page dies and the user will not be able to access the database. Security stuff.
	if(!isset($_POST['loggedin'])){
		die("You got to this page directly without logging in. Or you refreshed the page... Please go log in (again).");
	}
?>
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
	<form action="dev-welcome.php" method="post">
		<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
		<input type="submit" value="Return to Developers Page"/>
	</form>
</body>
</html>